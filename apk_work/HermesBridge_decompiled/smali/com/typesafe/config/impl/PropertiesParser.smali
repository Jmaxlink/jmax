.class final Lcom/typesafe/config/impl/PropertiesParser;
.super Ljava/lang/Object;
.source "PropertiesParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static exceptLastElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 38
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 39
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 40
    const/4 v1, 0x0

    return-object v1

    .line 42
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static fromEntrySet(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Set;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 2
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/typesafe/config/impl/AbstractConfigObject;"
        }
    .end annotation

    .line 63
    .local p1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lcom/typesafe/config/impl/PropertiesParser;->getPathMap(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 64
    .local v0, "pathMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/Path;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/typesafe/config/impl/PropertiesParser;->fromPathMap(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Z)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1

    return-object v1
.end method

.method static fromPathMap(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 6
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/typesafe/config/impl/AbstractConfigObject;"
        }
    .end annotation

    .line 85
    .local p1, "pathExpressionMap":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "pathMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/Path;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 88
    .local v3, "keyObj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 92
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v4

    .line 93
    .local v4, "path":Lcom/typesafe/config/impl/Path;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "keyObj":Ljava/lang/Object;
    .end local v4    # "path":Lcom/typesafe/config/impl/Path;
    goto :goto_0

    .line 89
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v3    # "keyObj":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v4, "Map has a non-string as a key, expecting a path expression as a String"

    invoke-direct {v1, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "keyObj":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/typesafe/config/impl/PropertiesParser;->fromPathMap(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Z)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1

    return-object v1
.end method

.method private static fromPathMap(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Z)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 13
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "convertedFromProperties"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/Path;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/typesafe/config/impl/AbstractConfigObject;"
        }
    .end annotation

    .line 104
    .local p1, "pathMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/Path;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 105
    .local v0, "scopePaths":Ljava/util/Set;, "Ljava/util/Set<Lcom/typesafe/config/impl/Path;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 106
    .local v1, "valuePaths":Ljava/util/Set;, "Ljava/util/Set<Lcom/typesafe/config/impl/Path;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/Path;

    .line 108
    .local v3, "path":Lcom/typesafe/config/impl/Path;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v3}, Lcom/typesafe/config/impl/Path;->parent()Lcom/typesafe/config/impl/Path;

    move-result-object v4

    .line 112
    .local v4, "next":Lcom/typesafe/config/impl/Path;
    :goto_1
    if-eqz v4, :cond_0

    .line 113
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {v4}, Lcom/typesafe/config/impl/Path;->parent()Lcom/typesafe/config/impl/Path;

    move-result-object v4

    goto :goto_1

    .line 116
    .end local v3    # "path":Lcom/typesafe/config/impl/Path;
    .end local v4    # "next":Lcom/typesafe/config/impl/Path;
    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    if-eqz p2, :cond_2

    .line 123
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 126
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/Path;

    .line 127
    .restart local v3    # "path":Lcom/typesafe/config/impl/Path;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 134
    .end local v3    # "path":Lcom/typesafe/config/impl/Path;
    goto :goto_2

    .line 128
    .restart local v3    # "path":Lcom/typesafe/config/impl/Path;
    :cond_3
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In the map, path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 130
    invoke-virtual {v3}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' occurs as both the parent object of a value and as a value. Because Map has no defined ordering, this is a broken situation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v3    # "path":Lcom/typesafe/config/impl/Path;
    :cond_4
    :goto_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v2, "root":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v3, "scopes":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/Path;Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/impl/Path;

    .line 144
    .local v5, "path":Lcom/typesafe/config/impl/Path;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v6, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v5    # "path":Lcom/typesafe/config/impl/Path;
    .end local v6    # "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    goto :goto_4

    .line 149
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/impl/Path;

    .line 150
    .restart local v5    # "path":Lcom/typesafe/config/impl/Path;
    invoke-virtual {v5}, Lcom/typesafe/config/impl/Path;->parent()Lcom/typesafe/config/impl/Path;

    move-result-object v6

    .line 151
    .local v6, "parentPath":Lcom/typesafe/config/impl/Path;
    if-eqz v6, :cond_6

    .line 152
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object v7, v2

    .line 154
    .local v7, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :goto_6
    invoke-virtual {v5}, Lcom/typesafe/config/impl/Path;->last()Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, "last":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 157
    .local v9, "rawValue":Ljava/lang/Object;
    if-eqz p2, :cond_8

    .line 158
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 159
    new-instance v10, Lcom/typesafe/config/impl/ConfigString$Quoted;

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, p0, v11}, Lcom/typesafe/config/impl/ConfigString$Quoted;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .local v10, "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_7

    .line 162
    .end local v10    # "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_7

    .line 165
    .end local v10    # "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_8
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/typesafe/config/impl/FromMapMode;->KEYS_ARE_PATHS:Lcom/typesafe/config/impl/FromMapMode;

    invoke-static {v10, p0, v11}, Lcom/typesafe/config/impl/ConfigImpl;->fromAnyRef(Ljava/lang/Object;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/FromMapMode;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v10

    .line 168
    .restart local v10    # "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_7
    if-eqz v10, :cond_9

    .line 169
    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v5    # "path":Lcom/typesafe/config/impl/Path;
    .end local v6    # "parentPath":Lcom/typesafe/config/impl/Path;
    .end local v7    # "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v8    # "last":Ljava/lang/String;
    .end local v9    # "rawValue":Ljava/lang/Object;
    .end local v10    # "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_9
    goto :goto_5

    .line 176
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v4, "sortedScopePaths":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/Path;>;"
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    new-instance v5, Lcom/typesafe/config/impl/PropertiesParser$1;

    invoke-direct {v5}, Lcom/typesafe/config/impl/PropertiesParser$1;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 194
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/typesafe/config/impl/Path;

    .line 195
    .local v6, "scopePath":Lcom/typesafe/config/impl/Path;
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 197
    .local v8, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {v6}, Lcom/typesafe/config/impl/Path;->parent()Lcom/typesafe/config/impl/Path;

    move-result-object v9

    .line 198
    .local v9, "parentPath":Lcom/typesafe/config/impl/Path;
    if-eqz v9, :cond_b

    .line 199
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    goto :goto_9

    :cond_b
    move-object v10, v2

    .line 201
    .local v10, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :goto_9
    new-instance v11, Lcom/typesafe/config/impl/SimpleConfigObject;

    sget-object v12, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    invoke-direct {v11, p0, v8, v12, v7}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    move-object v7, v11

    .line 203
    .local v7, "o":Lcom/typesafe/config/impl/AbstractConfigObject;
    invoke-virtual {v6}, Lcom/typesafe/config/impl/Path;->last()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v6    # "scopePath":Lcom/typesafe/config/impl/Path;
    .end local v7    # "o":Lcom/typesafe/config/impl/AbstractConfigObject;
    .end local v8    # "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v9    # "parentPath":Lcom/typesafe/config/impl/Path;
    .end local v10    # "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    goto :goto_8

    .line 207
    :cond_c
    new-instance v5, Lcom/typesafe/config/impl/SimpleConfigObject;

    sget-object v6, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    invoke-direct {v5, p0, v2, v6, v7}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    return-object v5
.end method

.method static fromProperties(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Properties;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "props"    # Ljava/util/Properties;

    .line 59
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/PropertiesParser;->fromEntrySet(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Set;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method static fromStringMap(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/typesafe/config/impl/AbstractConfigObject;"
        }
    .end annotation

    .line 80
    .local p1, "stringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/PropertiesParser;->fromEntrySet(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Set;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method private static getPathMap(Ljava/util/Set;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/Path;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    .local p0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v0, "pathMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/Path;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 70
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 71
    .local v3, "key":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 72
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/typesafe/config/impl/PropertiesParser;->pathFromPropertyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v4

    .line 73
    .local v4, "path":Lcom/typesafe/config/impl/Path;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "path":Lcom/typesafe/config/impl/Path;
    :cond_0
    goto :goto_0

    .line 76
    :cond_1
    return-object v0
.end method

.method static lastElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 30
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 31
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 32
    return-object p0

    .line 34
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static parse(Ljava/io/Reader;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 25
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 26
    invoke-static {p1, v0}, Lcom/typesafe/config/impl/PropertiesParser;->fromProperties(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Properties;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1

    return-object v1
.end method

.method static pathFromPropertyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lcom/typesafe/config/impl/PropertiesParser;->lastElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "last":Ljava/lang/String;
    invoke-static {p0}, Lcom/typesafe/config/impl/PropertiesParser;->exceptLastElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "exceptLast":Ljava/lang/String;
    new-instance v2, Lcom/typesafe/config/impl/Path;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/typesafe/config/impl/Path;-><init>(Ljava/lang/String;Lcom/typesafe/config/impl/Path;)V

    .line 49
    .local v2, "path":Lcom/typesafe/config/impl/Path;
    :goto_0
    if-eqz v1, :cond_0

    .line 50
    invoke-static {v1}, Lcom/typesafe/config/impl/PropertiesParser;->lastElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v1}, Lcom/typesafe/config/impl/PropertiesParser;->exceptLastElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v3, Lcom/typesafe/config/impl/Path;

    invoke-direct {v3, v0, v2}, Lcom/typesafe/config/impl/Path;-><init>(Ljava/lang/String;Lcom/typesafe/config/impl/Path;)V

    move-object v2, v3

    goto :goto_0

    .line 54
    :cond_0
    return-object v2
.end method
