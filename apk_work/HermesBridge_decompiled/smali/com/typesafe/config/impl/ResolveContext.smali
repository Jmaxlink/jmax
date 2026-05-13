.class final Lcom/typesafe/config/impl/ResolveContext;
.super Ljava/lang/Object;
.source "ResolveContext.java"


# instance fields
.field private final cycleMarkers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation
.end field

.field private final memos:Lcom/typesafe/config/impl/ResolveMemos;

.field private final options:Lcom/typesafe/config/ConfigResolveOptions;

.field private final resolveStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictToChild:Lcom/typesafe/config/impl/Path;


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;)V
    .locals 6
    .param p1, "options"    # Lcom/typesafe/config/ConfigResolveOptions;
    .param p2, "restrictToChild"    # Lcom/typesafe/config/impl/Path;

    .line 50
    new-instance v1, Lcom/typesafe/config/impl/ResolveMemos;

    invoke-direct {v1}, Lcom/typesafe/config/impl/ResolveMemos;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/typesafe/config/impl/ResolveContext;->newCycleMarkers()Ljava/util/Set;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/typesafe/config/impl/ResolveContext;-><init>(Lcom/typesafe/config/impl/ResolveMemos;Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;Ljava/util/List;Ljava/util/Set;)V

    .line 51
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResolveContext restrict to child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/impl/ResolveMemos;Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .param p1, "memos"    # Lcom/typesafe/config/impl/ResolveMemos;
    .param p2, "options"    # Lcom/typesafe/config/ConfigResolveOptions;
    .param p3, "restrictToChild"    # Lcom/typesafe/config/impl/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/ResolveMemos;",
            "Lcom/typesafe/config/ConfigResolveOptions;",
            "Lcom/typesafe/config/impl/Path;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p4, "resolveStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .local p5, "cycleMarkers":Ljava/util/Set;, "Ljava/util/Set<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/typesafe/config/impl/ResolveContext;->memos:Lcom/typesafe/config/impl/ResolveMemos;

    .line 33
    iput-object p2, p0, Lcom/typesafe/config/impl/ResolveContext;->options:Lcom/typesafe/config/ConfigResolveOptions;

    .line 34
    iput-object p3, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    .line 39
    iput-object p4, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    .line 40
    iput-object p5, p0, Lcom/typesafe/config/impl/ResolveContext;->cycleMarkers:Ljava/util/Set;

    .line 41
    return-void
.end method

.method private memoize(Lcom/typesafe/config/impl/MemoKey;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;
    .locals 8
    .param p1, "key"    # Lcom/typesafe/config/impl/MemoKey;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 77
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveContext;->memos:Lcom/typesafe/config/impl/ResolveMemos;

    invoke-virtual {v0, p1, p2}, Lcom/typesafe/config/impl/ResolveMemos;->put(Lcom/typesafe/config/impl/MemoKey;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveMemos;

    move-result-object v0

    .line 78
    .local v0, "changed":Lcom/typesafe/config/impl/ResolveMemos;
    new-instance v7, Lcom/typesafe/config/impl/ResolveContext;

    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveContext;->options:Lcom/typesafe/config/ConfigResolveOptions;

    iget-object v4, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    iget-object v5, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    iget-object v6, p0, Lcom/typesafe/config/impl/ResolveContext;->cycleMarkers:Ljava/util/Set;

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/ResolveContext;-><init>(Lcom/typesafe/config/impl/ResolveMemos;Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;Ljava/util/List;Ljava/util/Set;)V

    return-object v7
.end method

.method private static newCycleMarkers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private pushTrace(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;
    .locals 8
    .param p1, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 120
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushing trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/typesafe/config/impl/ResolveContext;

    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveContext;->memos:Lcom/typesafe/config/impl/ResolveMemos;

    iget-object v4, p0, Lcom/typesafe/config/impl/ResolveContext;->options:Lcom/typesafe/config/ConfigResolveOptions;

    iget-object v5, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    iget-object v7, p0, Lcom/typesafe/config/impl/ResolveContext;->cycleMarkers:Ljava/util/Set;

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/typesafe/config/impl/ResolveContext;-><init>(Lcom/typesafe/config/impl/ResolveMemos;Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;Ljava/util/List;Ljava/util/Set;)V

    return-object v1
.end method

.method private realResolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 10
    .param p1, "original"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "source"    # Lcom/typesafe/config/impl/ResolveSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
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

    .line 153
    new-instance v0, Lcom/typesafe/config/impl/MemoKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/MemoKey;-><init>(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V

    .line 154
    .local v0, "fullKey":Lcom/typesafe/config/impl/MemoKey;
    const/4 v1, 0x0

    .line 156
    .local v1, "restrictedKey":Lcom/typesafe/config/impl/MemoKey;
    iget-object v2, p0, Lcom/typesafe/config/impl/ResolveContext;->memos:Lcom/typesafe/config/impl/ResolveMemos;

    invoke-virtual {v2, v0}, Lcom/typesafe/config/impl/ResolveMemos;->get(Lcom/typesafe/config/impl/MemoKey;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    .line 161
    .local v2, "cached":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->isRestrictedToChild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    new-instance v3, Lcom/typesafe/config/impl/MemoKey;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild()Lcom/typesafe/config/impl/Path;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/typesafe/config/impl/MemoKey;-><init>(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V

    move-object v1, v3

    .line 163
    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveContext;->memos:Lcom/typesafe/config/impl/ResolveMemos;

    invoke-virtual {v3, v1}, Lcom/typesafe/config/impl/ResolveMemos;->get(Lcom/typesafe/config/impl/MemoKey;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    .line 166
    :cond_0
    if-eqz v2, :cond_2

    .line 167
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "using cached resolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " restrictToChild "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild()Lcom/typesafe/config/impl/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-static {v3, v4}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 170
    :cond_1
    invoke-static {p0, v2}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v3

    return-object v3

    .line 172
    :cond_2
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v3

    const-string v4, "@"

    if-eqz v3, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not found in cache, resolving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 174
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-static {v3, v5}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveContext;->cycleMarkers:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 177
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cycle detected, can\'t resolve; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 179
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v3, v4}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 180
    :cond_4
    new-instance v3, Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;

    invoke-direct {v3, p0}, Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;-><init>(Lcom/typesafe/config/impl/ResolveContext;)V

    throw v3

    .line 183
    :cond_5
    invoke-virtual {p1, p0, p2}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveSubstitutions(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v3

    .line 184
    .local v3, "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v5, v3, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 186
    .local v5, "resolved":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 187
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolved to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 188
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v6, v4}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 190
    :cond_6
    iget-object v4, v3, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    .line 192
    .local v4, "withMemo":Lcom/typesafe/config/impl/ResolveContext;
    const-string v6, " result "

    const-string v7, "caching "

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v8

    sget-object v9, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v8, v9, :cond_7

    goto/16 :goto_0

    .line 205
    :cond_7
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->isRestrictedToChild()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 206
    if-eqz v1, :cond_9

    .line 210
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 211
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 213
    :cond_8
    invoke-direct {v4, v1, v5}, Lcom/typesafe/config/impl/ResolveContext;->memoize(Lcom/typesafe/config/impl/MemoKey;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v4

    goto :goto_1

    .line 207
    :cond_9
    new-instance v6, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v7, "restrictedKey should not be null here"

    invoke-direct {v6, v7}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    :cond_a
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->options()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/typesafe/config/ConfigResolveOptions;->getAllowUnresolved()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 215
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 216
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 218
    :cond_b
    invoke-direct {v4, v0, v5}, Lcom/typesafe/config/impl/ResolveContext;->memoize(Lcom/typesafe/config/impl/MemoKey;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v4

    goto :goto_1

    .line 220
    :cond_c
    new-instance v6, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v7, "resolveSubstitutions() did not give us a resolved object"

    invoke-direct {v6, v7}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v6

    .line 197
    :cond_d
    :goto_0
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 198
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 200
    :cond_e
    invoke-direct {v4, v0, v5}, Lcom/typesafe/config/impl/ResolveContext;->memoize(Lcom/typesafe/config/impl/MemoKey;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v4

    .line 225
    :goto_1
    invoke-static {v4, v5}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v6

    return-object v6
.end method

.method static resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 5
    .param p0, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p1, "root"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .param p2, "options"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 231
    new-instance v0, Lcom/typesafe/config/impl/ResolveSource;

    invoke-direct {v0, p1}, Lcom/typesafe/config/impl/ResolveSource;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    .line 232
    .local v0, "source":Lcom/typesafe/config/impl/ResolveSource;
    new-instance v1, Lcom/typesafe/config/impl/ResolveContext;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/typesafe/config/impl/ResolveContext;-><init>(Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;)V

    .line 235
    .local v1, "context":Lcom/typesafe/config/impl/ResolveContext;
    :try_start_0
    invoke-virtual {v1, p0, v0}, Lcom/typesafe/config/impl/ResolveContext;->resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v2

    iget-object v2, v2, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;
    :try_end_0
    .catch Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 236
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
    new-instance v3, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v4, "NotPossibleToResolve was thrown from an outermost resolve"

    invoke-direct {v3, v4, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method addCycleMarker(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;
    .locals 8
    .param p1, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 56
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++ Cycle marker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveContext;->cycleMarkers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/typesafe/config/impl/ResolveContext;->newCycleMarkers()Ljava/util/Set;

    move-result-object v0

    .line 61
    .local v0, "copy":Ljava/util/Set;, "Ljava/util/Set<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveContext;->cycleMarkers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v7, Lcom/typesafe/config/impl/ResolveContext;

    iget-object v2, p0, Lcom/typesafe/config/impl/ResolveContext;->memos:Lcom/typesafe/config/impl/ResolveMemos;

    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveContext;->options:Lcom/typesafe/config/ConfigResolveOptions;

    iget-object v4, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    iget-object v5, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    move-object v1, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/ResolveContext;-><init>(Lcom/typesafe/config/impl/ResolveMemos;Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;Ljava/util/List;Ljava/util/Set;)V

    return-object v7

    .line 59
    .end local v0    # "copy":Ljava/util/Set;, "Ljava/util/Set<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_1
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added cycle marker twice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method depth()I
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 137
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "resolve getting too deep"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isRestrictedToChild()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method options()Lcom/typesafe/config/ConfigResolveOptions;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveContext;->options:Lcom/typesafe/config/ConfigResolveOptions;

    return-object v0
.end method

.method popTrace()Lcom/typesafe/config/impl/ResolveContext;
    .locals 9

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 130
    .local v1, "old":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "popped trace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 132
    :cond_0
    new-instance v8, Lcom/typesafe/config/impl/ResolveContext;

    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveContext;->memos:Lcom/typesafe/config/impl/ResolveMemos;

    iget-object v4, p0, Lcom/typesafe/config/impl/ResolveContext;->options:Lcom/typesafe/config/ConfigResolveOptions;

    iget-object v5, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    iget-object v7, p0, Lcom/typesafe/config/impl/ResolveContext;->cycleMarkers:Ljava/util/Set;

    move-object v2, v8

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/typesafe/config/impl/ResolveContext;-><init>(Lcom/typesafe/config/impl/ResolveMemos;Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;Ljava/util/List;Ljava/util/Set;)V

    return-object v8
.end method

.method removeCycleMarker(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;
    .locals 8
    .param p1, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 67
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- Cycle marker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {}, Lcom/typesafe/config/impl/ResolveContext;->newCycleMarkers()Ljava/util/Set;

    move-result-object v0

    .line 71
    .local v0, "copy":Ljava/util/Set;, "Ljava/util/Set<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveContext;->cycleMarkers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/typesafe/config/impl/ResolveContext;

    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveContext;->memos:Lcom/typesafe/config/impl/ResolveMemos;

    iget-object v4, p0, Lcom/typesafe/config/impl/ResolveContext;->options:Lcom/typesafe/config/ConfigResolveOptions;

    iget-object v5, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    iget-object v6, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    move-object v2, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/typesafe/config/impl/ResolveContext;-><init>(Lcom/typesafe/config/impl/ResolveMemos;Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;Ljava/util/List;Ljava/util/Set;)V

    return-object v1
.end method

.method resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 3
    .param p1, "original"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "source"    # Lcom/typesafe/config/impl/ResolveSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
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

    .line 143
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    nop

    .line 145
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " restrictToChild="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ResolveContext;->pushTrace(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/typesafe/config/impl/ResolveContext;->realResolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveResult;->popTrace()Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    return-object v0
.end method

.method restrict(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveContext;
    .locals 7
    .param p1, "restrictTo"    # Lcom/typesafe/config/impl/Path;

    .line 95
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    if-ne p1, v0, :cond_0

    .line 96
    return-object p0

    .line 98
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/ResolveContext;

    iget-object v2, p0, Lcom/typesafe/config/impl/ResolveContext;->memos:Lcom/typesafe/config/impl/ResolveMemos;

    iget-object v3, p0, Lcom/typesafe/config/impl/ResolveContext;->options:Lcom/typesafe/config/ConfigResolveOptions;

    iget-object v5, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    iget-object v6, p0, Lcom/typesafe/config/impl/ResolveContext;->cycleMarkers:Ljava/util/Set;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/ResolveContext;-><init>(Lcom/typesafe/config/impl/ResolveMemos;Lcom/typesafe/config/ConfigResolveOptions;Lcom/typesafe/config/impl/Path;Ljava/util/List;Ljava/util/Set;)V

    return-object v0
.end method

.method restrictToChild()Lcom/typesafe/config/impl/Path;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild:Lcom/typesafe/config/impl/Path;

    return-object v0
.end method

.method traceString()Ljava/lang/String;
    .locals 5

    .line 106
    const-string v0, ", "

    .line 107
    .local v0, "separator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/typesafe/config/impl/ResolveContext;->resolveStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 109
    .local v3, "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v4, v3, Lcom/typesafe/config/impl/ConfigReference;

    if-eqz v4, :cond_0

    .line 110
    move-object v4, v3

    check-cast v4, Lcom/typesafe/config/impl/ConfigReference;

    invoke-virtual {v4}, Lcom/typesafe/config/impl/ConfigReference;->expression()Lcom/typesafe/config/impl/SubstitutionExpression;

    move-result-object v4

    invoke-virtual {v4}, Lcom/typesafe/config/impl/SubstitutionExpression;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .end local v3    # "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 116
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method unrestricted()Lcom/typesafe/config/impl/ResolveContext;
    .locals 1

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/ResolveContext;->restrict(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v0

    return-object v0
.end method
