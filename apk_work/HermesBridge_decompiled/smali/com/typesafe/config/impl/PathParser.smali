.class final Lcom/typesafe/config/impl/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/PathParser$Element;
    }
.end annotation


# static fields
.field static apiOrigin:Lcom/typesafe/config/ConfigOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "path parameter"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/PathParser;->apiOrigin:Lcom/typesafe/config/ConfigOrigin;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPathText(Ljava/util/List;ZLjava/lang/String;)V
    .locals 5
    .param p1, "wasQuoted"    # Z
    .param p2, "newText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/PathParser$Element;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 203
    .local p0, "buf":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/PathParser$Element;>;"
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 204
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/PathParser$Element;

    .line 205
    .local v1, "current":Lcom/typesafe/config/impl/PathParser$Element;
    if-gez v0, :cond_1

    .line 207
    iget-object v3, v1, Lcom/typesafe/config/impl/PathParser$Element;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    if-eqz p1, :cond_2

    iget-object v3, v1, Lcom/typesafe/config/impl/PathParser$Element;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 211
    iput-boolean v2, v1, Lcom/typesafe/config/impl/PathParser$Element;->canBeEmpty:Z

    goto :goto_1

    .line 214
    :cond_1
    iget-object v2, v1, Lcom/typesafe/config/impl/PathParser$Element;->sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    new-instance v2, Lcom/typesafe/config/impl/PathParser$Element;

    const-string v4, ""

    invoke-direct {v2, v4, v3}, Lcom/typesafe/config/impl/PathParser$Element;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, v2}, Lcom/typesafe/config/impl/PathParser;->addPathText(Ljava/util/List;ZLjava/lang/String;)V

    .line 220
    :cond_2
    :goto_1
    return-void
.end method

.method private static fastPathBuild(Lcom/typesafe/config/impl/Path;Ljava/lang/String;I)Lcom/typesafe/config/impl/Path;
    .locals 3
    .param p0, "tail"    # Lcom/typesafe/config/impl/Path;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "end"    # I

    .line 260
    add-int/lit8 v0, p2, -0x1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 262
    .local v0, "splitAt":I
    new-instance v1, Lcom/typesafe/config/impl/Path;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/typesafe/config/impl/Path;-><init>(Ljava/lang/String;Lcom/typesafe/config/impl/Path;)V

    .line 263
    .local v1, "withOneMoreElement":Lcom/typesafe/config/impl/Path;
    if-gez v0, :cond_0

    .line 264
    return-object v1

    .line 266
    :cond_0
    invoke-static {v1, p1, v0}, Lcom/typesafe/config/impl/PathParser;->fastPathBuild(Lcom/typesafe/config/impl/Path;Ljava/lang/String;I)Lcom/typesafe/config/impl/Path;

    move-result-object v2

    return-object v2
.end method

.method private static looksUnsafeForFastParser(Ljava/lang/String;)Z
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x1

    .line 226
    .local v0, "lastWasDot":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 227
    .local v1, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 228
    return v3

    .line 229
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1

    .line 230
    return v3

    .line 231
    :cond_1
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_2

    .line 232
    return v3

    .line 234
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_b

    .line 235
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 236
    .local v6, "c":C
    const/16 v7, 0x61

    if-lt v6, v7, :cond_3

    const/16 v7, 0x7a

    if-le v6, v7, :cond_5

    :cond_3
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x5a

    if-le v6, v7, :cond_5

    :cond_4
    const/16 v7, 0x5f

    if-ne v6, v7, :cond_6

    .line 237
    :cond_5
    const/4 v0, 0x0

    .line 238
    goto :goto_1

    .line 239
    :cond_6
    if-ne v6, v5, :cond_8

    .line 240
    if-eqz v0, :cond_7

    .line 241
    return v3

    .line 242
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 243
    :cond_8
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_a

    .line 244
    if-eqz v0, :cond_9

    .line 245
    return v3

    .line 234
    .end local v6    # "c":C
    :cond_9
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    .restart local v6    # "c":C
    :cond_a
    return v3

    .line 252
    .end local v4    # "i":I
    .end local v6    # "c":C
    :cond_b
    if-eqz v0, :cond_c

    .line 253
    return v3

    .line 255
    :cond_c
    return v2
.end method

.method static parsePath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lcom/typesafe/config/impl/PathParser;->speculativeFastParsePath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 52
    .local v0, "speculated":Lcom/typesafe/config/impl/Path;
    if-eqz v0, :cond_0

    .line 53
    return-object v0

    .line 55
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "reader":Ljava/io/StringReader;
    :try_start_0
    sget-object v2, Lcom/typesafe/config/impl/PathParser;->apiOrigin:Lcom/typesafe/config/ConfigOrigin;

    sget-object v3, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    invoke-static {v2, v1, v3}, Lcom/typesafe/config/impl/Tokenizer;->tokenize(Lcom/typesafe/config/ConfigOrigin;Ljava/io/Reader;Lcom/typesafe/config/ConfigSyntax;)Ljava/util/Iterator;

    move-result-object v2

    .line 60
    .local v2, "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    sget-object v3, Lcom/typesafe/config/impl/PathParser;->apiOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {v2, v3, p0}, Lcom/typesafe/config/impl/PathParser;->parsePathExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    .line 61
    return-object v3

    .line 63
    .end local v2    # "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    .line 64
    throw v2
.end method

.method protected static parsePathExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/Path;
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;",
            "Lcom/typesafe/config/ConfigOrigin;",
            ")",
            "Lcom/typesafe/config/impl/Path;"
        }
    .end annotation

    .line 69
    .local p0, "expression":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    invoke-static {p0, p1, v0, v0, v1}, Lcom/typesafe/config/impl/PathParser;->parsePathExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/util/ArrayList;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    return-object v0
.end method

.method protected static parsePathExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Path;
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "originalText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/lang/String;",
            ")",
            "Lcom/typesafe/config/impl/Path;"
        }
    .end annotation

    .line 74
    .local p0, "expression":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/typesafe/config/impl/PathParser;->parsePathExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/util/ArrayList;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    return-object v0
.end method

.method protected static parsePathExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/util/ArrayList;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/Path;
    .locals 6
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "originalText"    # Ljava/lang/String;
    .param p4, "flavor"    # Lcom/typesafe/config/ConfigSyntax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/typesafe/config/impl/Token;",
            ">;",
            "Lcom/typesafe/config/ConfigSyntax;",
            ")",
            "Lcom/typesafe/config/impl/Path;"
        }
    .end annotation

    .line 95
    .local p0, "expression":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    .local p3, "pathTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/Token;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "buf":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/PathParser$Element;>;"
    new-instance v1, Lcom/typesafe/config/impl/PathParser$Element;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/typesafe/config/impl/PathParser$Element;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 103
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/Token;

    .line 106
    .local v1, "t":Lcom/typesafe/config/impl/Token;
    if-eqz p3, :cond_0

    .line 107
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    goto :goto_0

    .line 113
    :cond_1
    sget-object v2, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/Tokens;->isValueWithType(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigValueType;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 114
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->getValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    .line 117
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigValue;->transformToString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "s":Ljava/lang/String;
    invoke-static {v0, v4, v5}, Lcom/typesafe/config/impl/PathParser;->addPathText(Ljava/util/List;ZLjava/lang/String;)V

    .line 120
    .end local v2    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v5    # "s":Ljava/lang/String;
    :goto_1
    goto :goto_3

    :cond_2
    sget-object v2, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 129
    :cond_3
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->isValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 137
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->getValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    .line 141
    .restart local v2    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz p3, :cond_4

    .line 142
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    invoke-static {v1, p4}, Lcom/typesafe/config/impl/PathParser;->splitTokenOnPeriod(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigSyntax;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_4
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigValue;->transformToString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "text":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "text":Ljava/lang/String;
    :cond_5
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 149
    if-eqz p3, :cond_6

    .line 150
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    invoke-static {v1, p4}, Lcom/typesafe/config/impl/PathParser;->splitTokenOnPeriod(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigSyntax;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_6
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .restart local v2    # "text":Ljava/lang/String;
    :goto_2
    invoke-static {v0, v3, v2}, Lcom/typesafe/config/impl/PathParser;->addPathText(Ljava/util/List;ZLjava/lang/String;)V

    .line 165
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    .end local v2    # "text":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 155
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    :cond_7
    new-instance v2, Lcom/typesafe/config/ConfigException$BadPath;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Token not allowed in path expression: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (you can double-quote this token if you really want it here)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Lcom/typesafe/config/ConfigException$BadPath;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 167
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :cond_8
    new-instance v1, Lcom/typesafe/config/impl/PathBuilder;

    invoke-direct {v1}, Lcom/typesafe/config/impl/PathBuilder;-><init>()V

    .line 168
    .local v1, "pb":Lcom/typesafe/config/impl/PathBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/PathParser$Element;

    .line 169
    .local v3, "e":Lcom/typesafe/config/impl/PathParser$Element;
    iget-object v4, v3, Lcom/typesafe/config/impl/PathParser$Element;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_a

    iget-boolean v4, v3, Lcom/typesafe/config/impl/PathParser$Element;->canBeEmpty:Z

    if-eqz v4, :cond_9

    goto :goto_5

    .line 170
    :cond_9
    new-instance v2, Lcom/typesafe/config/ConfigException$BadPath;

    const-string v4, "path has a leading, trailing, or two adjacent period \'.\' (use quoted \"\" empty string if you want an empty element)"

    invoke-direct {v2, p1, p2, v4}, Lcom/typesafe/config/ConfigException$BadPath;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_a
    :goto_5
    iget-object v4, v3, Lcom/typesafe/config/impl/PathParser$Element;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/typesafe/config/impl/PathBuilder;->appendKey(Ljava/lang/String;)V

    .line 177
    .end local v3    # "e":Lcom/typesafe/config/impl/PathParser$Element;
    goto :goto_4

    .line 179
    :cond_b
    invoke-virtual {v1}, Lcom/typesafe/config/impl/PathBuilder;->result()Lcom/typesafe/config/impl/Path;

    move-result-object v2

    return-object v2

    .line 99
    .end local v1    # "pb":Lcom/typesafe/config/impl/PathBuilder;
    :cond_c
    new-instance v1, Lcom/typesafe/config/ConfigException$BadPath;

    const-string v2, "Expecting a field name or path here, but got nothing"

    invoke-direct {v1, p1, p2, v2}, Lcom/typesafe/config/ConfigException$BadPath;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method static parsePathNode(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigNodePath;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/PathParser;->parsePathNode(Ljava/lang/String;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v0

    return-object v0
.end method

.method static parsePathNode(Ljava/lang/String;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodePath;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flavor"    # Lcom/typesafe/config/ConfigSyntax;

    .line 38
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "reader":Ljava/io/StringReader;
    :try_start_0
    sget-object v1, Lcom/typesafe/config/impl/PathParser;->apiOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {v1, v0, p1}, Lcom/typesafe/config/impl/Tokenizer;->tokenize(Lcom/typesafe/config/ConfigOrigin;Ljava/io/Reader;Lcom/typesafe/config/ConfigSyntax;)Ljava/util/Iterator;

    move-result-object v1

    .line 43
    .local v1, "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    sget-object v2, Lcom/typesafe/config/impl/PathParser;->apiOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {v1, v2, p0, p1}, Lcom/typesafe/config/impl/PathParser;->parsePathNodeExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    .line 44
    return-object v2

    .line 46
    .end local v1    # "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    .line 47
    throw v1
.end method

.method protected static parsePathNodeExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigNodePath;
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;",
            "Lcom/typesafe/config/ConfigOrigin;",
            ")",
            "Lcom/typesafe/config/impl/ConfigNodePath;"
        }
    .end annotation

    .line 79
    .local p0, "expression":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    invoke-static {p0, p1, v0, v1}, Lcom/typesafe/config/impl/PathParser;->parsePathNodeExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v0

    return-object v0
.end method

.method protected static parsePathNodeExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodePath;
    .locals 3
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "originalText"    # Ljava/lang/String;
    .param p3, "flavor"    # Lcom/typesafe/config/ConfigSyntax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigSyntax;",
            ")",
            "Lcom/typesafe/config/impl/ConfigNodePath;"
        }
    .end annotation

    .line 84
    .local p0, "expression":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "pathTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/Token;>;"
    invoke-static {p0, p1, p2, v0, p3}, Lcom/typesafe/config/impl/PathParser;->parsePathExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/util/ArrayList;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/Path;

    move-result-object v1

    .line 86
    .local v1, "path":Lcom/typesafe/config/impl/Path;
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodePath;

    invoke-direct {v2, v1, v0}, Lcom/typesafe/config/impl/ConfigNodePath;-><init>(Lcom/typesafe/config/impl/Path;Ljava/util/Collection;)V

    return-object v2
.end method

.method private static speculativeFastParsePath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 273
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->unicodeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/typesafe/config/impl/PathParser;->looksUnsafeForFastParser(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 275
    return-object v2

    .line 277
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/typesafe/config/impl/PathParser;->fastPathBuild(Lcom/typesafe/config/impl/Path;Ljava/lang/String;I)Lcom/typesafe/config/impl/Path;

    move-result-object v1

    return-object v1
.end method

.method private static splitTokenOnPeriod(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigSyntax;)Ljava/util/Collection;
    .locals 10
    .param p0, "t"    # Lcom/typesafe/config/impl/Token;
    .param p1, "flavor"    # Lcom/typesafe/config/ConfigSyntax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/Token;",
            "Lcom/typesafe/config/ConfigSyntax;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Token;->tokenText()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "tokenText":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 187
    :cond_0
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "splitToken":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v3, "splitTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/Token;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 190
    .local v6, "s":Ljava/lang/String;
    sget-object v7, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    if-ne p1, v7, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Token;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/typesafe/config/impl/Tokens;->newUnquotedText(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Token;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/typesafe/config/impl/Tokens;->newString(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_1
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Token;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/typesafe/config/impl/Tokens;->newUnquotedText(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v6    # "s":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_3

    .line 197
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    :cond_3
    return-object v3
.end method
