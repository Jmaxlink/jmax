.class final Lcom/typesafe/config/impl/ConfigNodeRoot;
.super Lcom/typesafe/config/impl/ConfigNodeComplexValue;
.source "ConfigNodeRoot.java"


# instance fields
.field private final origin:Lcom/typesafe/config/ConfigOrigin;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/typesafe/config/ConfigOrigin;)V
    .locals 0
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;",
            "Lcom/typesafe/config/ConfigOrigin;",
            ")V"
        }
    .end annotation

    .line 14
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigNodeComplexValue;-><init>(Ljava/util/Collection;)V

    .line 15
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigNodeRoot;->origin:Lcom/typesafe/config/ConfigOrigin;

    .line 16
    return-void
.end method


# virtual methods
.method protected hasValue(Ljava/lang/String;)Z
    .locals 7
    .param p1, "desiredPath"    # Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/typesafe/config/impl/PathParser;->parsePath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 54
    .local v0, "path":Lcom/typesafe/config/impl/Path;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigNodeRoot;->children:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    .local v1, "childrenCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 57
    .local v3, "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v4, v3, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    if-eqz v4, :cond_1

    .line 58
    instance-of v4, v3, Lcom/typesafe/config/impl/ConfigNodeArray;

    if-nez v4, :cond_0

    .line 60
    instance-of v4, v3, Lcom/typesafe/config/impl/ConfigNodeObject;

    if-eqz v4, :cond_1

    .line 61
    move-object v4, v3

    check-cast v4, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-virtual {v4, v0}, Lcom/typesafe/config/impl/ConfigNodeObject;->hasValue(Lcom/typesafe/config/impl/Path;)Z

    move-result v4

    return v4

    .line 59
    :cond_0
    new-instance v4, Lcom/typesafe/config/ConfigException$WrongType;

    iget-object v5, p0, Lcom/typesafe/config/impl/ConfigNodeRoot;->origin:Lcom/typesafe/config/ConfigOrigin;

    const-string v6, "The ConfigDocument had an array at the root level, and values cannot be modified inside an array."

    invoke-direct {v4, v5, v6}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    throw v4

    .line 55
    .end local v3    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v3, "ConfigNodeRoot did not contain a value"

    invoke-direct {v2, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected bridge synthetic newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigNodeRoot;->newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeRoot;

    move-result-object p1

    return-object p1
.end method

.method protected newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeRoot;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)",
            "Lcom/typesafe/config/impl/ConfigNodeRoot;"
        }
    .end annotation

    .line 20
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Tried to indent the root object"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setValue(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeRoot;
    .locals 6
    .param p1, "desiredPath"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .param p3, "flavor"    # Lcom/typesafe/config/ConfigSyntax;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeRoot;->children:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .local v0, "childrenCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 36
    .local v2, "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    if-eqz v3, :cond_2

    .line 37
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigNodeArray;

    if-nez v3, :cond_1

    .line 39
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigNodeObject;

    if-eqz v3, :cond_2

    .line 40
    if-nez p2, :cond_0

    .line 41
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-virtual {v3, p1, p3}, Lcom/typesafe/config/impl/ConfigNodeObject;->removeValueOnPath(Ljava/lang/String;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 43
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-virtual {v3, p1, p2, p3}, Lcom/typesafe/config/impl/ConfigNodeObject;->setValueOnPath(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    :goto_1
    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeRoot;

    iget-object v4, p0, Lcom/typesafe/config/impl/ConfigNodeRoot;->origin:Lcom/typesafe/config/ConfigOrigin;

    invoke-direct {v3, v0, v4}, Lcom/typesafe/config/impl/ConfigNodeRoot;-><init>(Ljava/util/Collection;Lcom/typesafe/config/ConfigOrigin;)V

    return-object v3

    .line 38
    :cond_1
    new-instance v3, Lcom/typesafe/config/ConfigException$WrongType;

    iget-object v4, p0, Lcom/typesafe/config/impl/ConfigNodeRoot;->origin:Lcom/typesafe/config/ConfigOrigin;

    const-string v5, "The ConfigDocument had an array at the root level, and values cannot be modified inside an array."

    invoke-direct {v3, v4, v5}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    throw v3

    .line 34
    .end local v2    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "ConfigNodeRoot did not contain a value"

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected value()Lcom/typesafe/config/impl/ConfigNodeComplexValue;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeRoot;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 25
    .local v1, "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v2, v1, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    if-eqz v2, :cond_0

    .line 26
    move-object v0, v1

    check-cast v0, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    return-object v0

    .line 28
    .end local v1    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    :cond_0
    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "ConfigNodeRoot did not contain a value"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method
