.class final Lcom/typesafe/config/impl/SimpleConfigList;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "SimpleConfigList.java"

# interfaces
.implements Lcom/typesafe/config/ConfigList;
.implements Lcom/typesafe/config/impl/Container;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final resolved:Z

.field private final value:Ljava/util/List;
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
    .locals 1
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

    .line 29
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    nop

    .line 30
    invoke-static {p2}, Lcom/typesafe/config/impl/ResolveStatus;->fromValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;Lcom/typesafe/config/impl/ResolveStatus;)V

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;Lcom/typesafe/config/impl/ResolveStatus;)V
    .locals 3
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "status"    # Lcom/typesafe/config/impl/ResolveStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/ResolveStatus;",
            ")V"
        }
    .end annotation

    .line 35
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 36
    iput-object p2, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    .line 37
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->resolved:Z

    .line 40
    invoke-static {p2}, Lcom/typesafe/config/impl/ResolveStatus;->fromValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    if-ne p3, v0, :cond_1

    .line 43
    return-void

    .line 41
    :cond_1
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimpleConfigList created with wrong resolve status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 21
    invoke-static {p0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    return-object v0
.end method

.method private modify(Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;Lcom/typesafe/config/impl/ResolveStatus;)Lcom/typesafe/config/impl/SimpleConfigList;
    .locals 3
    .param p1, "modifier"    # Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;
    .param p2, "newResolveStatus"    # Lcom/typesafe/config/impl/ResolveStatus;

    .line 83
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigList;->modifyMayThrow(Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;Lcom/typesafe/config/impl/ResolveStatus;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "unexpected checked exception"

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0
.end method

.method private modifyMayThrow(Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;Lcom/typesafe/config/impl/ResolveStatus;)Lcom/typesafe/config/impl/SimpleConfigList;
    .locals 7
    .param p1, "modifier"    # Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;
    .param p2, "newResolveStatus"    # Lcom/typesafe/config/impl/ResolveStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "changed":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    const/4 v1, 0x0

    .line 96
    .local v1, "i":I
    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 97
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;->modifyChildMayThrow(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v4

    .line 100
    .local v4, "modified":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-nez v0, :cond_0

    if-eq v4, v3, :cond_0

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 102
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 103
    iget-object v6, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 110
    .end local v5    # "j":I
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 111
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    nop

    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v4    # "modified":Lcom/typesafe/config/impl/AbstractConfigValue;
    add-int/lit8 v1, v1, 0x1

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    if-eqz v0, :cond_4

    .line 118
    if-eqz p2, :cond_3

    .line 119
    new-instance v2, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigList;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-direct {v2, v3, v0, p2}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;Lcom/typesafe/config/impl/ResolveStatus;)V

    return-object v2

    .line 121
    :cond_3
    new-instance v2, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigList;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v2

    .line 124
    :cond_4
    return-object p0
.end method

.method private static weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;

    .line 387
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigList is immutable, you can\'t call List.\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static wrapListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)",
            "Ljava/util/ListIterator<",
            "Lcom/typesafe/config/ConfigValue;",
            ">;"
        }
    .end annotation

    .line 303
    .local p0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigList$3;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SimpleConfigList$3;-><init>(Ljava/util/ListIterator;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>(Lcom/typesafe/config/ConfigValue;)V

    return-object v0
.end method


# virtual methods
.method public add(ILcom/typesafe/config/ConfigValue;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/typesafe/config/ConfigValue;

    .line 398
    const-string v0, "add"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/typesafe/config/ConfigValue;

    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigList;->add(ILcom/typesafe/config/ConfigValue;)V

    return-void
.end method

.method public add(Lcom/typesafe/config/ConfigValue;)Z
    .locals 1
    .param p1, "e"    # Lcom/typesafe/config/ConfigValue;

    .line 393
    const-string v0, "add"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Lcom/typesafe/config/ConfigValue;

    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->add(Lcom/typesafe/config/ConfigValue;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/typesafe/config/ConfigValue;",
            ">;)Z"
        }
    .end annotation

    .line 408
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/typesafe/config/ConfigValue;>;"
    const-string v0, "addAll"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/typesafe/config/ConfigValue;",
            ">;)Z"
        }
    .end annotation

    .line 403
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/typesafe/config/ConfigValue;>;"
    const-string v0, "addAll"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 183
    instance-of v0, p1, Lcom/typesafe/config/impl/SimpleConfigList;

    return v0
.end method

.method public clear()V
    .locals 1

    .line 413
    const-string v0, "clear"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method final concatenate(Lcom/typesafe/config/impl/SimpleConfigList;)Lcom/typesafe/config/impl/SimpleConfigList;
    .locals 4
    .param p1, "other"    # Lcom/typesafe/config/impl/SimpleConfigList;

    .line 447
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigList;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    invoke-virtual {p1}, Lcom/typesafe/config/impl/SimpleConfigList;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeOrigins(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    .line 448
    .local v0, "combinedOrigin":Lcom/typesafe/config/ConfigOrigin;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    .line 449
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    .local v1, "combined":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 451
    iget-object v2, p1, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 452
    new-instance v2, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-direct {v2, v0, v1}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 256
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 189
    instance-of v0, p1, Lcom/typesafe/config/impl/SimpleConfigList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/SimpleConfigList;

    iget-object v2, v2, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/SimpleConfigList;

    iget-object v2, v2, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 191
    :goto_0
    return v1

    .line 194
    :cond_2
    return v1
.end method

.method public get(I)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "index"    # I

    .line 261
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->get(I)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public hasDescendant(Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 1
    .param p1, "descendant"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 78
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->hasDescendantInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/ConfigValue;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 278
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigList$2;

    invoke-direct {v1, p0, v0}, Lcom/typesafe/config/impl/SimpleConfigList$2;-><init>(Lcom/typesafe/config/impl/SimpleConfigList;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lcom/typesafe/config/ConfigValue;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->wrapListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lcom/typesafe/config/ConfigValue;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->wrapListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigList;
    .locals 2
    .param p1, "newOrigin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 443
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigList;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v0
.end method

.method bridge synthetic relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object p1

    return-object p1
.end method

.method relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigList;
    .locals 2
    .param p1, "prefix"    # Lcom/typesafe/config/impl/Path;

    .line 172
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigList$1;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList$1;-><init>(Lcom/typesafe/config/impl/SimpleConfigList;Lcom/typesafe/config/impl/Path;)V

    .line 178
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigList;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v1

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/typesafe/config/impl/SimpleConfigList;->modify(Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;Lcom/typesafe/config/impl/ResolveStatus;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/typesafe/config/ConfigValue;
    .locals 1
    .param p1, "index"    # I

    .line 423
    const-string v0, "remove"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->remove(I)Lcom/typesafe/config/ConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 418
    const-string v0, "remove"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 428
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-string v0, "removeAll"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method protected render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 206
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 209
    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p4}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 213
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {p4}, Lcom/typesafe/config/ConfigRenderOptions;->getOriginComments()Z

    move-result v3

    const-string v4, "\n"

    if-eqz v3, :cond_3

    .line 214
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "lines":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .line 216
    .local v7, "l":Ljava/lang/String;
    add-int/lit8 v8, p2, 0x1

    invoke-static {p1, v8, p4}, Lcom/typesafe/config/impl/SimpleConfigList;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 217
    const/16 v8, 0x23

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 219
    const/16 v8, 0x20

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .end local v7    # "l":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 224
    .end local v3    # "lines":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p4}, Lcom/typesafe/config/ConfigRenderOptions;->getComments()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 225
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->comments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 226
    .local v5, "comment":Ljava/lang/String;
    add-int/lit8 v6, p2, 0x1

    invoke-static {p1, v6, p4}, Lcom/typesafe/config/impl/SimpleConfigList;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 227
    const-string v6, "# "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .end local v5    # "comment":Ljava/lang/String;
    goto :goto_2

    .line 232
    :cond_4
    add-int/lit8 v3, p2, 0x1

    invoke-static {p1, v3, p4}, Lcom/typesafe/config/impl/SimpleConfigList;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 234
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3, p3, p4}, Lcom/typesafe/config/impl/AbstractConfigValue;->render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V

    .line 235
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p4}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    .end local v2    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_5
    goto/16 :goto_0

    .line 239
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 240
    invoke-virtual {p4}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p1, p2, p4}, Lcom/typesafe/config/impl/SimpleConfigList;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 245
    :cond_7
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_3
    return-void
.end method

.method public bridge synthetic replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigList;->replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object p1

    return-object p1
.end method

.method public replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/SimpleConfigList;
    .locals 3
    .param p1, "child"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "replacement"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 66
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigList;->replaceChildInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x0

    return-object v1

    .line 72
    :cond_0
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigList;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v1
.end method

.method resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->resolved:Z

    invoke-static {v0}, Lcom/typesafe/config/impl/ResolveStatus;->fromBoolean(Z)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    return-object v0
.end method

.method resolveSubstitutions(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 3
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
            "Lcom/typesafe/config/impl/SimpleConfigList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->resolved:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p1, p0}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->isRestrictedToChild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {p1, p0}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    return-object v0

    .line 157
    :cond_1
    :try_start_0
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;

    invoke-virtual {p2, p0}, Lcom/typesafe/config/impl/ResolveSource;->pushParent(Lcom/typesafe/config/impl/Container;)Lcom/typesafe/config/impl/ResolveSource;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;-><init>(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)V

    .line 158
    .local v0, "modifier":Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->options()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/ConfigResolveOptions;->getAllowUnresolved()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/typesafe/config/impl/SimpleConfigList;->modifyMayThrow(Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;Lcom/typesafe/config/impl/ResolveStatus;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object v1

    .line 159
    .local v1, "value":Lcom/typesafe/config/impl/SimpleConfigList;
    iget-object v2, v0, Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-static {v2, v1}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v2
    :try_end_0
    .catch Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 164
    .end local v0    # "modifier":Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;
    .end local v1    # "value":Lcom/typesafe/config/impl/SimpleConfigList;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "unexpected checked exception"

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 160
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 161
    .local v0, "e":Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 433
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-string v0, "retainAll"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(ILcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/ConfigValue;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/typesafe/config/ConfigValue;

    .line 438
    const-string v0, "set"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->weAreImmutable(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lcom/typesafe/config/ConfigValue;

    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigList;->set(ILcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/ConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigValue;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigValue;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 371
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v2    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 373
    :cond_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 383
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigList;->unwrapped()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public unwrapped()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigList;->value:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 54
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v2    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 47
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method

.method public bridge synthetic withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigList;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object p1

    return-object p1
.end method

.method public withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigList;
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 462
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigList;

    return-object v0
.end method
