.class final Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
.super Lcom/typesafe/config/impl/AbstractConfigObject;
.source "ConfigDelayedMergeObject.java"

# interfaces
.implements Lcom/typesafe/config/impl/Unmergeable;
.implements Lcom/typesafe/config/impl/ReplaceableMergeStack;


# instance fields
.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V
    .locals 3
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p2, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 28
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    .line 30
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v0, :cond_2

    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 38
    .local v1, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v2, v1, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    if-nez v2, :cond_0

    .line 41
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 39
    .restart local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "placed nested DelayedMerge in a ConfigDelayedMergeObject, should have consolidated stack"

    invoke-direct {v0, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_1
    return-void

    .line 34
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "created a delayed merge object not guaranteed to be an object"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_3
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "creating empty delayed merge object"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static notResolved()Lcom/typesafe/config/ConfigException;
    .locals 2

    .line 196
    new-instance v0, Lcom/typesafe/config/ConfigException$NotResolved;

    const-string v1, "need to Config#resolve() before using this object, see the API docs for Config#resolve()"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$NotResolved;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected attemptPeekWithPartialResolve(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 260
    .local v1, "layer":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v2, v1, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v2, :cond_3

    .line 261
    move-object v2, v1

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 262
    .local v2, "objectLayer":Lcom/typesafe/config/impl/AbstractConfigObject;
    invoke-virtual {v2, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->attemptPeekWithPartialResolve(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v3

    .line 263
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {v3}, Lcom/typesafe/config/impl/AbstractConfigValue;->ignoresFallbacks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    return-object v3

    .line 276
    :cond_1
    instance-of v4, v1, Lcom/typesafe/config/impl/Unmergeable;

    if-nez v4, :cond_2

    goto :goto_0

    .line 281
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v4, "should not be reached: unmergeable object returned null value"

    invoke-direct {v0, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    .end local v2    # "objectLayer":Lcom/typesafe/config/impl/AbstractConfigObject;
    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_3
    instance-of v0, v1, Lcom/typesafe/config/impl/Unmergeable;

    if-nez v0, :cond_7

    .line 296
    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    sget-object v2, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    .line 301
    instance-of v0, v1, Lcom/typesafe/config/ConfigList;

    if-eqz v0, :cond_4

    .line 305
    return-object v3

    .line 302
    :cond_4
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting a list here, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_5
    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->ignoresFallbacks()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 316
    return-object v3

    .line 313
    :cond_6
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "resolved non-object should ignore fallbacks"

    invoke-direct {v0, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_7
    new-instance v0, Lcom/typesafe/config/ConfigException$NotResolved;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not available at \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' because value at \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has not been resolved and may turn out to contain or hide \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Be sure to Config#resolve() before using a config object."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/typesafe/config/ConfigException$NotResolved;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    .end local v1    # "layer":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_8
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Delayed merge stack does not contain any unmergeable values"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 164
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigValue;",
            ">;>;"
        }
    .end annotation

    .line 222
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 170
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    iget-object v2, v2, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    iget-object v2, v2, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 171
    :goto_0
    return v1

    .line 175
    :cond_2
    return v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 207
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public hasDescendant(Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 1
    .param p1, "descendant"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 81
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->hasDescendantInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected ignoresFallbacks()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stackIgnoresFallbacks(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 227
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public makeReplacement(Lcom/typesafe/config/impl/ResolveContext;I)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p2, "skipping"    # I

    .line 62
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->makeReplacement(Lcom/typesafe/config/impl/ResolveContext;Ljava/util/List;I)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic mergedWithNonObject(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->mergedWithNonObject(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method protected final mergedWithNonObject(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 1
    .param p1, "fallback"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 112
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->requireNotIgnoringFallbacks()V

    .line 114
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->mergedWithNonObject(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    return-object v0
.end method

.method protected bridge synthetic mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method protected final mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 1
    .param p1, "fallback"    # Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 107
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->mergedWithNonObject(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic mergedWithTheUnmergeable(Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->mergedWithTheUnmergeable(Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method protected final mergedWithTheUnmergeable(Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 1
    .param p1, "fallback"    # Lcom/typesafe/config/impl/Unmergeable;

    .line 100
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->requireNotIgnoringFallbacks()V

    .line 102
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->mergedWithTheUnmergeable(Ljava/util/Collection;Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    return-object v0
.end method

.method protected bridge synthetic newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 2
    .param p1, "status"    # Lcom/typesafe/config/impl/ResolveStatus;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 46
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 49
    new-instance v0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-direct {v0, p2, v1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "attempt to create resolved ConfigDelayedMergeObject"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 4
    .param p1, "prefix"    # Lcom/typesafe/config/impl/Path;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "newStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 88
    .local v2, "o":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v2, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v2    # "o":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v1
.end method

.method protected render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 192
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->render(Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V

    .line 193
    return-void
.end method

.method protected render(Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "atKey"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 187
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->render(Ljava/util/List;Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V

    .line 188
    return-void
.end method

.method public replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 3
    .param p1, "child"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "replacement"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 72
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->replaceChildInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "newStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    if-nez v0, :cond_0

    .line 74
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_0
    new-instance v1, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v1
.end method

.method resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1

    .line 67
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    return-object v0
.end method

.method resolveSubstitutions(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 2
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
            "Lcom/typesafe/config/impl/AbstractConfigObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    invoke-static {p0, v0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->resolveSubstitutions(Lcom/typesafe/config/impl/ReplaceableMergeStack;Ljava/util/List;Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    .line 57
    .local v0, "merged":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveResult;->asObjectResult()Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 237
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public unmergedValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->stack:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->unwrapped()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public unwrapped()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/ConfigValue;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigMergeable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 1
    .param p1, "mergeable"    # Lcom/typesafe/config/ConfigMergeable;

    .line 119
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    return-object v0
.end method

.method public bridge synthetic withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method withOnlyPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 139
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method protected withOnlyPathOrNull(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 134
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic withValue(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withValue(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method withValue(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 1
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;
    .param p2, "value"    # Lcom/typesafe/config/ConfigValue;

    .line 154
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/typesafe/config/ConfigValue;

    .line 149
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic withoutKey(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    move-result-object p1

    return-object p1
.end method

.method public withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigDelayedMergeObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method

.method withoutPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 144
    invoke-static {}, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;->notResolved()Lcom/typesafe/config/ConfigException;

    move-result-object v0

    throw v0
.end method
