.class final Lcom/typesafe/config/impl/DefaultTransformer;
.super Ljava/lang/Object;
.source "DefaultTransformer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static transform(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 7
    .param p0, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p1, "requested"    # Lcom/typesafe/config/ConfigValueType;

    .line 21
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    if-ne v0, v1, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Lcom/typesafe/config/impl/DefaultTransformer$2;->$SwitchMap$com$typesafe$config$ConfigValueType:[I

    invoke-virtual {p1}, Lcom/typesafe/config/ConfigValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 55
    :pswitch_0
    goto/16 :goto_1

    .line 52
    :pswitch_1
    goto/16 :goto_1

    .line 43
    :pswitch_2
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    :cond_1
    new-instance v1, Lcom/typesafe/config/impl/ConfigBoolean;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/typesafe/config/impl/ConfigBoolean;-><init>(Lcom/typesafe/config/ConfigOrigin;Z)V

    return-object v1

    .line 44
    :cond_2
    :goto_0
    new-instance v1, Lcom/typesafe/config/impl/ConfigBoolean;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/typesafe/config/impl/ConfigBoolean;-><init>(Lcom/typesafe/config/ConfigOrigin;Z)V

    return-object v1

    .line 39
    :pswitch_3
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    new-instance v1, Lcom/typesafe/config/impl/ConfigNull;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/ConfigNull;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    return-object v1

    .line 26
    :pswitch_4
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 27
    .local v1, "v":Ljava/lang/Long;
    new-instance v2, Lcom/typesafe/config/impl/ConfigLong;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/typesafe/config/impl/ConfigLong;-><init>(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 28
    .end local v1    # "v":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 32
    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 33
    .local v1, "v":Ljava/lang/Double;
    new-instance v2, Lcom/typesafe/config/impl/ConfigDouble;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/typesafe/config/impl/ConfigDouble;-><init>(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 34
    .end local v1    # "v":Ljava/lang/Double;
    :catch_1
    move-exception v1

    .line 37
    nop

    .line 60
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    :goto_1
    goto/16 :goto_5

    :cond_4
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    if-ne p1, v0, :cond_5

    .line 64
    sget-object v0, Lcom/typesafe/config/impl/DefaultTransformer$2;->$SwitchMap$com$typesafe$config$ConfigValueType:[I

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/ConfigValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 75
    :pswitch_5
    goto :goto_2

    .line 78
    :pswitch_6
    goto :goto_2

    .line 72
    :pswitch_7
    goto :goto_2

    .line 67
    :pswitch_8
    new-instance v0, Lcom/typesafe/config/impl/ConfigString$Quoted;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->transformToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ConfigString$Quoted;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 67
    return-object v0

    .line 81
    :goto_2
    goto/16 :goto_5

    .line 83
    :cond_5
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    if-ne v0, v1, :cond_9

    .line 91
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 92
    .local v0, "o":Lcom/typesafe/config/impl/AbstractConfigObject;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    .local v3, "key":Ljava/lang/String;
    const/16 v4, 0xa

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 97
    .local v4, "i":I
    if-gez v4, :cond_6

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/typesafe/config/impl/AbstractConfigObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    nop

    .line 103
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "i":I
    goto :goto_3

    .line 100
    .restart local v3    # "key":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 104
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    .line 106
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .local v2, "entryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/typesafe/config/impl/AbstractConfigValue;>;>;"
    new-instance v3, Lcom/typesafe/config/impl/DefaultTransformer$1;

    invoke-direct {v3}, Lcom/typesafe/config/impl/DefaultTransformer$1;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 120
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    goto :goto_4

    .line 122
    :cond_8
    new-instance v4, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v4

    .line 126
    .end local v0    # "o":Lcom/typesafe/config/impl/AbstractConfigObject;
    .end local v1    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v2    # "entryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/typesafe/config/impl/AbstractConfigValue;>;>;"
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_9
    :goto_5
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
