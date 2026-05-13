.class final Lcom/typesafe/config/impl/ConfigNodeObject;
.super Lcom/typesafe/config/impl/ConfigNodeComplexValue;
.source "ConfigNodeObject.java"


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)V"
        }
    .end annotation

    .line 10
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigNodeComplexValue;-><init>(Ljava/util/Collection;)V

    .line 11
    return-void
.end method

.method private indentation()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;"
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "seenNewLine":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, "indentation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    return-object v1

    .line 127
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_4

    .line 128
    if-nez v0, :cond_1

    .line 129
    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v3

    invoke-static {v3}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    const/4 v0, 0x1

    .line 132
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-static {v4}, Lcom/typesafe/config/impl/Tokens;->newLine(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v3

    invoke-static {v3}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/typesafe/config/impl/ConfigNodeField;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    .line 138
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/typesafe/config/impl/ConfigNodeInclude;

    if-eqz v3, :cond_3

    .line 140
    :cond_2
    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    return-object v1

    .line 127
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    const-string v3, " "

    invoke-static {v4, v3}, Lcom/typesafe/config/impl/Tokens;->newIgnoredWhitespace(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 150
    .local v2, "last":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v3

    sget-object v5, Lcom/typesafe/config/impl/Tokens;->CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

    if-ne v3, v5, :cond_7

    .line 151
    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 152
    .local v3, "beforeLast":Lcom/typesafe/config/impl/AbstractConfigNode;
    const-string v5, ""

    .line 153
    .local v5, "indent":Ljava/lang/String;
    instance-of v6, v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v6, :cond_6

    move-object v6, v3

    check-cast v6, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    .line 154
    invoke-virtual {v6}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v6

    invoke-static {v6}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 155
    move-object v6, v3

    check-cast v6, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v6}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v6

    invoke-virtual {v6}, Lcom/typesafe/config/impl/Token;->tokenText()Ljava/lang/String;

    move-result-object v5

    .line 156
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    new-instance v6, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-static {v4, v5}, Lcom/typesafe/config/impl/Tokens;->newIgnoredWhitespace(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-object v1

    .line 163
    .end local v2    # "last":Lcom/typesafe/config/impl/AbstractConfigNode;
    .end local v3    # "beforeLast":Lcom/typesafe/config/impl/AbstractConfigNode;
    .end local v5    # "indent":Ljava/lang/String;
    :cond_7
    :goto_2
    return-object v1
.end method

.method private setValueOnPath(Lcom/typesafe/config/impl/ConfigNodePath;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;
    .locals 2
    .param p1, "desiredPath"    # Lcom/typesafe/config/impl/ConfigNodePath;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .param p3, "flavor"    # Lcom/typesafe/config/ConfigSyntax;

    .line 112
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/typesafe/config/impl/ConfigNodeObject;->changeValueOnPath(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v0

    .line 115
    .local v0, "node":Lcom/typesafe/config/impl/ConfigNodeObject;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/typesafe/config/impl/ConfigNodeObject;->hasValue(Lcom/typesafe/config/impl/Path;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {v0, p1, p2, p3}, Lcom/typesafe/config/impl/ConfigNodeObject;->addValueOnPath(Lcom/typesafe/config/impl/ConfigNodePath;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v1

    return-object v1

    .line 118
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected addValueOnPath(Lcom/typesafe/config/impl/ConfigNodePath;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;
    .locals 16
    .param p1, "desiredPath"    # Lcom/typesafe/config/impl/ConfigNodePath;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .param p3, "flavor"    # Lcom/typesafe/config/ConfigSyntax;

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v4

    .line 168
    .local v4, "path":Lcom/typesafe/config/impl/Path;
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    .local v5, "childrenCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/typesafe/config/impl/ConfigNodeObject;->indentation()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    .local v6, "indentation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    instance-of v7, v2, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 174
    move-object v7, v2

    check-cast v7, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/typesafe/config/impl/AbstractConfigNode;

    invoke-virtual {v7, v9}, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->indentText(Lcom/typesafe/config/impl/AbstractConfigNode;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    move-result-object v7

    .local v7, "indentedValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    goto :goto_0

    .line 176
    .end local v7    # "indentedValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_0
    move-object/from16 v7, p2

    .line 178
    .restart local v7    # "indentedValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_2

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v9, :cond_2

    .line 179
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v9}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v9

    invoke-static {v9}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v8

    .line 182
    .local v9, "sameLine":Z
    :goto_2
    invoke-virtual {v4}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v11

    if-le v11, v8, :cond_5

    .line 183
    iget-object v11, v0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v8

    .local v11, "i":I
    :goto_3
    if-ltz v11, :cond_5

    .line 184
    iget-object v12, v0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/typesafe/config/impl/ConfigNodeField;

    if-nez v12, :cond_3

    .line 185
    goto :goto_4

    .line 187
    :cond_3
    iget-object v12, v0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/typesafe/config/impl/ConfigNodeField;

    .line 188
    .local v12, "node":Lcom/typesafe/config/impl/ConfigNodeField;
    invoke-virtual {v12}, Lcom/typesafe/config/impl/ConfigNodeField;->path()Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v13

    invoke-virtual {v13}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v13

    .line 189
    .local v13, "key":Lcom/typesafe/config/impl/Path;
    invoke-virtual {v4, v13}, Lcom/typesafe/config/impl/Path;->startsWith(Lcom/typesafe/config/impl/Path;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v12}, Lcom/typesafe/config/impl/ConfigNodeField;->value()Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v14

    instance-of v14, v14, Lcom/typesafe/config/impl/ConfigNodeObject;

    if-eqz v14, :cond_4

    .line 190
    invoke-virtual {v13}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/typesafe/config/impl/ConfigNodePath;->subPath(I)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v8

    .line 191
    .local v8, "remainingPath":Lcom/typesafe/config/impl/ConfigNodePath;
    invoke-virtual {v12}, Lcom/typesafe/config/impl/ConfigNodeField;->value()Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v10

    check-cast v10, Lcom/typesafe/config/impl/ConfigNodeObject;

    .line 192
    .local v10, "newValue":Lcom/typesafe/config/impl/ConfigNodeObject;
    invoke-virtual {v10, v8, v2, v3}, Lcom/typesafe/config/impl/ConfigNodeObject;->addValueOnPath(Lcom/typesafe/config/impl/ConfigNodePath;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/typesafe/config/impl/ConfigNodeField;->replaceValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;)Lcom/typesafe/config/impl/ConfigNodeField;

    move-result-object v14

    invoke-virtual {v5, v11, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v14, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-direct {v14, v5}, Lcom/typesafe/config/impl/ConfigNodeObject;-><init>(Ljava/util/Collection;)V

    return-object v14

    .line 183
    .end local v8    # "remainingPath":Lcom/typesafe/config/impl/ConfigNodePath;
    .end local v10    # "newValue":Lcom/typesafe/config/impl/ConfigNodeObject;
    .end local v12    # "node":Lcom/typesafe/config/impl/ConfigNodeField;
    .end local v13    # "key":Lcom/typesafe/config/impl/Path;
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 199
    .end local v11    # "i":I
    :cond_5
    iget-object v11, v0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v11}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v11

    sget-object v12, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    if-ne v11, v12, :cond_6

    move v10, v8

    goto :goto_5

    :cond_6
    nop

    .line 201
    .local v10, "startsWithBrace":Z
    :goto_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v11, "newNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/typesafe/config/impl/ConfigNodePath;->first()Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v12, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    const/4 v13, 0x0

    const-string v14, " "

    invoke-static {v13, v14}, Lcom/typesafe/config/impl/Tokens;->newIgnoredWhitespace(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v15

    invoke-direct {v12, v15}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v12, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    sget-object v15, Lcom/typesafe/config/impl/Tokens;->COLON:Lcom/typesafe/config/impl/Token;

    invoke-direct {v12, v15}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v12, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-static {v13, v14}, Lcom/typesafe/config/impl/Tokens;->newIgnoredWhitespace(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v4}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v12

    if-ne v12, v8, :cond_7

    .line 209
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 212
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v12, "newObjectNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v14, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    sget-object v15, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    invoke-direct {v14, v15}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 215
    new-instance v14, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-static {v13}, Lcom/typesafe/config/impl/Tokens;->newLine(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/Token;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_8
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    new-instance v13, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    sget-object v14, Lcom/typesafe/config/impl/Tokens;->CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

    invoke-direct {v13, v14}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v13, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-direct {v13, v12}, Lcom/typesafe/config/impl/ConfigNodeObject;-><init>(Ljava/util/Collection;)V

    .line 220
    .local v13, "newObject":Lcom/typesafe/config/impl/ConfigNodeObject;
    invoke-virtual {v1, v8}, Lcom/typesafe/config/impl/ConfigNodePath;->subPath(I)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v14

    invoke-virtual {v13, v14, v7, v3}, Lcom/typesafe/config/impl/ConfigNodeObject;->addValueOnPath(Lcom/typesafe/config/impl/ConfigNodePath;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v12    # "newObjectNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    .end local v13    # "newObject":Lcom/typesafe/config/impl/ConfigNodeObject;
    :goto_6
    sget-object v12, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v3, v12, :cond_9

    if-nez v10, :cond_9

    if-eqz v9, :cond_12

    .line 225
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v8

    .local v12, "i":I
    :goto_7
    if-ltz v12, :cond_12

    .line 229
    sget-object v13, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v3, v13, :cond_a

    if-eqz v9, :cond_c

    :cond_a
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/typesafe/config/impl/ConfigNodeField;

    if-eqz v13, :cond_c

    .line 230
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_b

    add-int/lit8 v13, v12, 0x1

    .line 231
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v13, :cond_b

    add-int/lit8 v13, v12, 0x1

    .line 232
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v13}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v13

    sget-object v14, Lcom/typesafe/config/impl/Tokens;->COMMA:Lcom/typesafe/config/impl/Token;

    if-eq v13, v14, :cond_12

    .line 233
    :cond_b
    add-int/lit8 v13, v12, 0x1

    new-instance v14, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    sget-object v15, Lcom/typesafe/config/impl/Tokens;->COMMA:Lcom/typesafe/config/impl/Token;

    invoke-direct {v14, v15}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    invoke-virtual {v5, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 239
    :cond_c
    if-eqz v10, :cond_11

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v13, :cond_11

    .line 240
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    iget-object v13, v13, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token:Lcom/typesafe/config/impl/Token;

    sget-object v14, Lcom/typesafe/config/impl/Tokens;->CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

    if-ne v13, v14, :cond_11

    .line 241
    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 242
    .local v13, "previous":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v14, v13, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v14, :cond_d

    move-object v14, v13

    check-cast v14, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    .line 243
    invoke-virtual {v14}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v14

    invoke-static {v14}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 244
    add-int/lit8 v14, v12, -0x1

    new-instance v15, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-direct {v15, v11}, Lcom/typesafe/config/impl/ConfigNodeField;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 245
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 246
    :cond_d
    instance-of v14, v13, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v14, :cond_10

    move-object v14, v13

    check-cast v14, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    .line 247
    invoke-virtual {v14}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v14

    invoke-static {v14}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 248
    add-int/lit8 v14, v12, -0x2

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 249
    .local v14, "beforePrevious":Lcom/typesafe/config/impl/AbstractConfigNode;
    if-eqz v9, :cond_e

    .line 250
    add-int/lit8 v15, v12, -0x1

    new-instance v8, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-direct {v8, v11}, Lcom/typesafe/config/impl/ConfigNodeField;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v15, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 253
    :cond_e
    instance-of v8, v14, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v8, :cond_f

    move-object v8, v14

    check-cast v8, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    .line 254
    invoke-virtual {v8}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v8

    invoke-static {v8}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 255
    add-int/lit8 v8, v12, -0x2

    new-instance v15, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-direct {v15, v11}, Lcom/typesafe/config/impl/ConfigNodeField;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v8, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    add-int/lit8 v12, v12, -0x2

    goto :goto_8

    .line 258
    :cond_f
    new-instance v8, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-direct {v8, v11}, Lcom/typesafe/config/impl/ConfigNodeField;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 261
    .end local v14    # "beforePrevious":Lcom/typesafe/config/impl/AbstractConfigNode;
    :goto_8
    goto :goto_9

    .line 263
    :cond_10
    new-instance v8, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-direct {v8, v11}, Lcom/typesafe/config/impl/ConfigNodeField;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 225
    .end local v13    # "previous":Lcom/typesafe/config/impl/AbstractConfigNode;
    :cond_11
    :goto_9
    add-int/lit8 v12, v12, -0x1

    const/4 v8, 0x1

    goto/16 :goto_7

    .line 267
    .end local v12    # "i":I
    :cond_12
    :goto_a
    if-nez v10, :cond_14

    .line 268
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v8, :cond_13

    .line 269
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v12

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v8}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v8

    invoke-static {v8}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 270
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v12

    new-instance v12, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-direct {v12, v11}, Lcom/typesafe/config/impl/ConfigNodeField;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v8, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b

    .line 272
    :cond_13
    new-instance v8, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-direct {v8, v11}, Lcom/typesafe/config/impl/ConfigNodeField;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_14
    :goto_b
    new-instance v8, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-direct {v8, v5}, Lcom/typesafe/config/impl/ConfigNodeObject;-><init>(Ljava/util/Collection;)V

    return-object v8
.end method

.method protected changeValueOnPath(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;
    .locals 9
    .param p1, "desiredPath"    # Lcom/typesafe/config/impl/Path;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .param p3, "flavor"    # Lcom/typesafe/config/ConfigSyntax;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .local v0, "childrenCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    const/4 v1, 0x0

    .line 43
    .local v1, "seenNonMatching":Z
    move-object v2, p2

    .line 44
    .local v2, "valueCopy":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_d

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v4}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v4

    .line 48
    .local v4, "t":Lcom/typesafe/config/impl/Token;
    sget-object v5, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-ne p3, v5, :cond_c

    if-nez v1, :cond_c

    sget-object v5, Lcom/typesafe/config/impl/Tokens;->COMMA:Lcom/typesafe/config/impl/Token;

    if-ne v4, v5, :cond_c

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 52
    .end local v4    # "t":Lcom/typesafe/config/impl/Token;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/typesafe/config/impl/ConfigNodeField;

    if-nez v4, :cond_1

    .line 53
    goto/16 :goto_4

    .line 55
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/ConfigNodeField;

    .line 56
    .local v4, "node":Lcom/typesafe/config/impl/ConfigNodeField;
    invoke-virtual {v4}, Lcom/typesafe/config/impl/ConfigNodeField;->path()Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v5

    .line 59
    .local v5, "key":Lcom/typesafe/config/impl/Path;
    if-nez v2, :cond_2

    invoke-virtual {v5, p1}, Lcom/typesafe/config/impl/Path;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v5, p1}, Lcom/typesafe/config/impl/Path;->startsWith(Lcom/typesafe/config/impl/Path;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, p1}, Lcom/typesafe/config/impl/Path;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 60
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    move v6, v3

    .local v6, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 63
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v7, :cond_5

    .line 64
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v7}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v7

    .line 65
    .local v7, "t":Lcom/typesafe/config/impl/Token;
    invoke-static {v7}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lcom/typesafe/config/impl/Tokens;->COMMA:Lcom/typesafe/config/impl/Token;

    if-ne v7, v8, :cond_5

    .line 66
    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    nop

    .end local v7    # "t":Lcom/typesafe/config/impl/Token;
    add-int/lit8 v6, v6, -0x1

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6    # "j":I
    :cond_5
    goto/16 :goto_4

    .line 75
    :cond_6
    invoke-virtual {v5, p1}, Lcom/typesafe/config/impl/Path;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 76
    const/4 v1, 0x1

    .line 78
    add-int/lit8 v6, v3, -0x1

    if-lez v6, :cond_7

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/typesafe/config/impl/AbstractConfigNode;

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    .line 79
    .local v6, "before":Lcom/typesafe/config/impl/AbstractConfigNode;
    :goto_2
    instance-of v7, p2, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    if-eqz v7, :cond_8

    instance-of v7, v6, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v7, :cond_8

    move-object v7, v6

    check-cast v7, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    .line 81
    invoke-virtual {v7}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v7

    invoke-static {v7}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 82
    move-object v7, p2

    check-cast v7, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    invoke-virtual {v7, v6}, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->indentText(Lcom/typesafe/config/impl/AbstractConfigNode;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    move-result-object v7

    .local v7, "indentedValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    goto :goto_3

    .line 84
    .end local v7    # "indentedValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_8
    move-object v7, p2

    .line 85
    .restart local v7    # "indentedValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :goto_3
    invoke-virtual {v4, v7}, Lcom/typesafe/config/impl/ConfigNodeField;->replaceValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;)Lcom/typesafe/config/impl/ConfigNodeField;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/4 v2, 0x0

    .line 87
    .end local v6    # "before":Lcom/typesafe/config/impl/AbstractConfigNode;
    .end local v7    # "indentedValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    goto :goto_4

    :cond_9
    invoke-virtual {p1, v5}, Lcom/typesafe/config/impl/Path;->startsWith(Lcom/typesafe/config/impl/Path;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-virtual {v4}, Lcom/typesafe/config/impl/ConfigNodeField;->value()Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v6

    instance-of v6, v6, Lcom/typesafe/config/impl/ConfigNodeObject;

    if-eqz v6, :cond_c

    .line 90
    invoke-virtual {v5}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/typesafe/config/impl/Path;->subPath(I)Lcom/typesafe/config/impl/Path;

    move-result-object v6

    .line 91
    .local v6, "remainingPath":Lcom/typesafe/config/impl/Path;
    invoke-virtual {v4}, Lcom/typesafe/config/impl/ConfigNodeField;->value()Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v7

    check-cast v7, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-virtual {v7, v6, v2, p3}, Lcom/typesafe/config/impl/ConfigNodeObject;->changeValueOnPath(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/typesafe/config/impl/ConfigNodeField;->replaceValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;)Lcom/typesafe/config/impl/ConfigNodeField;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    if-eqz v2, :cond_a

    iget-object v7, p0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/typesafe/config/impl/ConfigNodeField;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 93
    const/4 v2, 0x0

    .line 94
    .end local v6    # "remainingPath":Lcom/typesafe/config/impl/Path;
    :cond_a
    goto :goto_4

    .line 96
    :cond_b
    const/4 v1, 0x1

    .line 44
    .end local v4    # "node":Lcom/typesafe/config/impl/ConfigNodeField;
    .end local v5    # "key":Lcom/typesafe/config/impl/Path;
    :cond_c
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 99
    .end local v3    # "i":I
    :cond_d
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-direct {v3, v0}, Lcom/typesafe/config/impl/ConfigNodeObject;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public hasValue(Lcom/typesafe/config/impl/Path;)Z
    .locals 8
    .param p1, "desiredPath"    # Lcom/typesafe/config/impl/Path;

    .line 19
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeObject;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 20
    .local v1, "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v2, v1, Lcom/typesafe/config/impl/ConfigNodeField;

    if-eqz v2, :cond_2

    .line 21
    move-object v2, v1

    check-cast v2, Lcom/typesafe/config/impl/ConfigNodeField;

    .line 22
    .local v2, "field":Lcom/typesafe/config/impl/ConfigNodeField;
    invoke-virtual {v2}, Lcom/typesafe/config/impl/ConfigNodeField;->path()Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v3

    .line 23
    .local v3, "key":Lcom/typesafe/config/impl/Path;
    invoke-virtual {v3, p1}, Lcom/typesafe/config/impl/Path;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Lcom/typesafe/config/impl/Path;->startsWith(Lcom/typesafe/config/impl/Path;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1, v3}, Lcom/typesafe/config/impl/Path;->startsWith(Lcom/typesafe/config/impl/Path;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 26
    invoke-virtual {v2}, Lcom/typesafe/config/impl/ConfigNodeField;->value()Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v4

    instance-of v4, v4, Lcom/typesafe/config/impl/ConfigNodeObject;

    if-eqz v4, :cond_2

    .line 27
    invoke-virtual {v2}, Lcom/typesafe/config/impl/ConfigNodeField;->value()Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/ConfigNodeObject;

    .line 28
    .local v4, "obj":Lcom/typesafe/config/impl/ConfigNodeObject;
    invoke-virtual {v3}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/typesafe/config/impl/Path;->subPath(I)Lcom/typesafe/config/impl/Path;

    move-result-object v6

    .line 29
    .local v6, "remainingPath":Lcom/typesafe/config/impl/Path;
    invoke-virtual {v4, v6}, Lcom/typesafe/config/impl/ConfigNodeObject;->hasValue(Lcom/typesafe/config/impl/Path;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 30
    return v5

    .line 24
    .end local v4    # "obj":Lcom/typesafe/config/impl/ConfigNodeObject;
    .end local v6    # "remainingPath":Lcom/typesafe/config/impl/Path;
    :cond_1
    :goto_1
    return v5

    .line 35
    .end local v1    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    .end local v2    # "field":Lcom/typesafe/config/impl/ConfigNodeField;
    .end local v3    # "key":Lcom/typesafe/config/impl/Path;
    :cond_2
    goto :goto_0

    .line 36
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigNodeObject;->newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object p1

    return-object p1
.end method

.method protected newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)",
            "Lcom/typesafe/config/impl/ConfigNodeObject;"
        }
    .end annotation

    .line 15
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v0, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-direct {v0, p1}, Lcom/typesafe/config/impl/ConfigNodeObject;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public removeValueOnPath(Ljava/lang/String;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;
    .locals 2
    .param p1, "desiredPath"    # Ljava/lang/String;
    .param p2, "flavor"    # Lcom/typesafe/config/ConfigSyntax;

    .line 278
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/PathParser;->parsePathNode(Ljava/lang/String;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 279
    .local v0, "path":Lcom/typesafe/config/impl/Path;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/typesafe/config/impl/ConfigNodeObject;->changeValueOnPath(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v1

    return-object v1
.end method

.method public setValueOnPath(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigNodeValue;)Lcom/typesafe/config/impl/ConfigNodeObject;
    .locals 1
    .param p1, "desiredPath"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    .line 103
    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    invoke-virtual {p0, p1, p2, v0}, Lcom/typesafe/config/impl/ConfigNodeObject;->setValueOnPath(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v0

    return-object v0
.end method

.method public setValueOnPath(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;
    .locals 2
    .param p1, "desiredPath"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .param p3, "flavor"    # Lcom/typesafe/config/ConfigSyntax;

    .line 107
    invoke-static {p1, p3}, Lcom/typesafe/config/impl/PathParser;->parsePathNode(Ljava/lang/String;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v0

    .line 108
    .local v0, "path":Lcom/typesafe/config/impl/ConfigNodePath;
    invoke-direct {p0, v0, p2, p3}, Lcom/typesafe/config/impl/ConfigNodeObject;->setValueOnPath(Lcom/typesafe/config/impl/ConfigNodePath;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v1

    return-object v1
.end method
