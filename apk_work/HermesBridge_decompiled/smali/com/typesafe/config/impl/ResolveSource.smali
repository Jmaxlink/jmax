.class final Lcom/typesafe/config/impl/ResolveSource;
.super Ljava/lang/Object;
.source "ResolveSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;,
        Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;,
        Lcom/typesafe/config/impl/ResolveSource$Node;
    }
.end annotation


# instance fields
.field final pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "Lcom/typesafe/config/impl/Container;",
            ">;"
        }
    .end annotation
.end field

.field final root:Lcom/typesafe/config/impl/AbstractConfigObject;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V
    .locals 1
    .param p1, "root"    # Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/ResolveSource$Node;)V
    .locals 0
    .param p1, "root"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/AbstractConfigObject;",
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "Lcom/typesafe/config/impl/Container;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p2, "pathFromRoot":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<Lcom/typesafe/config/impl/Container;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 19
    iput-object p2, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    .line 20
    return-void
.end method

.method private static findInObject(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;
    .locals 7
    .param p0, "obj"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p2, "path"    # Lcom/typesafe/config/impl/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** finding \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 47
    .local v0, "restriction":Lcom/typesafe/config/impl/Path;
    invoke-virtual {p1, p2}, Lcom/typesafe/config/impl/ResolveContext;->restrict(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v1

    new-instance v2, Lcom/typesafe/config/impl/ResolveSource;

    invoke-direct {v2, p0}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    invoke-virtual {v1, p0, v2}, Lcom/typesafe/config/impl/ResolveContext;->resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v1

    .line 49
    .local v1, "partiallyResolved":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v2, v1, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v2, v0}, Lcom/typesafe/config/impl/ResolveContext;->restrict(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v2

    .line 50
    .local v2, "newContext":Lcom/typesafe/config/impl/ResolveContext;
    iget-object v3, v1, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    instance-of v3, v3, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v3, :cond_1

    .line 51
    iget-object v3, v1, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-static {v3, p2}, Lcom/typesafe/config/impl/ResolveSource;->findInObject(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;

    move-result-object v3

    .line 52
    .local v3, "pair":Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;
    new-instance v4, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;

    iget-object v5, v3, Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-static {v2, v5}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v5

    iget-object v6, v3, Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-direct {v4, v5, v6}, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;-><init>(Lcom/typesafe/config/impl/ResolveResult;Lcom/typesafe/config/impl/ResolveSource$Node;)V

    return-object v4

    .line 54
    .end local v3    # "pair":Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;
    :cond_1
    new-instance v3, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolved object to non-object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static findInObject(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;
    .locals 2
    .param p0, "obj"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 62
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/typesafe/config/impl/ResolveSource;->findInObject(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/ResolveSource$Node;)Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;

    move-result-object v0
    :try_end_0
    .catch Lcom/typesafe/config/ConfigException$NotResolved; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lcom/typesafe/config/ConfigException$NotResolved;
    invoke-static {p1, v0}, Lcom/typesafe/config/impl/ConfigImpl;->improveNotResolved(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigException$NotResolved;)Lcom/typesafe/config/ConfigException$NotResolved;

    move-result-object v1

    throw v1
.end method

.method private static findInObject(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/ResolveSource$Node;)Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;
    .locals 6
    .param p0, "obj"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/AbstractConfigObject;",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "Lcom/typesafe/config/impl/Container;",
            ">;)",
            "Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;"
        }
    .end annotation

    .line 69
    .local p2, "parents":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<Lcom/typesafe/config/impl/Container;>;"
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    .line 71
    .local v1, "next":Lcom/typesafe/config/impl/Path;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** looking up \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->attemptPeekWithPartialResolve(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    .line 74
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-nez p2, :cond_1

    new-instance v3, Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-direct {v3, p0}, Lcom/typesafe/config/impl/ResolveSource$Node;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Lcom/typesafe/config/impl/ResolveSource$Node;->prepend(Ljava/lang/Object;)Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v3

    .line 76
    .local v3, "newParents":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<Lcom/typesafe/config/impl/Container;>;"
    :goto_0
    if-nez v1, :cond_2

    .line 77
    new-instance v4, Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;

    invoke-direct {v4, v2, v3}, Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;-><init>(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource$Node;)V

    return-object v4

    .line 79
    :cond_2
    instance-of v4, v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v4, :cond_3

    .line 80
    move-object v4, v2

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-static {v4, v1, v3}, Lcom/typesafe/config/impl/ResolveSource;->findInObject(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/ResolveSource$Node;)Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;

    move-result-object v4

    return-object v4

    .line 82
    :cond_3
    new-instance v4, Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lcom/typesafe/config/impl/ResolveSource$ValueWithPath;-><init>(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource$Node;)V

    return-object v4
.end method

.method private static replace(Lcom/typesafe/config/impl/ResolveSource$Node;Lcom/typesafe/config/impl/Container;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveSource$Node;
    .locals 6
    .param p1, "old"    # Lcom/typesafe/config/impl/Container;
    .param p2, "replacement"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "Lcom/typesafe/config/impl/Container;",
            ">;",
            "Lcom/typesafe/config/impl/Container;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ")",
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "Lcom/typesafe/config/impl/Container;",
            ">;"
        }
    .end annotation

    .line 170
    .local p0, "list":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<Lcom/typesafe/config/impl/Container;>;"
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveSource$Node;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/Container;

    .line 171
    .local v0, "child":Lcom/typesafe/config/impl/Container;
    if-ne v0, p1, :cond_6

    .line 174
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveSource$Node;->tail()Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveSource$Node;->tail()Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ResolveSource$Node;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/Container;

    .line 175
    .local v1, "parent":Lcom/typesafe/config/impl/Container;
    :goto_0
    if-eqz p2, :cond_4

    instance-of v3, p2, Lcom/typesafe/config/impl/Container;

    if-nez v3, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    if-nez v1, :cond_2

    .line 190
    new-instance v2, Lcom/typesafe/config/impl/ResolveSource$Node;

    move-object v3, p2

    check-cast v3, Lcom/typesafe/config/impl/Container;

    invoke-direct {v2, v3}, Lcom/typesafe/config/impl/ResolveSource$Node;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 192
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-interface {v1, v2, p2}, Lcom/typesafe/config/impl/Container;->replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    .line 193
    .local v2, "newParent":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveSource$Node;->tail()Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/typesafe/config/impl/ResolveSource;->replace(Lcom/typesafe/config/impl/ResolveSource$Node;Lcom/typesafe/config/impl/Container;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v3

    .line 194
    .local v3, "newTail":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<Lcom/typesafe/config/impl/Container;>;"
    if-eqz v3, :cond_3

    .line 195
    move-object v4, p2

    check-cast v4, Lcom/typesafe/config/impl/Container;

    invoke-virtual {v3, v4}, Lcom/typesafe/config/impl/ResolveSource$Node;->prepend(Ljava/lang/Object;)Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v4

    return-object v4

    .line 197
    :cond_3
    new-instance v4, Lcom/typesafe/config/impl/ResolveSource$Node;

    move-object v5, p2

    check-cast v5, Lcom/typesafe/config/impl/Container;

    invoke-direct {v4, v5}, Lcom/typesafe/config/impl/ResolveSource$Node;-><init>(Ljava/lang/Object;)V

    return-object v4

    .line 176
    .end local v2    # "newParent":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v3    # "newTail":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<Lcom/typesafe/config/impl/Container;>;"
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 177
    return-object v2

    .line 183
    :cond_5
    move-object v3, p1

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-interface {v1, v3, v2}, Lcom/typesafe/config/impl/Container;->replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    .line 185
    .restart local v2    # "newParent":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveSource$Node;->tail()Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/typesafe/config/impl/ResolveSource;->replace(Lcom/typesafe/config/impl/ResolveSource$Node;Lcom/typesafe/config/impl/Container;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v3

    return-object v3

    .line 172
    .end local v1    # "parent":Lcom/typesafe/config/impl/Container;
    .end local v2    # "newParent":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_6
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only replace() the top node we\'re resolving; had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on top and tried to replace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " overall list was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private rootMustBeObj(Lcom/typesafe/config/impl/Container;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p1, "value"    # Lcom/typesafe/config/impl/Container;

    .line 30
    instance-of v0, p1, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    return-object v0

    .line 33
    :cond_0
    invoke-static {}, Lcom/typesafe/config/impl/SimpleConfigObject;->empty()Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method lookupSubst(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/SubstitutionExpression;I)Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;
    .locals 5
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p2, "subst"    # Lcom/typesafe/config/impl/SubstitutionExpression;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searching for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - looking up relative to file it occurred in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {p2}, Lcom/typesafe/config/impl/SubstitutionExpression;->path()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/typesafe/config/impl/ResolveSource;->findInObject(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;

    move-result-object v0

    .line 99
    .local v0, "result":Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;
    iget-object v1, v0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v1, v1, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    if-nez v1, :cond_5

    .line 103
    invoke-virtual {p2}, Lcom/typesafe/config/impl/SubstitutionExpression;->path()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/typesafe/config/impl/Path;->subPath(I)Lcom/typesafe/config/impl/Path;

    move-result-object v1

    .line 105
    .local v1, "unprefixed":Lcom/typesafe/config/impl/Path;
    if-lez p3, :cond_3

    .line 106
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, v0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v2, v2, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v2}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - looking up relative to parent file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    iget-object v3, v0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v3, v3, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-static {v2, v3, v1}, Lcom/typesafe/config/impl/ResolveSource;->findInObject(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;

    move-result-object v0

    .line 112
    :cond_3
    iget-object v2, v0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v2, v2, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v2, v2, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v2}, Lcom/typesafe/config/impl/ResolveContext;->options()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/typesafe/config/ConfigResolveOptions;->getUseSystemEnvironment()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    iget-object v2, v0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v2, v2, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v2}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - looking up in system environment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 115
    :cond_4
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->envVariablesAsConfigObject()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lcom/typesafe/config/impl/ResolveSource;->findInObject(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;

    move-result-object v0

    .line 119
    .end local v1    # "unprefixed":Lcom/typesafe/config/impl/Path;
    :cond_5
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 120
    iget-object v1, v0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v1, v1, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolved to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 122
    :cond_6
    return-object v0
.end method

.method pushParent(Lcom/typesafe/config/impl/Container;)Lcom/typesafe/config/impl/ResolveSource;
    .locals 4
    .param p1, "parent"    # Lcom/typesafe/config/impl/Container;

    .line 126
    if-eqz p1, :cond_6

    .line 129
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushing parent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==root "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onto "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    if-nez v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    if-ne p1, v0, :cond_2

    .line 134
    new-instance v0, Lcom/typesafe/config/impl/ResolveSource;

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    new-instance v2, Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-direct {v2, p1}, Lcom/typesafe/config/impl/ResolveSource$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/ResolveSource$Node;)V

    return-object v0

    .line 136
    :cond_2
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v0, v1}, Lcom/typesafe/config/impl/AbstractConfigObject;->hasDescendant(Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** BUG ***** tried to push parent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without having a path to it in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 145
    :cond_3
    return-object p0

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveSource$Node;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/Container;

    .line 149
    .local v0, "parentParent":Lcom/typesafe/config/impl/Container;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 152
    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-interface {v0, v1}, Lcom/typesafe/config/impl/Container;->hasDescendant(Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** BUG ***** trying to push non-child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", non-child was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 157
    :cond_5
    new-instance v1, Lcom/typesafe/config/impl/ResolveSource;

    iget-object v2, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-virtual {v3, p1}, Lcom/typesafe/config/impl/ResolveSource$Node;->prepend(Ljava/lang/Object;)Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/ResolveSource$Node;)V

    return-object v1

    .line 127
    .end local v0    # "parentParent":Lcom/typesafe/config/impl/Container;
    :cond_6
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "can\'t push null parent"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method replaceCurrentParent(Lcom/typesafe/config/impl/Container;Lcom/typesafe/config/impl/Container;)Lcom/typesafe/config/impl/ResolveSource;
    .locals 5
    .param p1, "old"    # Lcom/typesafe/config/impl/Container;
    .param p2, "replacement"    # Lcom/typesafe/config/impl/Container;

    .line 203
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    const-string v1, " in "

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceCurrentParent old "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " replacement "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 206
    :cond_0
    if-ne p1, p2, :cond_1

    .line 207
    return-object p0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    const-string v2, " with "

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    move-object v3, p2

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-static {v0, p1, v3}, Lcom/typesafe/config/impl/ResolveSource;->replace(Lcom/typesafe/config/impl/ResolveSource$Node;Lcom/typesafe/config/impl/Container;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v0

    .line 210
    .local v0, "newPath":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<Lcom/typesafe/config/impl/Container;>;"
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replaced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 216
    :cond_2
    if-eqz v0, :cond_3

    .line 217
    new-instance v1, Lcom/typesafe/config/impl/ResolveSource;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveSource$Node;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/ResolveSource$Node;)V

    return-object v1

    .line 219
    :cond_3
    new-instance v1, Lcom/typesafe/config/impl/ResolveSource;

    invoke-static {}, Lcom/typesafe/config/impl/SimpleConfigObject;->empty()Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    return-object v1

    .line 221
    .end local v0    # "newPath":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<Lcom/typesafe/config/impl/Container;>;"
    :cond_4
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    if-ne p1, v0, :cond_5

    .line 222
    new-instance v0, Lcom/typesafe/config/impl/ResolveSource;

    invoke-direct {p0, p2}, Lcom/typesafe/config/impl/ResolveSource;->rootMustBeObj(Lcom/typesafe/config/impl/Container;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    return-object v0

    .line 224
    :cond_5
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to replace root "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method replaceWithinCurrentParent(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveSource;
    .locals 4
    .param p1, "old"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "replacement"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 232
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    const-string v1, " in "

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceWithinCurrentParent old "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " replacement "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 235
    :cond_0
    if-ne p1, p2, :cond_1

    .line 236
    return-object p0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveSource$Node;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/Container;

    .line 239
    .local v0, "parent":Lcom/typesafe/config/impl/Container;
    invoke-interface {v0, p1, p2}, Lcom/typesafe/config/impl/Container;->replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    .line 240
    .local v1, "newParent":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v2, v1, Lcom/typesafe/config/impl/Container;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/typesafe/config/impl/Container;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/typesafe/config/impl/ResolveSource;->replaceCurrentParent(Lcom/typesafe/config/impl/Container;Lcom/typesafe/config/impl/Container;)Lcom/typesafe/config/impl/ResolveSource;

    move-result-object v2

    return-object v2

    .line 242
    .end local v0    # "parent":Lcom/typesafe/config/impl/Container;
    .end local v1    # "newParent":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_3
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    if-ne p1, v0, :cond_4

    instance-of v0, p2, Lcom/typesafe/config/impl/Container;

    if-eqz v0, :cond_4

    .line 243
    new-instance v0, Lcom/typesafe/config/impl/ResolveSource;

    move-object v1, p2

    check-cast v1, Lcom/typesafe/config/impl/Container;

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ResolveSource;->rootMustBeObj(Lcom/typesafe/config/impl/Container;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    return-object v0

    .line 245
    :cond_4
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace in parent not possible "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resetParents()Lcom/typesafe/config/impl/ResolveSource;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    if-nez v0, :cond_0

    .line 163
    return-object p0

    .line 165
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/ResolveSource;

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResolveSource(root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveSource;->root:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pathFromRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveSource;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
