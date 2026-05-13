.class public Lcom/typesafe/config/impl/ConfigBeanImpl;
.super Ljava/lang/Object;
.source "ConfigBeanImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInternal(Lcom/typesafe/config/Config;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 17
    .param p0, "config"    # Lcom/typesafe/config/Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/typesafe/config/Config;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 44
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v0, v1

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfig;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    sget-object v3, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v0, v3, :cond_d

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 49
    .local v3, "configProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 50
    .local v4, "originalNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p0 .. p0}, Lcom/typesafe/config/Config;->root()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 51
    .local v5, "configProp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 52
    .local v6, "originalName":Ljava/lang/String;
    invoke-static {v6}, Lcom/typesafe/config/impl/ConfigImplUtil;->toCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "camelName":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v5    # "configProp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    .end local v6    # "originalName":Ljava/lang/String;
    .end local v7    # "camelName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 64
    :cond_1
    const/4 v5, 0x0

    .line 66
    .local v5, "beanInfo":Ljava/beans/BeanInfo;
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v5, v0

    .line 69
    nop

    .line 72
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "beanProps":Ljava/util/List;, "Ljava/util/List<Ljava/beans/PropertyDescriptor;>;"
    invoke-interface {v5}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    if-ge v9, v7, :cond_4

    aget-object v10, v6, v9

    .line 74
    .local v10, "beanProp":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v10}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    if-nez v11, :cond_2

    .line 75
    goto :goto_3

    .line 77
    :cond_2
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v10    # "beanProp":Ljava/beans/PropertyDescriptor;
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 82
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v6, "problems":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/beans/PropertyDescriptor;

    .line 84
    .local v9, "beanProp":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v9}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    .line 85
    .local v10, "setter":Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    aget-object v11, v11, v8

    .line 87
    .local v11, "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v11}, Lcom/typesafe/config/impl/ConfigBeanImpl;->getValueTypeOrNull(Ljava/lang/Class;)Lcom/typesafe/config/ConfigValueType;

    move-result-object v12

    .line 88
    .local v12, "expectedType":Lcom/typesafe/config/ConfigValueType;
    if-eqz v12, :cond_7

    .line 89
    invoke-virtual {v9}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 90
    .local v13, "name":Ljava/lang/String;
    if-nez v13, :cond_5

    .line 91
    invoke-virtual {v9}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 92
    :cond_5
    invoke-static {v13}, Lcom/typesafe/config/impl/Path;->newKey(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v14

    .line 93
    .local v14, "path":Lcom/typesafe/config/impl/Path;
    invoke-virtual {v9}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 94
    .local v15, "configValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v15, :cond_6

    .line 95
    invoke-static {v14, v12, v15, v6}, Lcom/typesafe/config/impl/SimpleConfig;->checkValid(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/util/List;)V

    goto :goto_5

    .line 97
    :cond_6
    invoke-static {v2, v9}, Lcom/typesafe/config/impl/ConfigBeanImpl;->isOptionalProperty(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 98
    invoke-interface/range {p0 .. p0}, Lcom/typesafe/config/Config;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v8

    invoke-static {v6, v12, v14, v8}, Lcom/typesafe/config/impl/SimpleConfig;->addMissing(Ljava/util/List;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;)V

    .line 102
    .end local v9    # "beanProp":Ljava/beans/PropertyDescriptor;
    .end local v10    # "setter":Ljava/lang/reflect/Method;
    .end local v11    # "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "expectedType":Lcom/typesafe/config/ConfigValueType;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "path":Lcom/typesafe/config/impl/Path;
    .end local v15    # "configValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_7
    :goto_5
    const/4 v8, 0x0

    goto :goto_4

    .line 104
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 109
    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 110
    .local v7, "bean":Ljava/lang/Object;, "TT;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/beans/PropertyDescriptor;

    .line 111
    .restart local v9    # "beanProp":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v9}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    .line 112
    .restart local v10    # "setter":Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    .line 113
    .local v11, "parameterType":Ljava/lang/reflect/Type;
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v13, v13, v12

    .line 114
    .local v13, "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 116
    .local v14, "configPropName":Ljava/lang/String;
    if-nez v14, :cond_a

    .line 118
    invoke-static {v2, v9}, Lcom/typesafe/config/impl/ConfigBeanImpl;->isOptionalProperty(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 119
    goto :goto_6

    .line 122
    :cond_9
    new-instance v8, Lcom/typesafe/config/ConfigException$Missing;

    invoke-virtual {v9}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/typesafe/config/ConfigException$Missing;-><init>(Ljava/lang/String;)V

    .end local v3    # "configProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v4    # "originalNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "beanInfo":Ljava/beans/BeanInfo;
    .end local p0    # "config":Lcom/typesafe/config/Config;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v8

    .line 124
    .restart local v3    # "configProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .restart local v4    # "originalNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "beanInfo":Ljava/beans/BeanInfo;
    .restart local p0    # "config":Lcom/typesafe/config/Config;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_a
    invoke-static {v2, v11, v13, v1, v14}, Lcom/typesafe/config/impl/ConfigBeanImpl;->getValue(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/typesafe/config/Config;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 125
    .local v15, "unwrapped":Ljava/lang/Object;
    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    nop

    .end local v9    # "beanProp":Ljava/beans/PropertyDescriptor;
    .end local v10    # "setter":Ljava/lang/reflect/Method;
    .end local v11    # "parameterType":Ljava/lang/reflect/Type;
    .end local v13    # "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "configPropName":Ljava/lang/String;
    .end local v15    # "unwrapped":Ljava/lang/Object;
    goto :goto_6

    .line 127
    :cond_b
    return-object v7

    .line 105
    .end local v7    # "bean":Ljava/lang/Object;, "TT;"
    :cond_c
    new-instance v7, Lcom/typesafe/config/ConfigException$ValidationFailed;

    invoke-direct {v7, v6}, Lcom/typesafe/config/ConfigException$ValidationFailed;-><init>(Ljava/lang/Iterable;)V

    .end local v3    # "configProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v4    # "originalNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "beanInfo":Ljava/beans/BeanInfo;
    .end local p0    # "config":Lcom/typesafe/config/Config;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    .end local v0    # "beanProps":Ljava/util/List;, "Ljava/util/List<Ljava/beans/PropertyDescriptor;>;"
    .end local v6    # "problems":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    .restart local v3    # "configProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .restart local v4    # "originalNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "beanInfo":Ljava/beans/BeanInfo;
    .restart local p0    # "config":Lcom/typesafe/config/Config;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Lcom/typesafe/config/ConfigException$BadBean;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling bean method on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " caused an exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/typesafe/config/ConfigException$BadBean;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 132
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Lcom/typesafe/config/ConfigException$BadBean;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getters and setters are not accessible, they must be for use as a bean"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/typesafe/config/ConfigException$BadBean;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 130
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v6, Lcom/typesafe/config/ConfigException$BadBean;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needs to be instantiable to be used as a bean"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/typesafe/config/ConfigException$BadBean;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 128
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Lcom/typesafe/config/ConfigException$BadBean;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needs a public no-args constructor to be used as a bean"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/typesafe/config/ConfigException$BadBean;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 67
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 68
    .local v0, "e":Ljava/beans/IntrospectionException;
    new-instance v6, Lcom/typesafe/config/ConfigException$BadBean;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not get bean information for class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/typesafe/config/ConfigException$BadBean;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 45
    .end local v0    # "e":Ljava/beans/IntrospectionException;
    .end local v3    # "configProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v4    # "originalNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "beanInfo":Ljava/beans/BeanInfo;
    :cond_d
    new-instance v0, Lcom/typesafe/config/ConfigException$NotResolved;

    const-string v3, "need to Config#resolve() a config before using it to initialize a bean, see the API docs for Config#resolve()"

    invoke-direct {v0, v3}, Lcom/typesafe/config/ConfigException$NotResolved;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p0, "beanClass"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 295
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 296
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-object v0

    .line 298
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 302
    if-nez p0, :cond_0

    .line 303
    const/4 v0, 0x0

    return-object v0

    .line 305
    :cond_0
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/ConfigBeanImpl;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private static getListValue(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/typesafe/config/Config;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "parameterType"    # Ljava/lang/reflect/Type;
    .param p3, "config"    # Lcom/typesafe/config/Config;
    .param p4, "configPropName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/typesafe/config/Config;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 200
    .local p0, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 202
    .local v0, "elementType":Ljava/lang/reflect/Type;
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 203
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getBooleanList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 204
    :cond_0
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 205
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 206
    :cond_1
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_2

    .line 207
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getDoubleList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 208
    :cond_2
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_3

    .line 209
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getLongList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 210
    :cond_3
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 211
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 212
    :cond_4
    const-class v1, Ljava/time/Duration;

    if-ne v0, v1, :cond_5

    .line 213
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getDurationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 214
    :cond_5
    const-class v1, Lcom/typesafe/config/ConfigMemorySize;

    if-ne v0, v1, :cond_6

    .line 215
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getMemorySizeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 216
    :cond_6
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_7

    .line 217
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getAnyRefList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 218
    :cond_7
    const-class v1, Lcom/typesafe/config/Config;

    if-ne v0, v1, :cond_8

    .line 219
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 220
    :cond_8
    const-class v1, Lcom/typesafe/config/ConfigObject;

    if-ne v0, v1, :cond_9

    .line 221
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getObjectList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 222
    :cond_9
    const-class v1, Lcom/typesafe/config/ConfigValue;

    if-ne v0, v1, :cond_a

    .line 223
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getList(Ljava/lang/String;)Lcom/typesafe/config/ConfigList;

    move-result-object v1

    return-object v1

    .line 224
    :cond_a
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 226
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-interface {p3, v1, p4}, Lcom/typesafe/config/Config;->getEnumList(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "enumValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Enum;>;"
    return-object v1

    .line 228
    .end local v1    # "enumValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Enum;>;"
    :cond_b
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/typesafe/config/impl/ConfigBeanImpl;->hasAtLeastOneBeanProperty(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "beanList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 231
    .local v2, "configList":Ljava/util/List;, "Ljava/util/List<+Lcom/typesafe/config/Config;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/Config;

    .line 232
    .local v4, "listMember":Lcom/typesafe/config/Config;
    move-object v5, v0

    check-cast v5, Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/typesafe/config/impl/ConfigBeanImpl;->createInternal(Lcom/typesafe/config/Config;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v4    # "listMember":Lcom/typesafe/config/Config;
    goto :goto_0

    .line 234
    :cond_c
    return-object v1

    .line 236
    .end local v1    # "beanList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "configList":Ljava/util/List;, "Ljava/util/List<+Lcom/typesafe/config/Config;>;"
    :cond_d
    new-instance v1, Lcom/typesafe/config/ConfigException$BadBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bean property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has unsupported list element type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BadBean;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getSetValue(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/typesafe/config/Config;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "parameterType"    # Ljava/lang/reflect/Type;
    .param p3, "config"    # Lcom/typesafe/config/Config;
    .param p4, "configPropName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/typesafe/config/Config;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 196
    .local p0, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/typesafe/config/impl/ConfigBeanImpl;->getListValue(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/typesafe/config/Config;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getValue(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/typesafe/config/Config;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "parameterType"    # Ljava/lang/reflect/Type;
    .param p3, "config"    # Lcom/typesafe/config/Config;
    .param p4, "configPropName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/typesafe/config/Config;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 149
    .local p0, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    if-eq p2, v0, :cond_15

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    goto/16 :goto_3

    .line 151
    :cond_0
    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_14

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    goto/16 :goto_2

    .line 153
    :cond_1
    const-class v0, Ljava/lang/Double;

    if-eq p2, v0, :cond_13

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    goto/16 :goto_1

    .line 155
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-eq p2, v0, :cond_12

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    goto/16 :goto_0

    .line 157
    :cond_3
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_4

    .line 158
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_4
    const-class v0, Ljava/time/Duration;

    if-ne p2, v0, :cond_5

    .line 160
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getDuration(Ljava/lang/String;)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 161
    :cond_5
    const-class v0, Lcom/typesafe/config/ConfigMemorySize;

    if-ne p2, v0, :cond_6

    .line 162
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getMemorySize(Ljava/lang/String;)Lcom/typesafe/config/ConfigMemorySize;

    move-result-object v0

    return-object v0

    .line 163
    :cond_6
    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_7

    .line 164
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getAnyRef(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 165
    :cond_7
    const-class v0, Ljava/util/List;

    if-ne p2, v0, :cond_8

    .line 166
    invoke-static {p0, p1, p2, p3, p4}, Lcom/typesafe/config/impl/ConfigBeanImpl;->getListValue(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/typesafe/config/Config;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 167
    :cond_8
    const-class v0, Ljava/util/Set;

    if-ne p2, v0, :cond_9

    .line 168
    invoke-static {p0, p1, p2, p3, p4}, Lcom/typesafe/config/impl/ConfigBeanImpl;->getSetValue(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/typesafe/config/Config;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 169
    :cond_9
    const-class v0, Ljava/util/Map;

    if-ne p2, v0, :cond_b

    .line 171
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 172
    .local v0, "typeArgs":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_a

    aget-object v2, v0, v4

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_a

    .line 175
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getObject(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    invoke-interface {v1}, Lcom/typesafe/config/ConfigObject;->unwrapped()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 173
    :cond_a
    new-instance v2, Lcom/typesafe/config/ConfigException$BadBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bean property \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' of class "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " has unsupported Map<"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">, only Map<String,Object> is supported right now"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/typesafe/config/ConfigException$BadBean;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    .end local v0    # "typeArgs":[Ljava/lang/reflect/Type;
    :cond_b
    const-class v0, Lcom/typesafe/config/Config;

    if-ne p2, v0, :cond_c

    .line 177
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getConfig(Ljava/lang/String;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0

    .line 178
    :cond_c
    const-class v0, Lcom/typesafe/config/ConfigObject;

    if-ne p2, v0, :cond_d

    .line 179
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getObject(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0

    .line 180
    :cond_d
    const-class v0, Lcom/typesafe/config/ConfigValue;

    if-ne p2, v0, :cond_e

    .line 181
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getValue(Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    return-object v0

    .line 182
    :cond_e
    const-class v0, Lcom/typesafe/config/ConfigList;

    if-ne p2, v0, :cond_f

    .line 183
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getList(Ljava/lang/String;)Lcom/typesafe/config/ConfigList;

    move-result-object v0

    return-object v0

    .line 184
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    invoke-interface {p3, p2, p4}, Lcom/typesafe/config/Config;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 187
    .local v0, "enumValue":Ljava/lang/Enum;
    return-object v0

    .line 188
    .end local v0    # "enumValue":Ljava/lang/Enum;
    :cond_10
    invoke-static {p2}, Lcom/typesafe/config/impl/ConfigBeanImpl;->hasAtLeastOneBeanProperty(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 189
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getConfig(Ljava/lang/String;)Lcom/typesafe/config/Config;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/typesafe/config/impl/ConfigBeanImpl;->createInternal(Lcom/typesafe/config/Config;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 191
    :cond_11
    new-instance v0, Lcom/typesafe/config/ConfigException$BadBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bean property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BadBean;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_12
    :goto_0
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 154
    :cond_13
    :goto_1
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 152
    :cond_14
    :goto_2
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 150
    :cond_15
    :goto_3
    invoke-interface {p3, p4}, Lcom/typesafe/config/Config;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getValueTypeOrNull(Ljava/lang/Class;)Lcom/typesafe/config/ConfigValueType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/typesafe/config/ConfigValueType;"
        }
    .end annotation

    .line 242
    .local p0, "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_f

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    goto :goto_3

    .line 244
    :cond_0
    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_e

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    goto :goto_2

    .line 246
    :cond_1
    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_d

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    goto :goto_1

    .line 248
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_c

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    goto :goto_0

    .line 250
    :cond_3
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_4

    .line 251
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    return-object v0

    .line 252
    :cond_4
    const-class v0, Ljava/time/Duration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5

    .line 253
    return-object v1

    .line 254
    :cond_5
    const-class v0, Lcom/typesafe/config/ConfigMemorySize;

    if-ne p0, v0, :cond_6

    .line 255
    return-object v1

    .line 256
    :cond_6
    const-class v0, Ljava/util/List;

    if-ne p0, v0, :cond_7

    .line 257
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    return-object v0

    .line 258
    :cond_7
    const-class v0, Ljava/util/Map;

    if-ne p0, v0, :cond_8

    .line 259
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    return-object v0

    .line 260
    :cond_8
    const-class v0, Lcom/typesafe/config/Config;

    if-ne p0, v0, :cond_9

    .line 261
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    return-object v0

    .line 262
    :cond_9
    const-class v0, Lcom/typesafe/config/ConfigObject;

    if-ne p0, v0, :cond_a

    .line 263
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    return-object v0

    .line 264
    :cond_a
    const-class v0, Lcom/typesafe/config/ConfigList;

    if-ne p0, v0, :cond_b

    .line 265
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    return-object v0

    .line 267
    :cond_b
    return-object v1

    .line 249
    :cond_c
    :goto_0
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    return-object v0

    .line 247
    :cond_d
    :goto_1
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    return-object v0

    .line 245
    :cond_e
    :goto_2
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    return-object v0

    .line 243
    :cond_f
    :goto_3
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->BOOLEAN:Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method

.method private static hasAtLeastOneBeanProperty(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 272
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 274
    .local v0, "beanInfo":Ljava/beans/BeanInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 277
    nop

    .line 279
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 280
    .local v5, "beanProp":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 281
    const/4 v1, 0x1

    return v1

    .line 279
    .end local v5    # "beanProp":Ljava/beans/PropertyDescriptor;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    :cond_1
    return v1

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/beans/IntrospectionException;
    return v1
.end method

.method private static isOptionalProperty(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Z
    .locals 5
    .param p0, "beanClass"    # Ljava/lang/Class;
    .param p1, "beanProp"    # Ljava/beans/PropertyDescriptor;

    .line 289
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/ConfigBeanImpl;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 290
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-class v3, Lcom/typesafe/config/Optional;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, [Lcom/typesafe/config/Optional;

    array-length v3, v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    const-class v4, Lcom/typesafe/config/Optional;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, [Lcom/typesafe/config/Optional;

    array-length v3, v3

    if-lez v3, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method
