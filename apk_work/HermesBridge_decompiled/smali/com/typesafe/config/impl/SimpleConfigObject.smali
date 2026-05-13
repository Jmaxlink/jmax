.class final Lcom/typesafe/config/impl/SimpleConfigObject;
.super Lcom/typesafe/config/impl/AbstractConfigObject;
.source "SimpleConfigObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/SimpleConfigObject$RenderComparator;,
        Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;
    }
.end annotation


# static fields
.field private static final EMPTY_NAME:Ljava/lang/String; = "empty config"

.field private static final emptyInstance:Lcom/typesafe/config/impl/SimpleConfigObject;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final ignoresFallbacks:Z

.field private final resolved:Z

.field private final value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 646
    nop

    .line 647
    const-string v0, "empty config"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    .line 646
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigObject;->empty(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfigObject;->emptyInstance:Lcom/typesafe/config/impl/SimpleConfigObject;

    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)V
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/ResolveStatus;->fromValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V
    .locals 3
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "status"    # Lcom/typesafe/config/impl/ResolveStatus;
    .param p4, "ignoresFallbacks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/ResolveStatus;",
            "Z)V"
        }
    .end annotation

    .line 38
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 39
    if-eqz p2, :cond_2

    .line 42
    iput-object p2, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->resolved:Z

    .line 44
    iput-boolean p4, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    .line 47
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/ResolveStatus;->fromValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    if-ne p3, v0, :cond_1

    .line 49
    return-void

    .line 48
    :cond_1
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong resolved status on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "creating config object with null map"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final empty()Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 1

    .line 650
    sget-object v0, Lcom/typesafe/config/impl/SimpleConfigObject;->emptyInstance:Lcom/typesafe/config/impl/SimpleConfigObject;

    return-object v0
.end method

.method static final empty(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 2
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 654
    if-nez p0, :cond_0

    .line 655
    invoke-static {}, Lcom/typesafe/config/impl/SimpleConfigObject;->empty()Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    return-object v0

    .line 657
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigObject;

    .line 658
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)V

    .line 657
    return-object v0
.end method

.method static final emptyMissing(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 3
    .param p0, "baseOrigin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 662
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    invoke-interface {p0}, Lcom/typesafe/config/ConfigOrigin;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not found)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-static {v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    .line 664
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)V

    .line 662
    return-object v0
.end method

.method private static mapEquals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigValue;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigValue;",
            ">;)Z"
        }
    .end annotation

    .line 547
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    .local p1, "b":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 548
    return v0

    .line 550
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 551
    .local v1, "aKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 553
    .local v2, "bKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 554
    return v4

    .line 556
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 557
    .local v5, "key":Ljava/lang/String;
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/typesafe/config/ConfigValue;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 558
    return v4

    .line 559
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 560
    :cond_3
    return v0
.end method

.method private static mapHash(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigValue;",
            ">;)I"
        }
    .end annotation

    .line 566
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 568
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 570
    const/4 v1, 0x0

    .line 571
    .local v1, "valuesHash":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 572
    .local v3, "k":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/ConfigValue;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    .line 573
    .end local v3    # "k":Ljava/lang/String;
    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    mul-int/lit8 v2, v2, 0x29

    add-int/2addr v2, v1

    return v2
.end method

.method private modify(Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 3
    .param p1, "modifier"    # Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;

    .line 299
    :try_start_0
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->modifyMayThrow(Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "unexpected checked exception"

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0
.end method

.method private modifyMayThrow(Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 8
    .param p1, "modifier"    # Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "changes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    .local v2, "k":Ljava/lang/String;
    iget-object v3, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 313
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {p1, v2, v3}, Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;->modifyChildMayThrow(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v4

    .line 314
    .local v4, "modified":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eq v4, v3, :cond_1

    .line 315
    if-nez v0, :cond_0

    .line 316
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    .line 317
    :cond_0
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v4    # "modified":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_1
    goto :goto_0

    .line 320
    :cond_2
    if-nez v0, :cond_3

    .line 321
    return-object p0

    .line 323
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v1, "modified":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    const/4 v2, 0x0

    .line 325
    .local v2, "sawUnresolved":Z
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 326
    .local v4, "k":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 327
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 328
    .local v5, "newValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v5, :cond_4

    .line 329
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {v5}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v6

    sget-object v7, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v6, v7, :cond_4

    .line 331
    const/4 v2, 0x1

    .line 335
    .end local v5    # "newValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_4
    goto :goto_2

    .line 336
    :cond_5
    iget-object v5, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 337
    .restart local v5    # "newValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-virtual {v5}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v6

    sget-object v7, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v6, v7, :cond_6

    .line 339
    const/4 v2, 0x1

    .line 341
    .end local v4    # "k":Ljava/lang/String;
    .end local v5    # "newValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_6
    :goto_2
    goto :goto_1

    .line 342
    :cond_7
    new-instance v3, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v4

    if-eqz v2, :cond_8

    sget-object v5, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    goto :goto_3

    :cond_8
    sget-object v5, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    .line 344
    :goto_3
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks()Z

    move-result v6

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    .line 342
    return-object v3
.end method

.method private newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;Z)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 2
    .param p1, "newStatus"    # Lcom/typesafe/config/impl/ResolveStatus;
    .param p2, "newOrigin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "newIgnoresFallbacks"    # Z

    .line 181
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigObject;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-direct {v0, p2, v1, p1, p3}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 669
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>(Lcom/typesafe/config/ConfigValue;)V

    return-object v0
.end method


# virtual methods
.method protected attemptPeekWithPartialResolve(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 579
    instance-of v0, p1, Lcom/typesafe/config/ConfigObject;

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 6
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

    .line 621
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 622
    .local v0, "entries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 623
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 624
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 625
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 623
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    goto :goto_0

    .line 627
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 586
    instance-of v0, p1, Lcom/typesafe/config/ConfigObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/ConfigObject;

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/SimpleConfigObject;->mapEquals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 591
    :cond_1
    return v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public hasDescendant(Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 4
    .param p1, "descendant"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 221
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 222
    .local v1, "child":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-ne v1, p1, :cond_0

    .line 223
    return v2

    .line 224
    .end local v1    # "child":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 227
    .restart local v1    # "child":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v3, v1, Lcom/typesafe/config/impl/Container;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/typesafe/config/impl/Container;

    invoke-interface {v3, p1}, Lcom/typesafe/config/impl/Container;->hasDescendant(Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    return v2

    .line 229
    .end local v1    # "child":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_2
    goto :goto_1

    .line 231
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 599
    invoke-static {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->mapHash(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method protected ignoresFallbacks()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
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

    .line 609
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method protected mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 12
    .param p1, "abstractFallback"    # Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 250
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->requireNotIgnoringFallbacks()V

    .line 252
    instance-of v0, p1, Lcom/typesafe/config/impl/SimpleConfigObject;

    if-eqz v0, :cond_8

    .line 257
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigObject;

    .line 259
    .local v0, "fallback":Lcom/typesafe/config/impl/SimpleConfigObject;
    const/4 v1, 0x0

    .line 260
    .local v1, "changed":Z
    const/4 v2, 0x1

    .line 261
    .local v2, "allResolved":Z
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v3, "merged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 263
    .local v4, "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 264
    invoke-virtual {v0}, Lcom/typesafe/config/impl/SimpleConfigObject;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 266
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 267
    .local v7, "first":Lcom/typesafe/config/impl/AbstractConfigValue;
    iget-object v8, v0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 269
    .local v8, "second":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-nez v7, :cond_0

    .line 270
    move-object v9, v8

    .local v9, "kept":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_1

    .line 271
    .end local v9    # "kept":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    if-nez v8, :cond_1

    .line 272
    move-object v9, v7

    .restart local v9    # "kept":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_1

    .line 274
    .end local v9    # "kept":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_1
    invoke-virtual {v7, v8}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v9

    .line 276
    .restart local v9    # "kept":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_1
    invoke-interface {v3, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    if-eq v7, v9, :cond_2

    .line 279
    const/4 v1, 0x1

    .line 281
    :cond_2
    invoke-virtual {v9}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v10

    sget-object v11, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v10, v11, :cond_3

    .line 282
    const/4 v2, 0x0

    .line 283
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "first":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v8    # "second":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v9    # "kept":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_3
    goto :goto_0

    .line 285
    :cond_4
    invoke-static {v2}, Lcom/typesafe/config/impl/ResolveStatus;->fromBoolean(Z)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v5

    .line 286
    .local v5, "newResolveStatus":Lcom/typesafe/config/impl/ResolveStatus;
    invoke-virtual {v0}, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks()Z

    move-result v6

    .line 288
    .local v6, "newIgnoresFallbacks":Z
    if-eqz v1, :cond_5

    .line 289
    new-instance v7, Lcom/typesafe/config/impl/SimpleConfigObject;

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/typesafe/config/impl/AbstractConfigObject;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v8}, Lcom/typesafe/config/impl/SimpleConfigObject;->mergeOrigins([Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v8

    invoke-direct {v7, v8, v3, v5, v6}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    return-object v7

    .line 291
    :cond_5
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v7

    if-ne v5, v7, :cond_7

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks()Z

    move-result v7

    if-eq v6, v7, :cond_6

    goto :goto_2

    .line 294
    :cond_6
    return-object p0

    .line 292
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v7

    invoke-direct {p0, v5, v7, v6}, Lcom/typesafe/config/impl/SimpleConfigObject;->newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;Z)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v7

    return-object v7

    .line 253
    .end local v0    # "fallback":Lcom/typesafe/config/impl/SimpleConfigObject;
    .end local v1    # "changed":Z
    .end local v2    # "allResolved":Z
    .end local v3    # "merged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v4    # "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "newResolveStatus":Lcom/typesafe/config/impl/ResolveStatus;
    .end local v6    # "newIgnoresFallbacks":Z
    :cond_8
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "should not be reached (merging non-SimpleConfigObject)"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigObject;->newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 1
    .param p1, "newStatus"    # Lcom/typesafe/config/impl/ResolveStatus;
    .param p2, "newOrigin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 186
    iget-boolean v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/typesafe/config/impl/SimpleConfigObject;->newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;Z)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 1
    .param p1, "prefix"    # Lcom/typesafe/config/impl/Path;

    .line 412
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigObject$1;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject$1;-><init>(Lcom/typesafe/config/impl/SimpleConfigObject;Lcom/typesafe/config/impl/Path;)V

    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/SimpleConfigObject;->modify(Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    return-object v0
.end method

.method protected render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
    .locals 18
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 465
    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p4

    invoke-virtual/range {p0 .. p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->isEmpty()Z

    move-result v0

    const/16 v9, 0xa

    if-eqz v0, :cond_0

    .line 466
    const-string v0, "{}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 468
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/typesafe/config/ConfigRenderOptions;->getJson()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v11, v0

    .line 471
    .local v11, "outerBraces":Z
    if-eqz v11, :cond_4

    .line 472
    add-int/lit8 v0, v7, 0x1

    .line 473
    .local v0, "innerIndent":I
    const-string v1, "{"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual/range {p4 .. p4}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 476
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    :cond_3
    move v12, v0

    goto :goto_2

    .line 478
    .end local v0    # "innerIndent":I
    :cond_4
    move/from16 v0, p2

    move v12, v0

    .line 481
    .local v12, "innerIndent":I
    :goto_2
    const/4 v0, 0x0

    .line 482
    .local v0, "separatorCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Ljava/lang/String;

    .line 483
    .local v13, "keys":[Ljava/lang/String;
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigObject$RenderComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/SimpleConfigObject$RenderComparator;-><init>(Lcom/typesafe/config/impl/SimpleConfigObject$1;)V

    invoke-static {v13, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 484
    array-length v14, v13

    move v15, v0

    const/4 v5, 0x0

    .end local v0    # "separatorCount":I
    .local v15, "separatorCount":I
    :goto_3
    if-ge v5, v14, :cond_c

    aget-object v4, v13, v5

    .line 486
    .local v4, "k":Ljava/lang/String;
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 488
    .local v16, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual/range {p4 .. p4}, Lcom/typesafe/config/ConfigRenderOptions;->getOriginComments()Z

    move-result v0

    const-string v2, "\n"

    if-eqz v0, :cond_7

    .line 489
    invoke-virtual/range {v16 .. v16}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "lines":[Ljava/lang/String;
    array-length v10, v0

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v10, :cond_6

    aget-object v1, v0, v9

    .line 491
    .local v1, "l":Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "lines":[Ljava/lang/String;
    .local v17, "lines":[Ljava/lang/String;
    add-int/lit8 v0, v7, 0x1

    invoke-static {v6, v0, v8}, Lcom/typesafe/config/impl/SimpleConfigObject;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 492
    const/16 v0, 0x23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 494
    const/16 v0, 0x20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .end local v1    # "l":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v17

    goto :goto_4

    .end local v17    # "lines":[Ljava/lang/String;
    .restart local v0    # "lines":[Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v0

    .line 499
    .end local v0    # "lines":[Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/typesafe/config/ConfigRenderOptions;->getComments()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 500
    invoke-virtual/range {v16 .. v16}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->comments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    .local v1, "comment":Ljava/lang/String;
    invoke-static {v6, v12, v8}, Lcom/typesafe/config/impl/SimpleConfigObject;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 502
    const-string v9, "#"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 504
    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 503
    :cond_8
    const/16 v9, 0x20

    .line 505
    :goto_6
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .end local v1    # "comment":Ljava/lang/String;
    goto :goto_5

    .line 509
    :cond_9
    invoke-static {v6, v12, v8}, Lcom/typesafe/config/impl/SimpleConfigObject;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 510
    const/4 v9, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move v2, v12

    move v3, v9

    move-object v9, v4

    .end local v4    # "k":Ljava/lang/String;
    .local v9, "k":Ljava/lang/String;
    move v10, v5

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/typesafe/config/impl/AbstractConfigValue;->render(Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V

    .line 512
    invoke-virtual/range {p4 .. p4}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v0

    const-string v1, ","

    if-eqz v0, :cond_b

    .line 513
    invoke-virtual/range {p4 .. p4}, Lcom/typesafe/config/ConfigRenderOptions;->getJson()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 514
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const/4 v0, 0x2

    .end local v15    # "separatorCount":I
    .local v0, "separatorCount":I
    goto :goto_7

    .line 517
    .end local v0    # "separatorCount":I
    .restart local v15    # "separatorCount":I
    :cond_a
    const/4 v0, 0x1

    .line 519
    .end local v15    # "separatorCount":I
    .restart local v0    # "separatorCount":I
    :goto_7
    const/16 v1, 0xa

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v15, v0

    goto :goto_8

    .line 521
    .end local v0    # "separatorCount":I
    .restart local v15    # "separatorCount":I
    :cond_b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const/4 v0, 0x1

    move v15, v0

    .line 484
    .end local v9    # "k":Ljava/lang/String;
    .end local v16    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_8
    add-int/lit8 v5, v10, 0x1

    const/16 v9, 0xa

    goto/16 :goto_3

    .line 526
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v15

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 528
    if-eqz v11, :cond_e

    .line 529
    invoke-virtual/range {p4 .. p4}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 530
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    if-eqz v11, :cond_d

    .line 532
    invoke-static {v6, v7, v8}, Lcom/typesafe/config/impl/SimpleConfigObject;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 534
    :cond_d
    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .end local v11    # "outerBraces":Z
    .end local v12    # "innerIndent":I
    .end local v13    # "keys":[Ljava/lang/String;
    .end local v15    # "separatorCount":I
    :cond_e
    :goto_9
    if-eqz p3, :cond_f

    invoke-virtual/range {p4 .. p4}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 538
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    :cond_f
    return-void
.end method

.method public bridge synthetic replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigObject;->replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 6
    .param p1, "child"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "replacement"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 205
    .local v0, "newChildren":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 206
    .local v2, "old":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 207
    if-eqz p2, :cond_0

    .line 208
    invoke-interface {v2, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 210
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_1
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/typesafe/config/impl/ResolveStatus;->fromValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v4

    iget-boolean v5, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    return-object v1

    .line 215
    .end local v2    # "old":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_1
    goto :goto_0

    .line 216
    :cond_2
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimpleConfigObject.replaceChild did not find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->resolved:Z

    invoke-static {v0}, Lcom/typesafe/config/impl/ResolveStatus;->fromBoolean(Z)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    return-object v0
.end method

.method resolveSubstitutions(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 4
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

    .line 391
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v0, v1, :cond_0

    .line 392
    invoke-static {p1, p0}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    return-object v0

    .line 394
    :cond_0
    invoke-virtual {p2, p0}, Lcom/typesafe/config/impl/ResolveSource;->pushParent(Lcom/typesafe/config/impl/Container;)Lcom/typesafe/config/impl/ResolveSource;

    move-result-object v0

    .line 397
    .local v0, "sourceWithParent":Lcom/typesafe/config/impl/ResolveSource;
    :try_start_0
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;

    invoke-direct {v1, p1, v0}, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;-><init>(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)V

    .line 399
    .local v1, "modifier":Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;
    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/SimpleConfigObject;->modifyMayThrow(Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v2

    .line 400
    .local v2, "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    iget-object v3, v1, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-static {v3, v2}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ResolveResult;->asObjectResult()Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v3
    :try_end_0
    .catch Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 405
    .end local v1    # "modifier":Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;
    .end local v2    # "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v3, "unexpected checked exception"

    invoke-direct {v2, v3, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 401
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 402
    .local v1, "e":Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
    throw v1
.end method

.method public size()I
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->unwrapped()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public unwrapped()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 243
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    goto :goto_0

    .line 245
    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/ConfigValue;",
            ">;"
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected bridge synthetic withFallbacksIgnored()Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->withFallbacksIgnored()Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    return-object v0
.end method

.method protected withFallbacksIgnored()Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 3

    .line 191
    iget-boolean v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    if-eqz v0, :cond_0

    .line 192
    return-object p0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/typesafe/config/impl/SimpleConfigObject;->newCopy(Lcom/typesafe/config/impl/ResolveStatus;Lcom/typesafe/config/ConfigOrigin;Z)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/typesafe/config/impl/Path;->newKey(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/SimpleConfigObject;->withOnlyPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic withOnlyPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->withOnlyPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method withOnlyPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 6
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 97
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->withOnlyPathOrNull(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    .line 98
    .local v0, "o":Lcom/typesafe/config/impl/SimpleConfigObject;
    if-nez v0, :cond_0

    .line 99
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    iget-boolean v5, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    .line 99
    return-object v1

    .line 103
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic withOnlyPathOrNull(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->withOnlyPathOrNull(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method protected withOnlyPathOrNull(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 8
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 73
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    .line 75
    .local v1, "next":Lcom/typesafe/config/impl/Path;
    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 77
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v1, :cond_1

    .line 78
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v3, :cond_0

    .line 79
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v3, v1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withOnlyPathOrNull(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    goto :goto_0

    .line 83
    :cond_0
    const/4 v2, 0x0

    .line 87
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 88
    const/4 v3, 0x0

    return-object v3

    .line 90
    :cond_2
    new-instance v3, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v4

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 91
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v6

    iget-boolean v7, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    .line 90
    return-object v3
.end method

.method public bridge synthetic withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigObject;->withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic withValue(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigObject;->withValue(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigObject;->withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method withValue(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 6
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;
    .param p2, "v"    # Lcom/typesafe/config/ConfigValue;

    .line 155
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    .line 158
    .local v1, "next":Lcom/typesafe/config/impl/Path;
    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0, v0, p2}, Lcom/typesafe/config/impl/SimpleConfigObject;->withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v2

    return-object v2

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 162
    .local v2, "child":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v3, :cond_1

    .line 164
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v3, v1, p2}, Lcom/typesafe/config/impl/AbstractConfigObject;->withValue(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/typesafe/config/impl/SimpleConfigObject;->withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v3

    return-object v3

    .line 167
    :cond_1
    move-object v3, p2

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "withValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v4

    .line 167
    invoke-virtual {v3, v4, v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->atPath(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v3

    .line 169
    .local v3, "subtree":Lcom/typesafe/config/impl/SimpleConfig;
    invoke-virtual {v3}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/typesafe/config/impl/SimpleConfigObject;->withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v4

    return-object v4
.end method

.method public withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/typesafe/config/ConfigValue;

    .line 137
    if-eqz p2, :cond_1

    .line 142
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    move-object v0, p2

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-static {p1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    goto :goto_0

    .line 145
    .end local v0    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 146
    .restart local v0    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    move-object v1, p2

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_0
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/typesafe/config/impl/ResolveStatus;->fromValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v3

    iget-boolean v4, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    return-object v1

    .line 138
    .end local v0    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_1
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Trying to store null ConfigValue in a ConfigObject"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic withoutKey(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public withoutKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/typesafe/config/impl/Path;->newKey(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/SimpleConfigObject;->withoutPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic withoutPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->withoutPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object p1

    return-object p1
.end method

.method withoutPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigObject;
    .locals 8
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 109
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    .line 111
    .local v1, "next":Lcom/typesafe/config/impl/Path;
    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 113
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    instance-of v3, v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v3, :cond_0

    .line 114
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v3, v1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withoutPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    .line 115
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 117
    .local v3, "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v4, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    .line 119
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 118
    invoke-static {v6}, Lcom/typesafe/config/impl/ResolveStatus;->fromValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v6

    iget-boolean v7, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    return-object v4

    .line 120
    .end local v3    # "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_0
    if-nez v1, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    .line 125
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 126
    .local v3, "smaller":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v4, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->value:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 127
    .local v5, "old":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 128
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v5    # "old":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_2
    goto :goto_0

    .line 130
    :cond_3
    new-instance v4, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    .line 131
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 130
    invoke-static {v6}, Lcom/typesafe/config/impl/ResolveStatus;->fromValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v6

    iget-boolean v7, p0, Lcom/typesafe/config/impl/SimpleConfigObject;->ignoresFallbacks:Z

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;Lcom/typesafe/config/impl/ResolveStatus;Z)V

    return-object v4

    .line 122
    .end local v3    # "smaller":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_4
    :goto_1
    return-object p0
.end method
