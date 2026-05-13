.class final Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;
.super Ljava/lang/Object;
.source "ConfigDocumentParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigDocumentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseContext"
.end annotation


# instance fields
.field private final ExpectingClosingParenthesisError:Ljava/lang/String;

.field private final baseOrigin:Lcom/typesafe/config/ConfigOrigin;

.field private final buffer:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation
.end field

.field equalsCount:I

.field private final flavor:Lcom/typesafe/config/ConfigSyntax;

.field private lineNumber:I

.field private final tokens:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigSyntax;Lcom/typesafe/config/ConfigOrigin;Ljava/util/Iterator;)V
    .locals 1
    .param p1, "flavor"    # Lcom/typesafe/config/ConfigSyntax;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigSyntax;",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p3, "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const-string v0, "expecting a close parentheses \')\' here, not: "

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->ExpectingClosingParenthesisError:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->lineNumber:I

    .line 36
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->buffer:Ljava/util/Stack;

    .line 37
    iput-object p3, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->tokens:Ljava/util/Iterator;

    .line 38
    iput-object p1, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->equalsCount:I

    .line 40
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->baseOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 41
    return-void
.end method

.method private addQuoteSuggestion(Lcom/typesafe/config/impl/Path;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "lastPath"    # Lcom/typesafe/config/impl/Path;
    .param p2, "insideEquals"    # Z
    .param p3, "badToken"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 210
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 213
    .local v0, "previousFieldName":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/Token;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    if-eqz v0, :cond_1

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (if you intended \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to be part of a value, instead of a key, try adding double quotes around the whole value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "part":Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v1    # "part":Ljava/lang/String;
    :cond_1
    return-object p4

    .line 222
    :cond_2
    const-string v1, " (if you intended "

    if-eqz v0, :cond_3

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to be part of the value for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', try enclosing the value in double quotes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "part":Ljava/lang/String;
    goto :goto_1

    .line 227
    .end local v1    # "part":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to be part of a key or string value, try enclosing the key or value in double quotes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .restart local v1    # "part":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_4

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or you may be able to rename the file .properties rather than .conf)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 237
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private addQuoteSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "badToken"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 205
    iget v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->equalsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->addQuoteSuggestion(Lcom/typesafe/config/impl/Path;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkElementSeparator(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)Z"
        }
    .end annotation

    .line 93
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 94
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 95
    .local v0, "t":Lcom/typesafe/config/impl/Token;
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->COMMA:Lcom/typesafe/config/impl/Token;

    if-ne v0, v1, :cond_0

    .line 96
    new-instance v1, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v1, v0}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    return v2

    .line 99
    :cond_0
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 100
    const/4 v1, 0x0

    return v1

    .line 103
    .end local v0    # "t":Lcom/typesafe/config/impl/Token;
    :cond_1
    const/4 v0, 0x0

    .line 104
    .local v0, "sawSeparatorOrNewline":Z
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .line 106
    .local v1, "t":Lcom/typesafe/config/impl/Token;
    :goto_0
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->isUnquotedWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->isComment(Lcom/typesafe/config/impl/Token;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeComment;

    invoke-direct {v3, v1}, Lcom/typesafe/config/impl/ConfigNodeComment;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 110
    :cond_3
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    const/4 v0, 0x1

    .line 112
    iget v3, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->lineNumber:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->lineNumber:I

    .line 113
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v3, v1}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 116
    :cond_4
    sget-object v3, Lcom/typesafe/config/impl/Tokens;->COMMA:Lcom/typesafe/config/impl/Token;

    if-ne v1, v3, :cond_5

    .line 117
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v3, v1}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    return v2

    .line 121
    :cond_5
    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 122
    return v0

    .line 107
    :cond_6
    :goto_1
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v3, v1}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_2
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v1

    goto :goto_0
.end method

.method private consolidateValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)",
            "Lcom/typesafe/config/impl/AbstractConfigNodeValue;"
        }
    .end annotation

    .line 132
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-ne v0, v1, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    const/4 v1, 0x0

    .line 140
    .local v1, "valueCount":I
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v2

    .line 142
    .local v2, "t":Lcom/typesafe/config/impl/Token;
    :goto_0
    const/4 v3, 0x0

    .line 143
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    invoke-static {v2}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    new-instance v4, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v4, v2}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v2

    .line 146
    goto :goto_0

    .line 148
    :cond_1
    invoke-static {v2}, Lcom/typesafe/config/impl/Tokens;->isValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v2}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 149
    invoke-static {v2}, Lcom/typesafe/config/impl/Tokens;->isSubstitution(Lcom/typesafe/config/impl/Token;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    if-eq v2, v4, :cond_8

    sget-object v4, Lcom/typesafe/config/impl/Tokens;->OPEN_SQUARE:Lcom/typesafe/config/impl/Token;

    if-ne v2, v4, :cond_2

    goto :goto_4

    .line 166
    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_2
    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 170
    const/4 v3, 0x2

    if-ge v1, v3, :cond_6

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "value":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 173
    .local v5, "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v6, v5, Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    if-eqz v6, :cond_3

    .line 174
    move-object v3, v5

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    goto :goto_2

    .line 175
    :cond_3
    if-nez v3, :cond_4

    .line 176
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 178
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/typesafe/config/impl/AbstractConfigNode;->tokens()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/typesafe/config/impl/Token;

    invoke-direct {p0, v6}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 179
    .end local v5    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    :goto_2
    goto :goto_1

    .line 180
    :cond_5
    return-object v3

    .line 185
    .end local v3    # "value":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_7

    .line 186
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v4, :cond_7

    .line 187
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v4}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 188
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 185
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 193
    .end local v3    # "i":I
    :cond_7
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeConcatenation;

    invoke-direct {v3, v0}, Lcom/typesafe/config/impl/ConfigNodeConcatenation;-><init>(Ljava/util/Collection;)V

    return-object v3

    .line 152
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_8
    :goto_4
    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v3

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 158
    if-eqz v3, :cond_9

    .line 161
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v2

    .line 164
    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    goto/16 :goto_0

    .line 159
    .restart local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_9
    new-instance v4, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v5, "no value"

    invoke-direct {v4, v5}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static isIncludeKeyword(Lcom/typesafe/config/impl/Token;)Z
    .locals 2
    .param p0, "t"    # Lcom/typesafe/config/impl/Token;

    .line 289
    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "include"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0
.end method

.method private isKeyValueSeparatorToken(Lcom/typesafe/config/impl/Token;)Z
    .locals 4
    .param p1, "t"    # Lcom/typesafe/config/impl/Token;

    .line 308
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 309
    sget-object v0, Lcom/typesafe/config/impl/Tokens;->COLON:Lcom/typesafe/config/impl/Token;

    if-ne p1, v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 311
    :cond_1
    sget-object v0, Lcom/typesafe/config/impl/Tokens;->COLON:Lcom/typesafe/config/impl/Token;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/typesafe/config/impl/Tokens;->EQUALS:Lcom/typesafe/config/impl/Token;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/typesafe/config/impl/Tokens;->PLUS_EQUALS:Lcom/typesafe/config/impl/Token;

    if-ne p1, v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method private static isUnquotedWhitespace(Lcom/typesafe/config/impl/Token;)Z
    .locals 5
    .param p0, "t"    # Lcom/typesafe/config/impl/Token;

    .line 294
    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 295
    return v1

    .line 297
    :cond_0
    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 301
    .local v3, "c":C
    invoke-static {v3}, Lcom/typesafe/config/impl/ConfigImplUtil;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 302
    return v1

    .line 299
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private nextToken()Lcom/typesafe/config/impl/Token;
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->popToken()Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 52
    .local v0, "t":Lcom/typesafe/config/impl/Token;
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v2, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-ne v1, v2, :cond_3

    .line 53
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->isUnquotedWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token not allowed in valid JSON: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1

    .line 56
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isSubstitution(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    const-string v1, "Substitutions (${} syntax) not allowed in JSON"

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1

    .line 60
    :cond_3
    :goto_1
    return-object v0
.end method

.method private nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)",
            "Lcom/typesafe/config/impl/Token;"
        }
    .end annotation

    .line 65
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    nop

    :goto_0
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 66
    .local v0, "t":Lcom/typesafe/config/impl/Token;
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->isUnquotedWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isComment(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    new-instance v1, Lcom/typesafe/config/impl/ConfigNodeComment;

    invoke-direct {v1, v0}, Lcom/typesafe/config/impl/ConfigNodeComment;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Token;->lineNumber()I

    move-result v1

    .line 75
    .local v1, "newNumber":I
    if-ltz v1, :cond_2

    .line 76
    iput v1, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->lineNumber:I

    .line 77
    :cond_2
    return-object v0

    .line 67
    .end local v1    # "newNumber":I
    :cond_3
    :goto_1
    new-instance v1, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v1, v0}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Token;->lineNumber()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->lineNumber:I

    .line 79
    .end local v0    # "t":Lcom/typesafe/config/impl/Token;
    :cond_4
    :goto_2
    goto :goto_0
.end method

.method private parseArray()Lcom/typesafe/config/impl/ConfigNodeComplexValue;
    .locals 7

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v1, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    sget-object v2, Lcom/typesafe/config/impl/Tokens;->OPEN_SQUARE:Lcom/typesafe/config/impl/Token;

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->consolidateValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v1

    .line 552
    .local v1, "nextValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    const-string v2, " (if you want "

    const-string v3, " to be part of a string value, then double-quote it)"

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 555
    :cond_0
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    .line 558
    .local v4, "t":Lcom/typesafe/config/impl/Token;
    sget-object v5, Lcom/typesafe/config/impl/Tokens;->CLOSE_SQUARE:Lcom/typesafe/config/impl/Token;

    if-ne v4, v5, :cond_1

    .line 559
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v2, v4}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodeArray;

    invoke-direct {v2, v0}, Lcom/typesafe/config/impl/ConfigNodeArray;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 561
    :cond_1
    invoke-static {v4}, Lcom/typesafe/config/impl/Tokens;->isValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/typesafe/config/impl/Tokens;->OPEN_SQUARE:Lcom/typesafe/config/impl/Token;

    if-eq v4, v5, :cond_3

    .line 562
    invoke-static {v4}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 563
    invoke-static {v4}, Lcom/typesafe/config/impl/Tokens;->isSubstitution(Lcom/typesafe/config/impl/Token;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 567
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List should have ] or a first element after the open [, instead had token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v2

    throw v2

    .line 564
    :cond_3
    :goto_0
    invoke-direct {p0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v1

    .line 565
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v4    # "t":Lcom/typesafe/config/impl/Token;
    :goto_1
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->checkElementSeparator(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 595
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->consolidateValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v1

    .line 596
    if-eqz v1, :cond_4

    .line 597
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 599
    :cond_4
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    .line 600
    .restart local v4    # "t":Lcom/typesafe/config/impl/Token;
    invoke-static {v4}, Lcom/typesafe/config/impl/Tokens;->isValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    if-eq v4, v5, :cond_7

    sget-object v5, Lcom/typesafe/config/impl/Tokens;->OPEN_SQUARE:Lcom/typesafe/config/impl/Token;

    if-eq v4, v5, :cond_7

    .line 601
    invoke-static {v4}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 602
    invoke-static {v4}, Lcom/typesafe/config/impl/Tokens;->isSubstitution(Lcom/typesafe/config/impl/Token;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 605
    :cond_5
    iget-object v5, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v6, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v5, v6, :cond_6

    sget-object v5, Lcom/typesafe/config/impl/Tokens;->CLOSE_SQUARE:Lcom/typesafe/config/impl/Token;

    if-ne v4, v5, :cond_6

    .line 607
    invoke-direct {p0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    goto :goto_1

    .line 609
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List should have had new element after a comma, instead had token: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " (if you want the comma or "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v2

    throw v2

    .line 603
    :cond_7
    :goto_2
    invoke-direct {p0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v1

    .line 604
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 581
    .end local v4    # "t":Lcom/typesafe/config/impl/Token;
    :cond_8
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    .line 582
    .restart local v4    # "t":Lcom/typesafe/config/impl/Token;
    sget-object v5, Lcom/typesafe/config/impl/Tokens;->CLOSE_SQUARE:Lcom/typesafe/config/impl/Token;

    if-ne v4, v5, :cond_9

    .line 583
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v2, v4}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodeArray;

    invoke-direct {v2, v0}, Lcom/typesafe/config/impl/ConfigNodeArray;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 586
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List should have ended with ] or had a comma, instead had token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v2

    throw v2
.end method

.method private parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/ConfigException;

    move-result-object v0

    return-object v0
.end method

.method private parseError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/ConfigException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 201
    new-instance v0, Lcom/typesafe/config/ConfigException$Parse;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->baseOrigin:Lcom/typesafe/config/ConfigOrigin;

    iget v2, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->lineNumber:I

    invoke-interface {v1, v2}, Lcom/typesafe/config/ConfigOrigin;->withLineNumber(I)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/typesafe/config/ConfigException$Parse;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private parseInclude(Ljava/util/ArrayList;)Lcom/typesafe/config/impl/ConfigNodeInclude;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)",
            "Lcom/typesafe/config/impl/ConfigNodeInclude;"
        }
    .end annotation

    .line 319
    .local p1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 322
    .local v0, "t":Lcom/typesafe/config/impl/Token;
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 323
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "kindText":Ljava/lang/String;
    const-string v3, "required("

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    const-string v2, "required\\("

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "r":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Token;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/typesafe/config/impl/Tokens;->newUnquotedText(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 331
    :cond_0
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v3, v0}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseIncludeResource(Ljava/util/ArrayList;Z)Lcom/typesafe/config/impl/ConfigNodeInclude;

    move-result-object v3

    .line 336
    .local v3, "res":Lcom/typesafe/config/impl/ConfigNodeInclude;
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    return-object v3

    .line 341
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expecting a close parentheses \')\' here, not: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v4

    throw v4

    .line 346
    .end local v2    # "r":Ljava/lang/String;
    .end local v3    # "res":Lcom/typesafe/config/impl/ConfigNodeInclude;
    :cond_2
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 347
    invoke-direct {p0, p1, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseIncludeResource(Ljava/util/ArrayList;Z)Lcom/typesafe/config/impl/ConfigNodeInclude;

    move-result-object v2

    return-object v2

    .line 351
    .end local v1    # "kindText":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 352
    invoke-direct {p0, p1, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseIncludeResource(Ljava/util/ArrayList;Z)Lcom/typesafe/config/impl/ConfigNodeInclude;

    move-result-object v1

    return-object v1
.end method

.method private parseIncludeResource(Ljava/util/ArrayList;Z)Lcom/typesafe/config/impl/ConfigNodeInclude;
    .locals 7
    .param p2, "isRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;Z)",
            "Lcom/typesafe/config/impl/ConfigNodeInclude;"
        }
    .end annotation

    .line 357
    .local p1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 360
    .local v0, "t":Lcom/typesafe/config/impl/Token;
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 362
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "kindText":Ljava/lang/String;
    const-string v2, "url("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    sget-object v2, Lcom/typesafe/config/impl/ConfigIncludeKind;->URL:Lcom/typesafe/config/impl/ConfigIncludeKind;

    .line 368
    .local v2, "kind":Lcom/typesafe/config/impl/ConfigIncludeKind;
    const-string v3, "url("

    .local v3, "prefix":Ljava/lang/String;
    goto :goto_0

    .line 369
    .end local v2    # "kind":Lcom/typesafe/config/impl/ConfigIncludeKind;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v2, "file("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    sget-object v2, Lcom/typesafe/config/impl/ConfigIncludeKind;->FILE:Lcom/typesafe/config/impl/ConfigIncludeKind;

    .line 371
    .restart local v2    # "kind":Lcom/typesafe/config/impl/ConfigIncludeKind;
    const-string v3, "file("

    .restart local v3    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 372
    .end local v2    # "kind":Lcom/typesafe/config/impl/ConfigIncludeKind;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1
    const-string v2, "classpath("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 373
    sget-object v2, Lcom/typesafe/config/impl/ConfigIncludeKind;->CLASSPATH:Lcom/typesafe/config/impl/ConfigIncludeKind;

    .line 374
    .restart local v2    # "kind":Lcom/typesafe/config/impl/ConfigIncludeKind;
    const-string v3, "classpath("

    .line 379
    .restart local v3    # "prefix":Ljava/lang/String;
    :goto_0
    const-string v4, "[^(]*\\("

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "r":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 381
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Token;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/typesafe/config/impl/Tokens;->newUnquotedText(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 384
    :cond_2
    new-instance v5, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v5, v0}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 390
    sget-object v5, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-static {v0, v5}, Lcom/typesafe/config/impl/Tokens;->isValueWithType(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigValueType;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 393
    new-instance v5, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;

    invoke-direct {v5, v0}, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 397
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 398
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "rest":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 400
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Token;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/typesafe/config/impl/Tokens;->newUnquotedText(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 403
    .end local v5    # "rest":Ljava/lang/String;
    :cond_3
    nop

    .line 407
    new-instance v5, Lcom/typesafe/config/impl/ConfigNodeInclude;

    invoke-direct {v5, p1, v2, p2}, Lcom/typesafe/config/impl/ConfigNodeInclude;-><init>(Ljava/util/Collection;Lcom/typesafe/config/impl/ConfigIncludeKind;Z)V

    return-object v5

    .line 404
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expecting a close parentheses \')\' here, not: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v5

    throw v5

    .line 391
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expecting include "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") parameter to be a quoted string, rather than: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v5

    throw v5

    .line 376
    .end local v2    # "kind":Lcom/typesafe/config/impl/ConfigIncludeKind;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "r":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expecting include parameter to be quoted filename, file(), classpath(), or url(). No spaces are allowed before the open paren. Not expecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v2

    throw v2

    .line 408
    .end local v1    # "kindText":Ljava/lang/String;
    :cond_7
    sget-object v1, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Tokens;->isValueWithType(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigValueType;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 409
    new-instance v1, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;

    invoke-direct {v1, v0}, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Lcom/typesafe/config/impl/ConfigNodeInclude;

    sget-object v2, Lcom/typesafe/config/impl/ConfigIncludeKind;->HEURISTIC:Lcom/typesafe/config/impl/ConfigIncludeKind;

    invoke-direct {v1, p1, v2, p2}, Lcom/typesafe/config/impl/ConfigNodeInclude;-><init>(Ljava/util/Collection;Lcom/typesafe/config/impl/ConfigIncludeKind;Z)V

    return-object v1

    .line 412
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "include keyword is not followed by a quoted string, but by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method

.method private parseKey(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/ConfigNodePath;
    .locals 5
    .param p1, "token"    # Lcom/typesafe/config/impl/Token;

    .line 262
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-ne v0, v1, :cond_1

    .line 263
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-static {p1, v0}, Lcom/typesafe/config/impl/Tokens;->isValueWithType(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigValueType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->baseOrigin:Lcom/typesafe/config/ConfigOrigin;

    iget v2, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->lineNumber:I

    .line 265
    invoke-interface {v1, v2}, Lcom/typesafe/config/ConfigOrigin;->withLineNumber(I)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Lcom/typesafe/config/impl/PathParser;->parsePathNodeExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expecting close brace } or a field name here, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0

    .line 271
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "expression":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/Token;>;"
    move-object v1, p1

    .line 273
    .local v1, "t":Lcom/typesafe/config/impl/Token;
    :goto_0
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->isValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 278
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 282
    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->baseOrigin:Lcom/typesafe/config/ConfigOrigin;

    iget v4, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->lineNumber:I

    .line 284
    invoke-interface {v3, v4}, Lcom/typesafe/config/ConfigOrigin;->withLineNumber(I)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v3

    .line 283
    invoke-static {v2, v3}, Lcom/typesafe/config/impl/PathParser;->parsePathNodeExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v2

    return-object v2

    .line 279
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expecting a close parentheses \')\' here, not: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v2

    throw v2

    .line 274
    :cond_4
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v1

    goto :goto_0
.end method

.method private parseObject(Z)Lcom/typesafe/config/impl/ConfigNodeComplexValue;
    .locals 19
    .param p1, "hadOpenCurly"    # Z

    .line 418
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 419
    .local v1, "afterComma":Z
    const/4 v2, 0x0

    .line 420
    .local v2, "lastPath":Lcom/typesafe/config/impl/Path;
    const/4 v3, 0x0

    .line 421
    .local v3, "lastInsideEquals":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v4, "objectNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v5, "keys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 425
    new-instance v6, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    sget-object v7, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    invoke-direct {v6, v7}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    :goto_0
    invoke-direct {v0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v6

    .line 429
    .local v6, "t":Lcom/typesafe/config/impl/Token;
    sget-object v7, Lcom/typesafe/config/impl/Tokens;->CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

    const-string v8, "unbalanced close brace \'}\' with no open brace"

    if-ne v6, v7, :cond_4

    .line 430
    iget-object v7, v0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v9, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-ne v7, v9, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 431
    :cond_1
    invoke-virtual {v6}, Lcom/typesafe/config/impl/Token;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "expecting a field name after a comma, got a close brace } instead"

    invoke-direct {v0, v7, v8}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->addQuoteSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v7

    throw v7

    .line 433
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 437
    new-instance v7, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    sget-object v8, Lcom/typesafe/config/impl/Tokens;->CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

    invoke-direct {v7, v8}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    goto/16 :goto_6

    .line 434
    :cond_3
    invoke-virtual {v6}, Lcom/typesafe/config/impl/Token;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v8}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->addQuoteSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v7

    throw v7

    .line 439
    :cond_4
    sget-object v7, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-ne v6, v7, :cond_5

    if-nez p1, :cond_5

    .line 440
    invoke-direct {v0, v6}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 441
    goto/16 :goto_6

    .line 442
    :cond_5
    iget-object v7, v0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v9, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v7, v9, :cond_6

    invoke-static {v6}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->isIncludeKeyword(Lcom/typesafe/config/impl/Token;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 443
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v7, "includeNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v9, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v9, v6}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-direct {v0, v7}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseInclude(Ljava/util/ArrayList;)Lcom/typesafe/config/impl/ConfigNodeInclude;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    const/4 v1, 0x0

    .line 447
    .end local v7    # "includeNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    goto/16 :goto_5

    .line 448
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v7, "keyValueNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    move-object v9, v6

    .line 450
    .local v9, "keyToken":Lcom/typesafe/config/impl/Token;
    invoke-direct {v0, v9}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseKey(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v10

    .line 451
    .local v10, "path":Lcom/typesafe/config/impl/ConfigNodePath;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-direct {v0, v7}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v11

    .line 453
    .local v11, "afterKey":Lcom/typesafe/config/impl/Token;
    const/4 v12, 0x0

    .line 456
    .local v12, "insideEquals":Z
    iget-object v13, v0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v14, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    const/4 v15, 0x1

    if-ne v13, v14, :cond_7

    sget-object v13, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    if-ne v11, v13, :cond_7

    .line 458
    invoke-direct {v0, v11}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v13

    .local v13, "nextValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    goto :goto_2

    .line 460
    .end local v13    # "nextValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_7
    invoke-direct {v0, v11}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->isKeyValueSeparatorToken(Lcom/typesafe/config/impl/Token;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 466
    new-instance v13, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v13, v11}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v13, Lcom/typesafe/config/impl/Tokens;->EQUALS:Lcom/typesafe/config/impl/Token;

    if-ne v11, v13, :cond_8

    .line 469
    const/4 v12, 0x1

    .line 470
    iget v13, v0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->equalsCount:I

    add-int/2addr v13, v15

    iput v13, v0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->equalsCount:I

    .line 473
    :cond_8
    invoke-direct {v0, v7}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->consolidateValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v13

    .line 474
    .restart local v13    # "nextValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    if-nez v13, :cond_9

    .line 475
    invoke-direct {v0, v7}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v13

    .line 479
    :cond_9
    :goto_2
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    if-eqz v12, :cond_a

    .line 481
    iget v14, v0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->equalsCount:I

    sub-int/2addr v14, v15

    iput v14, v0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->equalsCount:I

    .line 483
    :cond_a
    move v3, v12

    .line 485
    invoke-virtual {v10}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v14

    invoke-virtual {v14}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v14

    .line 486
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v16

    .line 488
    .local v16, "remaining":Lcom/typesafe/config/impl/Path;
    if-nez v16, :cond_d

    .line 489
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    .line 490
    .local v17, "existing":Ljava/lang/Boolean;
    if-eqz v17, :cond_c

    .line 496
    iget-object v15, v0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    move/from16 v18, v1

    .end local v1    # "afterComma":Z
    .local v18, "afterComma":Z
    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v15, v1, :cond_b

    goto :goto_3

    .line 497
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSON does not allow duplicate fields: \'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\' was already seen"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1

    .line 490
    .end local v18    # "afterComma":Z
    .restart local v1    # "afterComma":Z
    :cond_c
    move/from16 v18, v1

    .line 502
    .end local v1    # "afterComma":Z
    .restart local v18    # "afterComma":Z
    :goto_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .end local v17    # "existing":Ljava/lang/Boolean;
    goto :goto_4

    .line 504
    .end local v18    # "afterComma":Z
    .restart local v1    # "afterComma":Z
    :cond_d
    move/from16 v18, v1

    move v1, v15

    .end local v1    # "afterComma":Z
    .restart local v18    # "afterComma":Z
    iget-object v15, v0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v15, v1, :cond_13

    .line 508
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :goto_4
    const/4 v1, 0x0

    .line 512
    .end local v18    # "afterComma":Z
    .restart local v1    # "afterComma":Z
    new-instance v15, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-direct {v15, v7}, Lcom/typesafe/config/impl/ConfigNodeField;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v7    # "keyValueNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    .end local v9    # "keyToken":Lcom/typesafe/config/impl/Token;
    .end local v10    # "path":Lcom/typesafe/config/impl/ConfigNodePath;
    .end local v11    # "afterKey":Lcom/typesafe/config/impl/Token;
    .end local v12    # "insideEquals":Z
    .end local v13    # "nextValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "remaining":Lcom/typesafe/config/impl/Path;
    :goto_5
    invoke-direct {v0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->checkElementSeparator(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 517
    const/4 v1, 0x1

    .line 540
    .end local v6    # "t":Lcom/typesafe/config/impl/Token;
    goto/16 :goto_0

    .line 519
    .restart local v6    # "t":Lcom/typesafe/config/impl/Token;
    :cond_e
    invoke-direct {v0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v6

    .line 520
    sget-object v7, Lcom/typesafe/config/impl/Tokens;->CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

    if-ne v6, v7, :cond_10

    .line 521
    if-eqz p1, :cond_f

    .line 525
    new-instance v7, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-direct {v7, v6}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    goto :goto_6

    .line 522
    :cond_f
    nop

    .line 523
    invoke-virtual {v6}, Lcom/typesafe/config/impl/Token;->toString()Ljava/lang/String;

    move-result-object v7

    .line 522
    invoke-direct {v0, v2, v3, v7, v8}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->addQuoteSuggestion(Lcom/typesafe/config/impl/Path;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v7

    throw v7

    .line 527
    :cond_10
    if-nez p1, :cond_12

    .line 531
    sget-object v7, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-ne v6, v7, :cond_11

    .line 532
    invoke-direct {v0, v6}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 533
    nop

    .line 542
    .end local v6    # "t":Lcom/typesafe/config/impl/Token;
    :goto_6
    new-instance v6, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-direct {v6, v4}, Lcom/typesafe/config/impl/ConfigNodeObject;-><init>(Ljava/util/Collection;)V

    return-object v6

    .line 535
    .restart local v6    # "t":Lcom/typesafe/config/impl/Token;
    :cond_11
    nop

    .line 536
    invoke-virtual {v6}, Lcom/typesafe/config/impl/Token;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting end of input or a comma, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 535
    invoke-direct {v0, v2, v3, v7, v8}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->addQuoteSuggestion(Lcom/typesafe/config/impl/Path;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v7

    throw v7

    .line 528
    :cond_12
    nop

    .line 529
    invoke-virtual {v6}, Lcom/typesafe/config/impl/Token;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting close brace } or a comma, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 528
    invoke-direct {v0, v2, v3, v7, v8}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->addQuoteSuggestion(Lcom/typesafe/config/impl/Path;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v7

    throw v7

    .line 505
    .end local v1    # "afterComma":Z
    .restart local v7    # "keyValueNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    .restart local v9    # "keyToken":Lcom/typesafe/config/impl/Token;
    .restart local v10    # "path":Lcom/typesafe/config/impl/ConfigNodePath;
    .restart local v11    # "afterKey":Lcom/typesafe/config/impl/Token;
    .restart local v12    # "insideEquals":Z
    .restart local v13    # "nextValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v16    # "remaining":Lcom/typesafe/config/impl/Path;
    .restart local v18    # "afterComma":Z
    :cond_13
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v8, "somehow got multi-element path in JSON mode"

    invoke-direct {v1, v8}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    .end local v13    # "nextValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "remaining":Lcom/typesafe/config/impl/Path;
    .end local v18    # "afterComma":Z
    .restart local v1    # "afterComma":Z
    :cond_14
    move/from16 v18, v1

    .end local v1    # "afterComma":Z
    .restart local v18    # "afterComma":Z
    invoke-virtual {v11}, Lcom/typesafe/config/impl/Token;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Key \'"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 462
    invoke-virtual {v10}, Lcom/typesafe/config/impl/ConfigNodePath;->render()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "\' may not be followed by token: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 461
    invoke-direct {v0, v1, v8}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->addQuoteSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method

.method private parseValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .locals 5
    .param p1, "t"    # Lcom/typesafe/config/impl/Token;

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "v":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    iget v1, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->equalsCount:I

    .line 244
    .local v1, "startingEqualsCount":I
    invoke-static {p1}, Lcom/typesafe/config/impl/Tokens;->isValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/typesafe/config/impl/Tokens;->isSubstitution(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    sget-object v2, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    if-ne p1, v2, :cond_1

    .line 247
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseObject(Z)Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    move-result-object v0

    goto :goto_1

    .line 248
    :cond_1
    sget-object v2, Lcom/typesafe/config/impl/Tokens;->OPEN_SQUARE:Lcom/typesafe/config/impl/Token;

    if-ne p1, v2, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseArray()Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    move-result-object v0

    goto :goto_1

    .line 251
    :cond_2
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Token;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting a value but got wrong token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->addQuoteSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v2

    throw v2

    .line 245
    :cond_3
    :goto_0
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;

    invoke-direct {v2, p1}, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;-><init>(Lcom/typesafe/config/impl/Token;)V

    move-object v0, v2

    .line 255
    :goto_1
    iget v2, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->equalsCount:I

    if-ne v2, v1, :cond_4

    .line 258
    return-object v0

    .line 256
    :cond_4
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v3, "Bug in config parser: unbalanced equals count"

    invoke-direct {v2, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private popToken()Lcom/typesafe/config/impl/Token;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->buffer:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->tokens:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/Token;

    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->buffer:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/Token;

    return-object v0
.end method

.method private putBack(Lcom/typesafe/config/impl/Token;)V
    .locals 1
    .param p1, "token"    # Lcom/typesafe/config/impl/Token;

    .line 83
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->buffer:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method


# virtual methods
.method parse()Lcom/typesafe/config/impl/ConfigNodeRoot;
    .locals 7

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .line 622
    .local v1, "t":Lcom/typesafe/config/impl/Token;
    sget-object v2, Lcom/typesafe/config/impl/Tokens;->START:Lcom/typesafe/config/impl/Token;

    if-ne v1, v2, :cond_7

    .line 629
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .line 630
    const/4 v2, 0x0

    .line 631
    .local v2, "result":Lcom/typesafe/config/impl/AbstractConfigNode;
    const/4 v3, 0x0

    .line 632
    .local v3, "missingCurly":Z
    sget-object v4, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    if-eq v1, v4, :cond_3

    sget-object v4, Lcom/typesafe/config/impl/Tokens;->OPEN_SQUARE:Lcom/typesafe/config/impl/Token;

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    iget-object v4, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v5, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-ne v4, v5, :cond_2

    .line 636
    sget-object v4, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-ne v1, v4, :cond_1

    .line 637
    const-string v4, "Empty document"

    invoke-direct {p0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v4

    throw v4

    .line 639
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document must have an object or array at root, unexpected token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v4

    throw v4

    .line 646
    :cond_2
    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 647
    const/4 v3, 0x1

    .line 648
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseObject(Z)Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    move-result-object v2

    goto :goto_1

    .line 633
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v2

    .line 654
    :goto_1
    instance-of v4, v2, Lcom/typesafe/config/impl/ConfigNodeObject;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 655
    move-object v4, v2

    check-cast v4, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    invoke-virtual {v4}, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 657
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :goto_2
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextTokenCollectingWhitespace(Ljava/util/Collection;)Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .line 660
    sget-object v4, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-ne v1, v4, :cond_6

    .line 661
    if-eqz v3, :cond_5

    .line 663
    new-instance v4, Lcom/typesafe/config/impl/ConfigNodeRoot;

    new-instance v5, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-direct {v5, v0}, Lcom/typesafe/config/impl/ConfigNodeObject;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->baseOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-direct {v4, v5, v6}, Lcom/typesafe/config/impl/ConfigNodeRoot;-><init>(Ljava/util/Collection;Lcom/typesafe/config/ConfigOrigin;)V

    return-object v4

    .line 665
    :cond_5
    new-instance v4, Lcom/typesafe/config/impl/ConfigNodeRoot;

    iget-object v5, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->baseOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-direct {v4, v0, v5}, Lcom/typesafe/config/impl/ConfigNodeRoot;-><init>(Ljava/util/Collection;Lcom/typesafe/config/ConfigOrigin;)V

    return-object v4

    .line 668
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document has trailing tokens after first object or array: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v4

    throw v4

    .line 625
    .end local v2    # "result":Lcom/typesafe/config/impl/AbstractConfigNode;
    .end local v3    # "missingCurly":Z
    :cond_7
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "token stream did not begin with START, had "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method parseSingleValue()Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .locals 5

    .line 675
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 676
    .local v0, "t":Lcom/typesafe/config/impl/Token;
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->START:Lcom/typesafe/config/impl/Token;

    if-ne v0, v1, :cond_5

    .line 683
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 684
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    const-string v2, "The value from withValueText cannot have leading or trailing newlines, whitespace, or comments"

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->isUnquotedWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isComment(Lcom/typesafe/config/impl/Token;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 687
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-eq v0, v1, :cond_3

    .line 690
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v3, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-ne v1, v3, :cond_1

    .line 691
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v1

    .line 692
    .local v1, "node":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 693
    sget-object v2, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-ne v0, v2, :cond_0

    .line 694
    return-object v1

    .line 696
    :cond_0
    const-string v2, "Parsing JSON and the value set in withValueText was either a concatenation or had trailing whitespace, newlines, or comments"

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v2

    throw v2

    .line 700
    .end local v1    # "node":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_1
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->putBack(Lcom/typesafe/config/impl/Token;)V

    .line 701
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v1, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->consolidateValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v3

    .line 703
    .local v3, "node":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->nextToken()Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 704
    sget-object v4, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-ne v0, v4, :cond_2

    .line 705
    return-object v3

    .line 707
    :cond_2
    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v2

    throw v2

    .line 688
    .end local v1    # "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    .end local v3    # "node":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_3
    const-string v1, "Empty value"

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1

    .line 685
    :cond_4
    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1

    .line 679
    :cond_5
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token stream did not begin with START, had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method
