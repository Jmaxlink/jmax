.class final Lcom/typesafe/config/impl/ConfigReference;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "ConfigReference.java"

# interfaces
.implements Lcom/typesafe/config/impl/Unmergeable;


# instance fields
.field private final expr:Lcom/typesafe/config/impl/SubstitutionExpression;

.field private final prefixLength:I


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/SubstitutionExpression;)V
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "expr"    # Lcom/typesafe/config/impl/SubstitutionExpression;

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/typesafe/config/impl/ConfigReference;-><init>(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/SubstitutionExpression;I)V

    .line 26
    return-void
.end method

.method private constructor <init>(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/SubstitutionExpression;I)V
    .locals 0
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "expr"    # Lcom/typesafe/config/impl/SubstitutionExpression;
    .param p3, "prefixLength"    # I

    .line 29
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 30
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    .line 31
    iput p3, p0, Lcom/typesafe/config/impl/ConfigReference;->prefixLength:I

    .line 32
    return-void
.end method

.method private notResolved()Lcom/typesafe/config/ConfigException$NotResolved;
    .locals 3

    .line 35
    new-instance v0, Lcom/typesafe/config/ConfigException$NotResolved;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need to Config#resolve(), see the API docs for Config#resolve(); substitution not resolved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$NotResolved;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 135
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigReference;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 141
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigReference;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/ConfigReference;

    iget-object v2, v2, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v0, v2}, Lcom/typesafe/config/impl/SubstitutionExpression;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 144
    :cond_1
    return v1
.end method

.method expression()Lcom/typesafe/config/impl/SubstitutionExpression;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/SubstitutionExpression;->hashCode()I

    move-result v0

    return v0
.end method

.method protected ignoresFallbacks()Z
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigReference;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigReference;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigReference;
    .locals 3
    .param p1, "newOrigin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 52
    new-instance v0, Lcom/typesafe/config/impl/ConfigReference;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    iget v2, p0, Lcom/typesafe/config/impl/ConfigReference;->prefixLength:I

    invoke-direct {v0, p1, v1, v2}, Lcom/typesafe/config/impl/ConfigReference;-><init>(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/SubstitutionExpression;I)V

    return-object v0
.end method

.method bridge synthetic relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigReference;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ConfigReference;

    move-result-object p1

    return-object p1
.end method

.method relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ConfigReference;
    .locals 5
    .param p1, "prefix"    # Lcom/typesafe/config/impl/Path;

    .line 129
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/SubstitutionExpression;->path()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/typesafe/config/impl/Path;->prepend(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/typesafe/config/impl/SubstitutionExpression;->changePath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SubstitutionExpression;

    move-result-object v0

    .line 130
    .local v0, "newExpr":Lcom/typesafe/config/impl/SubstitutionExpression;
    new-instance v1, Lcom/typesafe/config/impl/ConfigReference;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigReference;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    iget v3, p0, Lcom/typesafe/config/impl/ConfigReference;->prefixLength:I

    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v0, v3}, Lcom/typesafe/config/impl/ConfigReference;-><init>(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/SubstitutionExpression;I)V

    return-object v1
.end method

.method protected render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 156
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/SubstitutionExpression;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    return-void
.end method

.method resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1

    .line 119
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    return-object v0
.end method

.method resolveSubstitutions(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 6
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p2, "source"    # Lcom/typesafe/config/impl/ResolveSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/ResolveContext;",
            "Lcom/typesafe/config/impl/ResolveSource;",
            ")",
            "Lcom/typesafe/config/impl/ResolveResult<",
            "+",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p1, p0}, Lcom/typesafe/config/impl/ResolveContext;->addCycleMarker(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v0

    .line 74
    .local v0, "newContext":Lcom/typesafe/config/impl/ResolveContext;
    :try_start_0
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    iget v2, p0, Lcom/typesafe/config/impl/ConfigReference;->prefixLength:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/typesafe/config/impl/ResolveSource;->lookupSubst(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/SubstitutionExpression;I)Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;

    move-result-object v1

    .line 75
    .local v1, "resultWithPath":Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;
    iget-object v2, v1, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v2, v2, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    move-object v0, v2

    .line 77
    iget-object v2, v1, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v2, v2, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    if-eqz v2, :cond_2

    .line 78
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recursively resolving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which was the resolution of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " against "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 82
    :cond_0
    new-instance v2, Lcom/typesafe/config/impl/ResolveSource;

    iget-object v3, v1, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    .line 83
    invoke-virtual {v3}, Lcom/typesafe/config/impl/ResolveSource$Node;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigObject;

    iget-object v4, v1, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-direct {v2, v3, v4}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/ResolveSource$Node;)V

    .line 85
    .local v2, "recursiveResolveSource":Lcom/typesafe/config/impl/ResolveSource;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "will recursively resolve against "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 88
    :cond_1
    iget-object v3, v1, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    iget-object v3, v3, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v0, v3, v2}, Lcom/typesafe/config/impl/ResolveContext;->resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v3

    .line 90
    .local v3, "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v4, v3, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 91
    .local v4, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    iget-object v5, v3, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    move-object v0, v5

    .line 92
    .end local v2    # "recursiveResolveSource":Lcom/typesafe/config/impl/ResolveSource;
    .end local v3    # "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    goto :goto_0

    .line 93
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_2
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->options()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/typesafe/config/ConfigResolveOptions;->getResolver()Lcom/typesafe/config/ConfigResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v3}, Lcom/typesafe/config/impl/SubstitutionExpression;->path()Lcom/typesafe/config/impl/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/typesafe/config/ConfigResolver;->lookup(Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;

    move-result-object v2

    .line 94
    .local v2, "fallback":Lcom/typesafe/config/ConfigValue;
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;
    :try_end_0
    .catch Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 105
    .end local v1    # "resultWithPath":Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;
    .end local v2    # "fallback":Lcom/typesafe/config/ConfigValue;
    .restart local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_0
    goto :goto_1

    .line 96
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not possible to resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cycle involved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 99
    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;->traceString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v2, v3}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v2}, Lcom/typesafe/config/impl/SubstitutionExpression;->optional()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    const/4 v4, 0x0

    .line 107
    .end local v1    # "e":Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
    .restart local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_1
    if-nez v4, :cond_5

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/SubstitutionExpression;->optional()Z

    move-result v1

    if-nez v1, :cond_5

    .line 108
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->options()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/ConfigResolveOptions;->getAllowUnresolved()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    invoke-virtual {v0, p0}, Lcom/typesafe/config/impl/ResolveContext;->removeCycleMarker(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v1

    return-object v1

    .line 111
    :cond_4
    new-instance v1, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigReference;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v3}, Lcom/typesafe/config/impl/SubstitutionExpression;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_5
    invoke-virtual {v0, p0}, Lcom/typesafe/config/impl/ResolveContext;->removeCycleMarker(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v1

    return-object v1

    .line 103
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    .restart local v1    # "e":Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
    :cond_6
    new-instance v2, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigReference;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/typesafe/config/impl/ConfigReference;->expr:Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was part of a cycle of substitutions involving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;->traceString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public unmergedValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/ConfigReference;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public unwrapped()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigReference;->notResolved()Lcom/typesafe/config/ConfigException$NotResolved;

    move-result-object v0

    throw v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigReference;->notResolved()Lcom/typesafe/config/ConfigException$NotResolved;

    move-result-object v0

    throw v0
.end method
