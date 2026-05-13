.class abstract Lcom/typesafe/config/impl/AbstractConfigObject;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "AbstractConfigObject.java"

# interfaces
.implements Lcom/typesafe/config/ConfigObject;
.implements Lcom/typesafe/config/impl/Container;


# instance fields
.field private final config:Lcom/typesafe/config/impl/SimpleConfig;


# direct methods
.method protected constructor <init>(Lcom/typesafe/config/ConfigOrigin;)V
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 24
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 25
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SimpleConfig;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    iput-object v0, p0, Lcom/typesafe/config/impl/AbstractConfigObject;->config:Lcom/typesafe/config/impl/SimpleConfig;

    .line 26
    return-void
.end method

.method static mergeOrigins(Ljava/util/Collection;)Lcom/typesafe/config/ConfigOrigin;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)",
            "Lcom/typesafe/config/ConfigOrigin;"
        }
    .end annotation

    .line 144
    .local p0, "stack":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "origins":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigOrigin;>;"
    const/4 v1, 0x0

    .line 149
    .local v1, "firstOrigin":Lcom/typesafe/config/ConfigOrigin;
    const/4 v2, 0x0

    .line 150
    .local v2, "numMerged":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 151
    .local v4, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    .line 154
    :cond_0
    instance-of v5, v4, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 155
    invoke-virtual {v5}, Lcom/typesafe/config/impl/AbstractConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v5

    sget-object v6, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v5, v6, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/typesafe/config/ConfigObject;

    .line 156
    invoke-interface {v5}, Lcom/typesafe/config/ConfigObject;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 164
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_1
    goto :goto_0

    .line 166
    :cond_2
    if-nez v2, :cond_3

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_3
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeOrigins(Ljava/util/Collection;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v3

    return-object v3

    .line 145
    .end local v0    # "origins":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigOrigin;>;"
    .end local v1    # "firstOrigin":Lcom/typesafe/config/ConfigOrigin;
    .end local v2    # "numMerged":I
    :cond_4
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "can\'t merge origins on empty list"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static varargs mergeOrigins([Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "stack"    # [Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 175
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->mergeOrigins(Ljava/util/Collection;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method private static peekPath(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 3
    .param p0, "self"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 100
    .local v0, "next":Lcom/typesafe/config/impl/Path;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/typesafe/config/impl/AbstractConfigObject;->attemptPeekWithPartialResolve(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    .line 102
    .local v1, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-nez v0, :cond_0

    .line 103
    return-object v1

    .line 105
    :cond_0
    instance-of v2, v1, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v2, :cond_1

    .line 106
    move-object v2, v1

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-static {v2, v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->peekPath(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2
    :try_end_0
    .catch Lcom/typesafe/config/ConfigException$NotResolved; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 108
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 111
    .end local v0    # "next":Lcom/typesafe/config/impl/Path;
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lcom/typesafe/config/ConfigException$NotResolved;
    invoke-static {p1, v0}, Lcom/typesafe/config/impl/ConfigImpl;->improveNotResolved(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigException$NotResolved;)Lcom/typesafe/config/ConfigException$NotResolved;

    move-result-object v1

    throw v1
.end method

.method private static weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigObject is immutable, you can\'t call Map."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract attemptPeekWithPartialResolve(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigValue;
.end method

.method public clear()V
    .locals 1

    .line 199
    const-string v0, "clear"

    invoke-static {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method protected constructDelayedMerge(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)",
            "Lcom/typesafe/config/impl/AbstractConfigObject;"
        }
    .end annotation

    .line 131
    .local p2, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    invoke-direct {v0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic constructDelayedMerge(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/AbstractConfigObject;->constructDelayedMerge(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public abstract get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method protected abstract mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method

.method protected bridge synthetic mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 125
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method

.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method protected final peekAssumingResolved(Ljava/lang/String;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "originalPath"    # Lcom/typesafe/config/impl/Path;

    .line 66
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->attemptPeekWithPartialResolve(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0
    :try_end_0
    .catch Lcom/typesafe/config/ConfigException$NotResolved; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lcom/typesafe/config/ConfigException$NotResolved;
    invoke-static {p2, v0}, Lcom/typesafe/config/impl/ConfigImpl;->improveNotResolved(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigException$NotResolved;)Lcom/typesafe/config/ConfigException$NotResolved;

    move-result-object v1

    throw v1
.end method

.method protected peekPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 92
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->peekPath(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/ConfigValue;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lcom/typesafe/config/ConfigValue;

    .line 204
    const-string v0, "put"

    invoke-static {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/typesafe/config/ConfigValue;

    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/AbstractConfigObject;->put(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/ConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Lcom/typesafe/config/ConfigValue;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "arg0":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Lcom/typesafe/config/ConfigValue;>;"
    const-string v0, "putAll"

    invoke-static {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method abstract relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method

.method bridge synthetic relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lcom/typesafe/config/ConfigValue;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .line 214
    const-string v0, "remove"

    invoke-static {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->remove(Ljava/lang/Object;)Lcom/typesafe/config/ConfigValue;

    move-result-object p1

    return-object p1
.end method

.method protected abstract render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
.end method

.method abstract resolveSubstitutions(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/ResolveContext;",
            "Lcom/typesafe/config/impl/ResolveSource;",
            ")",
            "Lcom/typesafe/config/impl/ResolveResult<",
            "+",
            "Lcom/typesafe/config/impl/AbstractConfigObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation
.end method

.method public bridge synthetic toConfig()Lcom/typesafe/config/Config;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigObject;->toConfig()Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public toConfig()Lcom/typesafe/config/impl/SimpleConfig;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/typesafe/config/impl/AbstractConfigObject;->config:Lcom/typesafe/config/impl/SimpleConfig;

    return-object v0
.end method

.method public bridge synthetic toFallbackValue()Lcom/typesafe/config/ConfigValue;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigObject;->toFallbackValue()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public toFallbackValue()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 35
    return-object p0
.end method

.method public bridge synthetic toFallbackValue()Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigObject;->toFallbackValue()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 118
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigMergeable;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p1, "mergeable"    # Lcom/typesafe/config/ConfigMergeable;

    .line 139
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    return-object v0
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public abstract withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method

.method abstract withOnlyPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method

.method protected abstract withOnlyPathOrNull(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method

.method public bridge synthetic withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 219
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    return-object v0
.end method

.method public bridge synthetic withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/AbstractConfigObject;->withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method abstract withValue(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method

.method public abstract withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method

.method public bridge synthetic withoutKey(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public abstract withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method

.method abstract withoutPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
.end method
