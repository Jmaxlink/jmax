.class final Lcom/typesafe/config/impl/ConfigNodePath;
.super Lcom/typesafe/config/impl/AbstractConfigNode;
.source "ConfigNodePath.java"


# instance fields
.field private final path:Lcom/typesafe/config/impl/Path;

.field final tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/Path;Ljava/util/Collection;)V
    .locals 1
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/Path;",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/Token;",
            ">;)V"
        }
    .end annotation

    .line 14
    .local p2, "tokens":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/Token;>;"
    invoke-direct {p0}, Lcom/typesafe/config/impl/AbstractConfigNode;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/typesafe/config/impl/ConfigNodePath;->path:Lcom/typesafe/config/impl/Path;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigNodePath;->tokens:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method protected first()Lcom/typesafe/config/impl/ConfigNodePath;
    .locals 6

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodePath;->tokens:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .local v0, "tokensCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/Token;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/Token;

    invoke-static {v2}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/Token;

    invoke-virtual {v2}, Lcom/typesafe/config/impl/Token;->tokenText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodePath;

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigNodePath;->path:Lcom/typesafe/config/impl/Path;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/typesafe/config/impl/Path;->subPath(II)Lcom/typesafe/config/impl/Path;

    move-result-object v3

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/typesafe/config/impl/ConfigNodePath;-><init>(Lcom/typesafe/config/impl/Path;Ljava/util/Collection;)V

    return-object v2

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "i":I
    :cond_1
    return-object p0
.end method

.method protected subPath(I)Lcom/typesafe/config/impl/ConfigNodePath;
    .locals 7
    .param p1, "toRemove"    # I

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "periodCount":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigNodePath;->tokens:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .local v1, "tokensCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/Token;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/Token;

    invoke-static {v3}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/Token;

    invoke-virtual {v3}, Lcom/typesafe/config/impl/Token;->tokenText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    :cond_0
    if-ne v0, p1, :cond_1

    .line 37
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodePath;

    iget-object v4, p0, Lcom/typesafe/config/impl/ConfigNodePath;->path:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v4, p1}, Lcom/typesafe/config/impl/Path;->subPath(I)Lcom/typesafe/config/impl/Path;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/typesafe/config/impl/ConfigNodePath;-><init>(Lcom/typesafe/config/impl/Path;Ljava/util/Collection;)V

    return-object v3

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v3, "Tried to remove too many elements from a Path node"

    invoke-direct {v2, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected tokens()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodePath;->tokens:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected value()Lcom/typesafe/config/impl/Path;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodePath;->path:Lcom/typesafe/config/impl/Path;

    return-object v0
.end method
