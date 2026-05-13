.class final Lcom/typesafe/config/impl/ConfigConcatenation;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "ConfigConcatenation.java"

# interfaces
.implements Lcom/typesafe/config/impl/Unmergeable;
.implements Lcom/typesafe/config/impl/Container;


# instance fields
.field private final pieces:Ljava/util/List;
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
    .locals 5
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

    .line 30
    .local p2, "pieces":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 31
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "hadUnmergeable":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 39
    .local v2, "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigConcatenation;

    if-nez v3, :cond_1

    .line 42
    instance-of v3, v2, Lcom/typesafe/config/impl/Unmergeable;

    if-eqz v3, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 44
    .end local v2    # "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    goto :goto_0

    .line 40
    .restart local v2    # "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_1
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConfigConcatenation should never be nested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v2    # "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_2
    if-eqz v0, :cond_3

    .line 48
    return-void

    .line 46
    :cond_3
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created concatenation without an unmergeable in it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    .end local v0    # "hadUnmergeable":Z
    :cond_4
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created concatenation with less than 2 items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static concatenate(Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)",
            "Lcom/typesafe/config/impl/AbstractConfigValue;"
        }
    .end annotation

    .line 169
    .local p0, "pieces":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigConcatenation;->consolidate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "consolidated":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x0

    return-object v1

    .line 172
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 173
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v1

    .line 175
    :cond_1
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeOrigins(Ljava/util/List;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    .line 176
    .local v1, "mergedOrigin":Lcom/typesafe/config/ConfigOrigin;
    new-instance v2, Lcom/typesafe/config/impl/ConfigConcatenation;

    invoke-direct {v2, v1, v0}, Lcom/typesafe/config/impl/ConfigConcatenation;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v2
.end method

.method static consolidate(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation

    .line 143
    .local p0, "pieces":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 144
    return-object p0

    .line 146
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v0, "flattened":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 148
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v3, v2, Lcom/typesafe/config/impl/ConfigConcatenation;

    if-eqz v3, :cond_1

    .line 149
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/ConfigConcatenation;

    iget-object v3, v3, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 151
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v2    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_1
    goto :goto_0

    .line 155
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v1, "consolidated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 158
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 161
    :cond_3
    invoke-static {v1, v3}, Lcom/typesafe/config/impl/ConfigConcatenation;->join(Ljava/util/ArrayList;Lcom/typesafe/config/impl/AbstractConfigValue;)V

    .line 162
    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_3
    goto :goto_2

    .line 164
    :cond_4
    return-object v1
.end method

.method private static isIgnoredWhitespace(Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 1
    .param p0, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 85
    instance-of v0, p0, Lcom/typesafe/config/impl/ConfigString;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/ConfigString;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ConfigString;->wasQuoted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static join(Ljava/util/ArrayList;Lcom/typesafe/config/impl/AbstractConfigValue;)V
    .locals 9
    .param p1, "origRight"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ")V"
        }
    .end annotation

    .line 92
    .local p0, "builder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 93
    .local v0, "left":Lcom/typesafe/config/impl/AbstractConfigValue;
    move-object v1, p1

    .line 97
    .local v1, "right":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v2, v0, Lcom/typesafe/config/ConfigObject;

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/typesafe/config/impl/SimpleConfigList;

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    invoke-static {v0, v2}, Lcom/typesafe/config/impl/DefaultTransformer;->transform(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    instance-of v2, v0, Lcom/typesafe/config/impl/SimpleConfigList;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/typesafe/config/ConfigObject;

    if-eqz v2, :cond_1

    .line 100
    sget-object v2, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/DefaultTransformer;->transform(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    .line 106
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 107
    .local v2, "joined":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v3, v0, Lcom/typesafe/config/ConfigObject;

    if-eqz v3, :cond_2

    instance-of v3, v1, Lcom/typesafe/config/ConfigObject;

    if-eqz v3, :cond_2

    .line 108
    invoke-virtual {v1, v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    goto/16 :goto_1

    .line 109
    :cond_2
    instance-of v3, v0, Lcom/typesafe/config/impl/SimpleConfigList;

    if-eqz v3, :cond_3

    instance-of v3, v1, Lcom/typesafe/config/impl/SimpleConfigList;

    if-eqz v3, :cond_3

    .line 110
    move-object v3, v0

    check-cast v3, Lcom/typesafe/config/impl/SimpleConfigList;

    move-object v4, v1

    check-cast v4, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-virtual {v3, v4}, Lcom/typesafe/config/impl/SimpleConfigList;->concatenate(Lcom/typesafe/config/impl/SimpleConfigList;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object v2

    goto/16 :goto_1

    .line 111
    :cond_3
    instance-of v3, v0, Lcom/typesafe/config/impl/SimpleConfigList;

    if-nez v3, :cond_4

    instance-of v3, v0, Lcom/typesafe/config/ConfigObject;

    if-eqz v3, :cond_5

    .line 112
    :cond_4
    invoke-static {v1}, Lcom/typesafe/config/impl/ConfigConcatenation;->isIgnoredWhitespace(Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    move-object v2, v0

    goto :goto_1

    .line 115
    :cond_5
    instance-of v3, v0, Lcom/typesafe/config/impl/ConfigConcatenation;

    if-nez v3, :cond_a

    instance-of v3, v1, Lcom/typesafe/config/impl/ConfigConcatenation;

    if-nez v3, :cond_a

    .line 117
    instance-of v3, v0, Lcom/typesafe/config/impl/Unmergeable;

    if-nez v3, :cond_8

    instance-of v3, v1, Lcom/typesafe/config/impl/Unmergeable;

    if-eqz v3, :cond_6

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->transformToString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "s1":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->transformToString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "s2":Ljava/lang/String;
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 128
    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    .line 129
    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v6

    .line 128
    invoke-static {v5, v6}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeOrigins(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v5

    .line 130
    .local v5, "joinedOrigin":Lcom/typesafe/config/ConfigOrigin;
    new-instance v6, Lcom/typesafe/config/impl/ConfigString$Quoted;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/typesafe/config/impl/ConfigString$Quoted;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    move-object v2, v6

    goto :goto_1

    .line 124
    .end local v5    # "joinedOrigin":Lcom/typesafe/config/ConfigOrigin;
    :cond_7
    new-instance v5, Lcom/typesafe/config/ConfigException$WrongType;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot concatenate object or list with a non-object-or-list, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " are not compatible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    throw v5

    .line 134
    .end local v3    # "s1":Ljava/lang/String;
    .end local v4    # "s2":Ljava/lang/String;
    :cond_8
    :goto_1
    if-nez v2, :cond_9

    .line 135
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_2
    return-void

    .line 116
    :cond_a
    new-instance v3, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v4, "unflattened ConfigConcatenation"

    invoke-direct {v3, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private notResolved()Lcom/typesafe/config/ConfigException$NotResolved;
    .locals 3

    .line 51
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

    .line 268
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigConcatenation;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 274
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigConcatenation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigConcatenation;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/ConfigConcatenation;

    iget-object v2, v2, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 277
    :cond_1
    return v1
.end method

.method public hasDescendant(Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 1
    .param p1, "descendant"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 249
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/typesafe/config/impl/ConfigConcatenation;->hasDescendantInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected ignoresFallbacks()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigConcatenation;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigConcatenation;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigConcatenation;
    .locals 2
    .param p1, "newOrigin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 68
    new-instance v0, Lcom/typesafe/config/impl/ConfigConcatenation;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/ConfigConcatenation;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v0
.end method

.method bridge synthetic relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigConcatenation;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ConfigConcatenation;

    move-result-object p1

    return-object p1
.end method

.method relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ConfigConcatenation;
    .locals 4
    .param p1, "prefix"    # Lcom/typesafe/config/impl/Path;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "newPieces":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 261
    .local v2, "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v2, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v2    # "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 263
    :cond_0
    new-instance v1, Lcom/typesafe/config/impl/ConfigConcatenation;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigConcatenation;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/impl/ConfigConcatenation;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v1
.end method

.method protected render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 289
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 290
    .local v1, "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/typesafe/config/impl/AbstractConfigValue;->render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V

    .line 291
    .end local v1    # "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method public bridge synthetic replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/ConfigConcatenation;->replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ConfigConcatenation;

    move-result-object p1

    return-object p1
.end method

.method public replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ConfigConcatenation;
    .locals 3
    .param p1, "child"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "replacement"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 240
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/typesafe/config/impl/ConfigConcatenation;->replaceChildInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Ljava/util/List;

    move-result-object v0

    .line 241
    .local v0, "newPieces":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    if-nez v0, :cond_0

    .line 242
    const/4 v1, 0x0

    return-object v1

    .line 244
    :cond_0
    new-instance v1, Lcom/typesafe/config/impl/ConfigConcatenation;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigConcatenation;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/impl/ConfigConcatenation;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v1
.end method

.method resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1

    .line 235
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    return-object v0
.end method

.method resolveSubstitutions(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 11
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

    .line 183
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 185
    .local v0, "indent":I
    add-int/lit8 v1, v0, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "concatenation has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pieces:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "count":I
    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 188
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 189
    nop

    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    add-int/lit8 v1, v1, 0x1

    .line 190
    goto :goto_0

    .line 196
    .end local v0    # "indent":I
    .end local v1    # "count":I
    :cond_0
    move-object v0, p2

    .line 197
    .local v0, "sourceWithParent":Lcom/typesafe/config/impl/ResolveSource;
    move-object v1, p1

    .line 199
    .local v1, "newContext":Lcom/typesafe/config/impl/ResolveContext;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v2, "resolved":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigConcatenation;->pieces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 203
    .local v4, "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v1}, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild()Lcom/typesafe/config/impl/Path;

    move-result-object v5

    .line 204
    .local v5, "restriction":Lcom/typesafe/config/impl/Path;
    invoke-virtual {v1}, Lcom/typesafe/config/impl/ResolveContext;->unrestricted()Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v6

    .line 205
    invoke-virtual {v6, v4, v0}, Lcom/typesafe/config/impl/ResolveContext;->resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v6

    .line 206
    .local v6, "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v7, v6, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 207
    .local v7, "r":Lcom/typesafe/config/impl/AbstractConfigValue;
    iget-object v8, v6, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v8, v5}, Lcom/typesafe/config/impl/ResolveContext;->restrict(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v1

    .line 208
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 209
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resolved concat piece to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 210
    :cond_1
    if-nez v7, :cond_2

    goto :goto_2

    .line 213
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v4    # "p":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v5    # "restriction":Lcom/typesafe/config/impl/Path;
    .end local v6    # "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v7    # "r":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_2
    goto :goto_1

    .line 218
    :cond_3
    invoke-static {v2}, Lcom/typesafe/config/impl/ConfigConcatenation;->consolidate(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 221
    .local v3, "joined":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->options()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/typesafe/config/ConfigResolveOptions;->getAllowUnresolved()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 222
    new-instance v4, Lcom/typesafe/config/impl/ConfigConcatenation;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigConcatenation;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/typesafe/config/impl/ConfigConcatenation;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    invoke-static {v1, v4}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v4

    return-object v4

    .line 223
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 225
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v4

    return-object v4

    .line 226
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 227
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-static {v1, v4}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v4

    return-object v4

    .line 229
    :cond_6
    new-instance v4, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bug in the library; resolved list was joined to too many values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public unmergedValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/ConfigConcatenation;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public unwrapped()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigConcatenation;->notResolved()Lcom/typesafe/config/ConfigException$NotResolved;

    move-result-object v0

    throw v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigConcatenation;->notResolved()Lcom/typesafe/config/ConfigException$NotResolved;

    move-result-object v0

    throw v0
.end method
