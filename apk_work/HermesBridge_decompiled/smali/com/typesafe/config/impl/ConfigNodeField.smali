.class final Lcom/typesafe/config/impl/ConfigNodeField;
.super Lcom/typesafe/config/impl/AbstractConfigNode;
.source "ConfigNodeField.java"


# instance fields
.field private final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0}, Lcom/typesafe/config/impl/AbstractConfigNode;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method protected comments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 72
    .local v2, "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigNodeComment;

    if-eqz v3, :cond_0

    .line 73
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeComment;

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeComment;->commentText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v2    # "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    :cond_0
    goto :goto_0

    .line 76
    :cond_1
    return-object v0
.end method

.method public path()Lcom/typesafe/config/impl/ConfigNodePath;
    .locals 2

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/typesafe/config/impl/ConfigNodePath;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/ConfigNodePath;

    return-object v1

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Field node doesn\'t have a path"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;)Lcom/typesafe/config/impl/ConfigNodeField;
    .locals 3
    .param p1, "newValue"    # Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .local v0, "childrenCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-direct {v2, v0}, Lcom/typesafe/config/impl/ConfigNodeField;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "Field node doesn\'t have a value"

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected separator()Lcom/typesafe/config/impl/Token;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 59
    .local v1, "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v2, v1, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v2, :cond_1

    .line 60
    move-object v2, v1

    check-cast v2, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v2}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v2

    .line 61
    .local v2, "t":Lcom/typesafe/config/impl/Token;
    sget-object v3, Lcom/typesafe/config/impl/Tokens;->PLUS_EQUALS:Lcom/typesafe/config/impl/Token;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/typesafe/config/impl/Tokens;->COLON:Lcom/typesafe/config/impl/Token;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/typesafe/config/impl/Tokens;->EQUALS:Lcom/typesafe/config/impl/Token;

    if-ne v2, v3, :cond_1

    .line 62
    :cond_0
    return-object v2

    .line 65
    .end local v1    # "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    .end local v2    # "t":Lcom/typesafe/config/impl/Token;
    :cond_1
    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected tokens()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/Token;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 23
    .local v2, "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigNode;->tokens()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    .end local v2    # "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    goto :goto_0

    .line 25
    :cond_0
    return-object v0
.end method

.method public value()Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .locals 2

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeField;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    return-object v1

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Field node doesn\'t have a value"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method
