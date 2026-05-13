.class abstract Lcom/typesafe/config/impl/ConfigNodeComplexValue;
.super Lcom/typesafe/config/impl/AbstractConfigNodeValue;
.source "ConfigNodeComplexValue.java"


# instance fields
.field protected final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)V"
        }
    .end annotation

    .line 11
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0}, Lcom/typesafe/config/impl/AbstractConfigNodeValue;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public final children()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected indentText(Lcom/typesafe/config/impl/AbstractConfigNode;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;
    .locals 6
    .param p1, "indentation"    # Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .local v0, "childrenCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 32
    .local v2, "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    .line 33
    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v3

    invoke-static {v3}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36
    :cond_0
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigNodeField;

    if-eqz v3, :cond_1

    .line 37
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeField;->value()Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v3

    .line 38
    .local v3, "value":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v4, v3, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    if-eqz v4, :cond_2

    .line 39
    move-object v4, v2

    check-cast v4, Lcom/typesafe/config/impl/ConfigNodeField;

    move-object v5, v3

    check-cast v5, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    invoke-virtual {v5, p1}, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->indentText(Lcom/typesafe/config/impl/AbstractConfigNode;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/typesafe/config/impl/ConfigNodeField;->replaceValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;)Lcom/typesafe/config/impl/ConfigNodeField;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 41
    .end local v3    # "value":Lcom/typesafe/config/impl/AbstractConfigNode;
    :cond_1
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    if-eqz v3, :cond_2

    .line 42
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    invoke-virtual {v3, p1}, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->indentText(Lcom/typesafe/config/impl/AbstractConfigNode;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    nop

    .line 30
    .end local v2    # "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    move-result-object v1

    return-object v1
.end method

.method abstract newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)",
            "Lcom/typesafe/config/impl/ConfigNodeComplexValue;"
        }
    .end annotation
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
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;->children:Ljava/util/ArrayList;

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
