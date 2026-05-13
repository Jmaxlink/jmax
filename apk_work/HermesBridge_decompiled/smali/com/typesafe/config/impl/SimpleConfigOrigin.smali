.class final Lcom/typesafe/config/impl/SimpleConfigOrigin;
.super Ljava/lang/Object;
.source "SimpleConfigOrigin.java"

# interfaces
.implements Lcom/typesafe/config/ConfigOrigin;


# static fields
.field static final MERGE_OF_PREFIX:Ljava/lang/String; = "merge of "


# instance fields
.field private final commentsOrNull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final endLineNumber:I

.field private final lineNumber:I

.field private final originType:Lcom/typesafe/config/impl/OriginType;

.field private final resourceOrNull:Ljava/lang/String;

.field private final urlOrNull:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "endLineNumber"    # I
    .param p4, "originType"    # Lcom/typesafe/config/impl/OriginType;
    .param p5, "urlOrNull"    # Ljava/lang/String;
    .param p6, "resourceOrNull"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/typesafe/config/impl/OriginType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p7, "commentsOrNull":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    .line 40
    iput p3, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    .line 41
    iput-object p4, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    .line 42
    iput-object p5, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    .line 44
    iput-object p7, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    .line 45
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "description may not be null"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static applyFieldsDelta(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    .local p0, "base":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    .local p1, "delta":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    .line 506
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 507
    .local v2, "baseEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 508
    .local v3, "f":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 514
    :cond_0
    sget-object v4, Lcom/typesafe/config/impl/SimpleConfigOrigin$1;->$SwitchMap$com$typesafe$config$impl$SerializedConfigValue$SerializedField:[I

    invoke-virtual {v3}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 558
    :pswitch_0
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "should not appear here: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :pswitch_1
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applying fields, base object should not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :pswitch_2
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 536
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    goto :goto_1

    .line 526
    :pswitch_3
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 527
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 529
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    goto :goto_1

    .line 519
    :pswitch_4
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 520
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 522
    :cond_3
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    goto :goto_1

    .line 549
    :pswitch_5
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    goto :goto_1

    .line 516
    :pswitch_6
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    nop

    .line 561
    .end local v2    # "baseEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    .end local v3    # "f":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    :goto_1
    goto/16 :goto_0

    .line 562
    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static fieldsDelta(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 426
    .local p0, "base":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    .local p1, "child":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    .line 428
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 429
    .local v2, "baseEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 430
    .local v3, "f":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 433
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 435
    sget-object v4, Lcom/typesafe/config/impl/SimpleConfigOrigin$1;->$SwitchMap$com$typesafe$config$impl$SerializedConfigValue$SerializedField:[I

    invoke-virtual {v3}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, -0x1

    const-string v6, ""

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 466
    :pswitch_0
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "should not appear here: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :pswitch_1
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computing delta, base object should not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :pswitch_2
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    goto :goto_1

    .line 450
    :pswitch_3
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    goto :goto_1

    .line 447
    :pswitch_4
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    goto :goto_1

    .line 445
    :pswitch_5
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v4, "should always be an ORIGIN_TYPE field"

    invoke-direct {v1, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :pswitch_6
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_END_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    goto :goto_1

    .line 439
    :pswitch_7
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    goto :goto_1

    .line 437
    :pswitch_8
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "origin missing description field? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    .end local v2    # "baseEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    .end local v3    # "f":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    :cond_1
    :goto_1
    goto/16 :goto_0

    .line 473
    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static fromBase(Lcom/typesafe/config/impl/SimpleConfigOrigin;Ljava/util/Map;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 3
    .param p0, "baseOrigin"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/SimpleConfigOrigin;",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/typesafe/config/impl/SimpleConfigOrigin;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    .local p1, "delta":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->toFields()Ljava/util/Map;

    move-result-object v0

    .local v0, "baseFields":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    goto :goto_0

    .line 571
    .end local v0    # "baseFields":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 572
    .restart local v0    # "baseFields":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {v0, p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->applyFieldsDelta(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 573
    .local v1, "fields":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->fromFields(Ljava/util/Map;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    return-object v2
.end method

.method static fromFields(Ljava/util/Map;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/typesafe/config/impl/SimpleConfigOrigin;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    const/4 v1, 0x0

    return-object v1

    .line 481
    :cond_0
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_DESCRIPTION:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    .local v1, "description":Ljava/lang/String;
    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/Integer;

    .line 483
    .local v10, "lineNumber":Ljava/lang/Integer;
    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_END_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/Integer;

    .line 484
    .local v11, "endLineNumber":Ljava/lang/Integer;
    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_TYPE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/Number;

    .line 485
    .local v12, "originTypeOrdinal":Ljava/lang/Number;
    if-eqz v12, :cond_4

    .line 487
    invoke-static {}, Lcom/typesafe/config/impl/OriginType;->values()[Lcom/typesafe/config/impl/OriginType;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Number;->byteValue()B

    move-result v3

    aget-object v13, v2, v3

    .line 488
    .local v13, "originType":Lcom/typesafe/config/impl/OriginType;
    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 489
    .local v14, "urlOrNull":Ljava/lang/String;
    sget-object v2, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 491
    .local v2, "resourceOrNull":Ljava/lang/String;
    sget-object v3, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/util/List;

    .line 494
    .local v15, "commentsOrNull":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/typesafe/config/impl/OriginType;->RESOURCE:Lcom/typesafe/config/impl/OriginType;

    if-ne v13, v3, :cond_1

    if-nez v2, :cond_1

    .line 495
    move-object v2, v1

    move-object/from16 v16, v2

    goto :goto_0

    .line 497
    :cond_1
    move-object/from16 v16, v2

    .end local v2    # "resourceOrNull":Ljava/lang/String;
    .local v16, "resourceOrNull":Ljava/lang/String;
    :goto_0
    new-instance v17, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    const/4 v2, -0x1

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v11, :cond_3

    .line 498
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    nop

    :goto_2
    move v5, v2

    move-object/from16 v2, v17

    move-object v3, v1

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v8, v16

    move-object v9, v15

    invoke-direct/range {v2 .. v9}, Lcom/typesafe/config/impl/SimpleConfigOrigin;-><init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 497
    return-object v17

    .line 486
    .end local v13    # "originType":Lcom/typesafe/config/impl/OriginType;
    .end local v14    # "urlOrNull":Ljava/lang/String;
    .end local v15    # "commentsOrNull":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "resourceOrNull":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing ORIGIN_TYPE field"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static mergeOrigins(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigOrigin;
    .locals 2
    .param p0, "a"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "b"    # Lcom/typesafe/config/ConfigOrigin;

    .line 347
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeTwo(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method static mergeOrigins(Ljava/util/Collection;)Lcom/typesafe/config/ConfigOrigin;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/typesafe/config/ConfigOrigin;",
            ">;)",
            "Lcom/typesafe/config/ConfigOrigin;"
        }
    .end annotation

    .line 359
    .local p0, "stack":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/typesafe/config/ConfigOrigin;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 361
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 362
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/ConfigOrigin;

    return-object v0

    .line 363
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 364
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 365
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/typesafe/config/ConfigOrigin;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeTwo(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    return-object v1

    .line 367
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/typesafe/config/ConfigOrigin;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v0, "remaining":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/SimpleConfigOrigin;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/ConfigOrigin;

    .line 369
    .local v4, "o":Lcom/typesafe/config/ConfigOrigin;
    move-object v5, v4

    check-cast v5, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v4    # "o":Lcom/typesafe/config/ConfigOrigin;
    goto :goto_0

    .line 371
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    .line 373
    .local v3, "c":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    .line 375
    .local v4, "b":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 376
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    .line 377
    .local v5, "a":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 379
    invoke-static {v5, v4, v3}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeThree(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v6

    .line 381
    .local v6, "merged":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v3    # "c":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .end local v4    # "b":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .end local v5    # "a":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .end local v6    # "merged":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    goto :goto_1

    .line 385
    :cond_3
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeOrigins(Ljava/util/Collection;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    return-object v1

    .line 360
    .end local v0    # "remaining":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/SimpleConfigOrigin;>;"
    :cond_4
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "can\'t merge empty list of origins"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static mergeOrigins(Ljava/util/List;)Lcom/typesafe/config/ConfigOrigin;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)",
            "Lcom/typesafe/config/ConfigOrigin;"
        }
    .end annotation

    .line 351
    .local p0, "stack":Ljava/util/List;, "Ljava/util/List<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .local v0, "origins":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigOrigin;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 353
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v2    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 355
    :cond_0
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeOrigins(Ljava/util/Collection;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    return-object v1
.end method

.method private static mergeThree(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 2
    .param p0, "a"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .param p1, "b"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .param p2, "c"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;

    .line 339
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->similarity(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)I

    move-result v0

    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->similarity(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 340
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeTwo(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeTwo(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeTwo(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->mergeTwo(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method private static mergeTwo(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 20
    .param p0, "a"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .param p1, "b"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    iget-object v3, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    if-ne v2, v3, :cond_0

    .line 237
    iget-object v2, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    .local v2, "mergedType":Lcom/typesafe/config/impl/OriginType;
    goto :goto_0

    .line 239
    .end local v2    # "mergedType":Lcom/typesafe/config/impl/OriginType;
    :cond_0
    sget-object v2, Lcom/typesafe/config/impl/OriginType;->GENERIC:Lcom/typesafe/config/impl/OriginType;

    .line 244
    .restart local v2    # "mergedType":Lcom/typesafe/config/impl/OriginType;
    :goto_0
    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    .line 245
    .local v3, "aDesc":Ljava/lang/String;
    iget-object v4, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    .line 246
    .local v4, "bDesc":Ljava/lang/String;
    const-string v5, "merge of "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 246
    :cond_1
    move-object v11, v3

    .line 248
    .end local v3    # "aDesc":Ljava/lang/String;
    .local v11, "aDesc":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_2

    .line 248
    :cond_2
    move-object v12, v4

    .line 251
    .end local v4    # "bDesc":Ljava/lang/String;
    .local v12, "bDesc":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    move-object v3, v11

    .line 254
    .local v3, "mergedDesc":Ljava/lang/String;
    iget v4, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    if-gez v4, :cond_3

    .line 255
    iget v4, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    .local v4, "mergedStartLine":I
    goto :goto_3

    .line 256
    .end local v4    # "mergedStartLine":I
    :cond_3
    iget v4, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    if-gez v4, :cond_4

    .line 257
    iget v4, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    .restart local v4    # "mergedStartLine":I
    goto :goto_3

    .line 259
    .end local v4    # "mergedStartLine":I
    :cond_4
    iget v4, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    iget v5, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 261
    .restart local v4    # "mergedStartLine":I
    :goto_3
    iget v5, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    iget v6, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v13, v3

    move v14, v4

    move v15, v5

    .local v5, "mergedEndLine":I
    goto :goto_4

    .line 269
    .end local v3    # "mergedDesc":Ljava/lang/String;
    .end local v4    # "mergedStartLine":I
    .end local v5    # "mergedEndLine":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "aFull":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "bFull":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 272
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 274
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "mergedDesc":Ljava/lang/String;
    const/4 v6, -0x1

    .line 279
    .local v6, "mergedStartLine":I
    const/4 v7, -0x1

    move-object v13, v5

    move v14, v6

    move v15, v7

    .line 283
    .end local v3    # "aFull":Ljava/lang/String;
    .end local v4    # "bFull":Ljava/lang/String;
    .end local v5    # "mergedDesc":Ljava/lang/String;
    .end local v6    # "mergedStartLine":I
    .local v13, "mergedDesc":Ljava/lang/String;
    .local v14, "mergedStartLine":I
    .local v15, "mergedEndLine":I
    :goto_4
    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    iget-object v4, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 284
    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    move-object/from16 v16, v3

    .local v3, "mergedURL":Ljava/lang/String;
    goto :goto_5

    .line 286
    .end local v3    # "mergedURL":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v16, v3

    .line 290
    .local v16, "mergedURL":Ljava/lang/String;
    :goto_5
    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    iget-object v4, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 291
    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    move-object/from16 v17, v3

    .local v3, "mergedResource":Ljava/lang/String;
    goto :goto_6

    .line 293
    .end local v3    # "mergedResource":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v17, v3

    .line 296
    .local v17, "mergedResource":Ljava/lang/String;
    :goto_6
    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    iget-object v4, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 297
    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    move-object/from16 v18, v3

    .local v3, "mergedComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7

    .line 299
    .end local v3    # "mergedComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .restart local v3    # "mergedComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    if-eqz v4, :cond_b

    .line 301
    iget-object v4, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    :cond_b
    iget-object v4, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    if-eqz v4, :cond_c

    .line 303
    iget-object v4, v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    :cond_c
    move-object/from16 v18, v3

    .end local v3    # "mergedComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "mergedComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7
    new-instance v19, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-object/from16 v3, v19

    move-object v4, v13

    move v5, v14

    move v6, v15

    move-object v7, v2

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    invoke-direct/range {v3 .. v10}, Lcom/typesafe/config/impl/SimpleConfigOrigin;-><init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v19
.end method

.method static newFile(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;

    .line 54
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, "url":Ljava/lang/String;
    goto :goto_0

    .line 55
    .end local v0    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 58
    .local v0, "url":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    sget-object v6, Lcom/typesafe/config/impl/OriginType;->FILE:Lcom/typesafe/config/impl/OriginType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v1

    move-object v3, p0

    move-object v7, v0

    invoke-direct/range {v2 .. v9}, Lcom/typesafe/config/impl/SimpleConfigOrigin;-><init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method static newResource(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newResource(Ljava/lang/String;Ljava/net/URL;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method static newResource(Ljava/lang/String;Ljava/net/URL;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 10
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/net/URL;

    .line 68
    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "desc":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 72
    .restart local v0    # "desc":Ljava/lang/String;
    :goto_0
    new-instance v9, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    sget-object v5, Lcom/typesafe/config/impl/OriginType;->RESOURCE:Lcom/typesafe/config/impl/OriginType;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v6, v1

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v1, v9

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/typesafe/config/impl/SimpleConfigOrigin;-><init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v9
.end method

.method static newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 9
    .param p0, "description"    # Ljava/lang/String;

    .line 48
    new-instance v8, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    sget-object v4, Lcom/typesafe/config/impl/OriginType;->GENERIC:Lcom/typesafe/config/impl/OriginType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/typesafe/config/impl/SimpleConfigOrigin;-><init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v8
.end method

.method static newURL(Ljava/net/URL;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 10
    .param p0, "url"    # Ljava/net/URL;

    .line 62
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "u":Ljava/lang/String;
    new-instance v9, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    sget-object v4, Lcom/typesafe/config/impl/OriginType;->URL:Lcom/typesafe/config/impl/OriginType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, v9

    move-object v1, v8

    move-object v5, v8

    invoke-direct/range {v0 .. v7}, Lcom/typesafe/config/impl/SimpleConfigOrigin;-><init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v9
.end method

.method private static similarity(Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)I
    .locals 3
    .param p0, "a"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .param p1, "b"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;

    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "count":I
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    iget-object v2, p1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    if-ne v1, v2, :cond_0

    .line 314
    add-int/lit8 v0, v0, 0x1

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    iget-object v2, p1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    add-int/lit8 v0, v0, 0x1

    .line 321
    iget v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    iget v2, p1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    if-ne v1, v2, :cond_1

    .line 322
    add-int/lit8 v0, v0, 0x1

    .line 323
    :cond_1
    iget v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    iget v2, p1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    if-ne v1, v2, :cond_2

    .line 324
    add-int/lit8 v0, v0, 0x1

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    iget-object v2, p1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    iget-object v2, p1, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 328
    add-int/lit8 v0, v0, 0x1

    .line 331
    :cond_4
    return v0
.end method


# virtual methods
.method addURL(Ljava/net/URL;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 9
    .param p1, "url"    # Ljava/net/URL;

    .line 91
    new-instance v8, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    iget v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    iget v3, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    iget-object v4, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    iget-object v6, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    iget-object v7, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/typesafe/config/impl/SimpleConfigOrigin;-><init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 91
    return-object v8
.end method

.method appendComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/typesafe/config/impl/SimpleConfigOrigin;"
        }
    .end annotation

    .line 119
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .local v0, "merged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    return-object v1

    .line 120
    .end local v0    # "merged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object p0
.end method

.method public comments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 3

    .line 133
    iget v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    if-gez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    return-object v0

    .line 135
    :cond_0
    iget v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    iget v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    const-string v2, ": "

    if-ne v0, v1, :cond_1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 144
    instance-of v0, p1, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    .line 147
    .local v0, "otherOrigin":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    iget v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    iget v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    .line 149
    invoke-static {v2, v3}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    iget-object v3, v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    .line 150
    invoke-static {v2, v3}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 147
    :goto_0
    return v1

    .line 152
    .end local v0    # "otherOrigin":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    :cond_1
    return v1
.end method

.method public filename()Ljava/lang/String;
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    sget-object v1, Lcom/typesafe/config/impl/OriginType;->FILE:Lcom/typesafe/config/impl/OriginType;

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 181
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .local v0, "url":Ljava/net/URL;
    nop

    .line 185
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 188
    :cond_1
    return-object v1

    .line 182
    .end local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/net/MalformedURLException;
    return-object v1

    .line 191
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_2
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    .line 159
    .local v0, "h":I
    iget v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    .line 160
    .end local v0    # "h":I
    .local v1, "h":I
    iget v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 161
    .end local v1    # "h":I
    .restart local v0    # "h":I
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/OriginType;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    .line 162
    .end local v0    # "h":I
    .restart local v1    # "h":I
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x29

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x29

    .line 166
    :cond_1
    return v1
.end method

.method public lineNumber()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    return v0
.end method

.method prependComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/typesafe/config/impl/SimpleConfigOrigin;"
        }
    .end annotation

    .line 106
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0

    .line 111
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v0, "merged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    return-object v1

    .line 107
    .end local v0    # "merged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object p0
.end method

.method public resource()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    return-object v0
.end method

.method toFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 392
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_DESCRIPTION:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    if-ltz v1, :cond_0

    .line 395
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    iget v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_0
    iget v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    if-ltz v1, :cond_1

    .line 397
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_END_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    iget v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_1
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_TYPE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    invoke-virtual {v2}, Lcom/typesafe/config/impl/OriginType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 402
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 404
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_3
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 406
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_4
    return-object v0
.end method

.method toFieldsDelta(Lcom/typesafe/config/impl/SimpleConfigOrigin;)Ljava/util/Map;
    .locals 2
    .param p1, "baseOrigin"    # Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/SimpleConfigOrigin;",
            ")",
            "Ljava/util/Map<",
            "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 413
    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->toFields()Ljava/util/Map;

    move-result-object v0

    .local v0, "baseFields":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    goto :goto_0

    .line 416
    .end local v0    # "baseFields":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 417
    .restart local v0    # "baseFields":Ljava/util/Map;, "Ljava/util/Map<Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->toFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->fieldsDelta(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigOrigin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Ljava/net/URL;
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    return-object v1

    .line 201
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/net/MalformedURLException;
    return-object v1
.end method

.method public bridge synthetic withComments(Ljava/util/List;)Lcom/typesafe/config/ConfigOrigin;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object p1

    return-object p1
.end method

.method public withComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/typesafe/config/impl/SimpleConfigOrigin;"
        }
    .end annotation

    .line 97
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    return-object p0

    .line 100
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    iget v3, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    iget v4, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    iget-object v5, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    iget-object v6, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    iget-object v7, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/typesafe/config/impl/SimpleConfigOrigin;-><init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic withLineNumber(I)Lcom/typesafe/config/ConfigOrigin;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withLineNumber(I)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object p1

    return-object p1
.end method

.method public withLineNumber(I)Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 9
    .param p1, "lineNumber"    # I

    .line 82
    iget v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->lineNumber:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->endLineNumber:I

    if-ne p1, v0, :cond_0

    .line 83
    return-object p0

    .line 85
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description:Ljava/lang/String;

    iget-object v5, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->originType:Lcom/typesafe/config/impl/OriginType;

    iget-object v6, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->urlOrNull:Ljava/lang/String;

    iget-object v7, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->resourceOrNull:Ljava/lang/String;

    iget-object v8, p0, Lcom/typesafe/config/impl/SimpleConfigOrigin;->commentsOrNull:Ljava/util/List;

    move-object v1, v0

    move v3, p1

    move v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/typesafe/config/impl/SimpleConfigOrigin;-><init>(Ljava/lang/String;IILcom/typesafe/config/impl/OriginType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
