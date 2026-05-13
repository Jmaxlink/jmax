.class abstract Lcom/typesafe/config/impl/AbstractConfigValue;
.super Ljava/lang/Object;
.source "AbstractConfigValue.java"

# interfaces
.implements Lcom/typesafe/config/ConfigValue;
.implements Lcom/typesafe/config/impl/MergeableValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;,
        Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;,
        Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
    }
.end annotation


# instance fields
.field private final origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;)V
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iput-object v0, p0, Lcom/typesafe/config/impl/AbstractConfigValue;->origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

    .line 32
    return-void
.end method

.method private final delayMerge(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p2, "fallback"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ")",
            "Lcom/typesafe/config/impl/AbstractConfigValue;"
        }
    .end annotation

    .line 210
    .local p1, "stack":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "newStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->mergeOrigins(Ljava/util/Collection;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->constructDelayedMerge(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1
.end method

.method protected static hasDescendantInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 4
    .param p1, "descendant"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ")Z"
        }
    .end annotation

    .line 104
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 105
    .local v1, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-ne v1, p1, :cond_0

    .line 106
    return v2

    .line 107
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 110
    .restart local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v3, v1, Lcom/typesafe/config/impl/Container;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/typesafe/config/impl/Container;

    invoke-interface {v3, p1}, Lcom/typesafe/config/impl/Container;->hasDescendant(Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    return v2

    .line 112
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_2
    goto :goto_1

    .line 113
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected static indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # I
    .param p2, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 322
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    move v0, p1

    .line 324
    .local v0, "remaining":I
    :goto_0
    if-lez v0, :cond_0

    .line 325
    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 329
    .end local v0    # "remaining":I
    :cond_0
    return-void
.end method

.method protected static replaceChildInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Ljava/util/List;
    .locals 4
    .param p1, "child"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "replacement"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ")",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation

    .line 86
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    const/4 v0, 0x0

    .line 87
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .local v1, "newStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    if-eqz p2, :cond_1

    .line 93
    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const/4 v2, 0x0

    return-object v2

    .line 100
    :cond_2
    return-object v1

    .line 90
    .end local v1    # "newStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_3
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tried to replace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which is not in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic atKey(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->atKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method atKey(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "key"    # Ljava/lang/String;

    .line 386
    invoke-static {p2, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 387
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-direct {v1, p1, v0}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/typesafe/config/impl/SimpleConfigObject;->toConfig()Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v1

    return-object v1
.end method

.method public atKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atKey("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->atKey(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atPath(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->atPath(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method atPath(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 3
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "path"    # Lcom/typesafe/config/impl/Path;

    .line 396
    invoke-virtual {p2}, Lcom/typesafe/config/impl/Path;->parent()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 397
    .local v0, "parent":Lcom/typesafe/config/impl/Path;
    invoke-virtual {p2}, Lcom/typesafe/config/impl/Path;->last()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->atKey(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v1

    .line 398
    .local v1, "result":Lcom/typesafe/config/impl/SimpleConfig;
    :goto_0
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->last()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, p1, v2}, Lcom/typesafe/config/impl/SimpleConfig;->atKey(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v1

    .line 401
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->parent()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 402
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 403
    :cond_0
    return-object v1
.end method

.method public atPath(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 2
    .param p1, "pathExpression"    # Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atPath("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    .line 409
    .local v0, "origin":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    invoke-static {p1}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->atPath(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v1

    return-object v1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 287
    instance-of v0, p1, Lcom/typesafe/config/ConfigValue;

    return v0
.end method

.method protected constructDelayedMerge(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)",
            "Lcom/typesafe/config/impl/AbstractConfigValue;"
        }
    .end annotation

    .line 189
    .local p2, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v0, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    invoke-direct {v0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMerge;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 293
    instance-of v0, p1, Lcom/typesafe/config/ConfigValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/ConfigValue;

    .line 296
    invoke-interface {v2}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/ConfigValue;

    .line 298
    invoke-interface {v2}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v2

    .line 297
    invoke-static {v0, v2}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 294
    :goto_0
    return v1

    .line 300
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v0

    .line 308
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 309
    const/4 v1, 0x0

    return v1

    .line 311
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1
.end method

.method protected ignoresFallbacks()Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected mergedWithNonObject(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "fallback"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 255
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->requireNotIgnoringFallbacks()V

    .line 257
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->mergedWithNonObject(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method protected final mergedWithNonObject(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p2, "fallback"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ")",
            "Lcom/typesafe/config/impl/AbstractConfigValue;"
        }
    .end annotation

    .line 228
    .local p1, "stack":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->requireNotIgnoringFallbacks()V

    .line 230
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallbacksIgnored()Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0

    .line 238
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/typesafe/config/impl/AbstractConfigValue;->delayMerge(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method protected mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "fallback"    # Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 249
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->requireNotIgnoringFallbacks()V

    .line 251
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->mergedWithObject(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method protected final mergedWithObject(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p2, "fallback"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/AbstractConfigObject;",
            ")",
            "Lcom/typesafe/config/impl/AbstractConfigValue;"
        }
    .end annotation

    .line 218
    .local p1, "stack":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->requireNotIgnoringFallbacks()V

    .line 220
    instance-of v0, p0, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/AbstractConfigValue;->mergedWithNonObject(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Objects must reimplement mergedWithObject"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected mergedWithTheUnmergeable(Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "fallback"    # Lcom/typesafe/config/impl/Unmergeable;

    .line 243
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->requireNotIgnoringFallbacks()V

    .line 245
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->mergedWithTheUnmergeable(Ljava/util/Collection;Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method protected final mergedWithTheUnmergeable(Ljava/util/Collection;Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p2, "fallback"    # Lcom/typesafe/config/impl/Unmergeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/Unmergeable;",
            ")",
            "Lcom/typesafe/config/impl/AbstractConfigValue;"
        }
    .end annotation

    .line 194
    .local p1, "stack":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->requireNotIgnoringFallbacks()V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "newStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-interface {p2}, Lcom/typesafe/config/impl/Unmergeable;->unmergedValues()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-static {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->mergeOrigins(Ljava/util/Collection;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->constructDelayedMerge(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1
.end method

.method protected abstract newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
.end method

.method public bridge synthetic origin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method public origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/typesafe/config/impl/AbstractConfigValue;->origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

    return-object v0
.end method

.method relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0
    .param p1, "prefix"    # Lcom/typesafe/config/impl/Path;

    .line 129
    return-object p0
.end method

.method public final render()Ljava/lang/String;
    .locals 1

    .line 366
    invoke-static {}, Lcom/typesafe/config/ConfigRenderOptions;->defaults()Lcom/typesafe/config/ConfigRenderOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->render(Lcom/typesafe/config/ConfigRenderOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final render(Lcom/typesafe/config/ConfigRenderOptions;)Ljava/lang/String;
    .locals 6
    .param p1, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/typesafe/config/impl/AbstractConfigValue;->render(Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V

    .line 373
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 360
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v0

    .line 361
    .local v0, "u":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    return-void
.end method

.method protected render(Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "atKey"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 332
    if-eqz p4, :cond_4

    .line 334
    invoke-virtual {p5}, Lcom/typesafe/config/ConfigRenderOptions;->getJson()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {p4}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "renderedKey":Ljava/lang/String;
    goto :goto_0

    .line 337
    .end local v0    # "renderedKey":Ljava/lang/String;
    :cond_0
    invoke-static {p4}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderStringUnquotedIfPossible(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .restart local v0    # "renderedKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p5}, Lcom/typesafe/config/ConfigRenderOptions;->getJson()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {p5}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const-string v1, " : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :cond_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 348
    :cond_2
    instance-of v1, p0, Lcom/typesafe/config/ConfigObject;

    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {p5}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 352
    :cond_3
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .end local v0    # "renderedKey":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/typesafe/config/impl/AbstractConfigValue;->render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V

    .line 357
    return-void
.end method

.method protected final requireNotIgnoringFallbacks()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->ignoresFallbacks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method should not have been called with ignoresFallbacks=true "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1

    .line 81
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    return-object v0
.end method

.method resolveSubstitutions(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation

    .line 77
    invoke-static {p1, p0}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toFallbackValue()Lcom/typesafe/config/ConfigValue;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->toFallbackValue()Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public toFallbackValue()Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 156
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-static {}, Lcom/typesafe/config/ConfigRenderOptions;->concise()Lcom/typesafe/config/ConfigRenderOptions;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/typesafe/config/impl/AbstractConfigValue;->render(Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transformToString()Ljava/lang/String;
    .locals 1

    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigMergeable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p1, "mergeable"    # Lcom/typesafe/config/ConfigMergeable;

    .line 271
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->ignoresFallbacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    return-object p0

    .line 274
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/MergeableValue;

    invoke-interface {v0}, Lcom/typesafe/config/impl/MergeableValue;->toFallbackValue()Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    .line 276
    .local v0, "other":Lcom/typesafe/config/ConfigValue;
    instance-of v1, v0, Lcom/typesafe/config/impl/Unmergeable;

    if-eqz v1, :cond_1

    .line 277
    move-object v1, v0

    check-cast v1, Lcom/typesafe/config/impl/Unmergeable;

    invoke-virtual {p0, v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->mergedWithTheUnmergeable(Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1

    .line 278
    :cond_1
    instance-of v1, v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v1, :cond_2

    .line 279
    move-object v1, v0

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {p0, v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1

    .line 281
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {p0, v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->mergedWithNonObject(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1
.end method

.method protected withFallbacksIgnored()Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->ignoresFallbacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    return-object p0

    .line 174
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value class doesn\'t implement forced fallback-ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 262
    iget-object v0, p0, Lcom/typesafe/config/impl/AbstractConfigValue;->origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

    if-ne v0, p1, :cond_0

    .line 263
    return-object p0

    .line 265
    :cond_0
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method
