.class public final Lcom/typesafe/config/ConfigFactory;
.super Ljava/lang/Object;
.source "ConfigFactory.java"


# static fields
.field private static final OVERRIDE_WITH_ENV_PROPERTY_NAME:Ljava/lang/String; = "config.override_with_env_vars"

.field private static final STRATEGY_PROPERTY_NAME:Ljava/lang/String; = "config.strategy"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static checkedContextClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 146
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 151
    return-object v0

    .line 147
    :cond_0
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context class loader is not set for the current thread; if Thread.currentThread().getContextClassLoader() returns null, you must pass a ClassLoader explicitly to ConfigFactory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static defaultApplication()Lcom/typesafe/config/Config;
    .locals 1

    .line 507
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->defaultApplication(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static defaultApplication(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 532
    invoke-static {}, Lcom/typesafe/config/ConfigFactory;->getConfigLoadingStrategy()Lcom/typesafe/config/ConfigLoadingStrategy;

    move-result-object v0

    const-string v1, "defaultApplication"

    invoke-static {p0, v1}, Lcom/typesafe/config/ConfigFactory;->ensureClassLoader(Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/typesafe/config/ConfigLoadingStrategy;->parseApplicationConfig(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static defaultApplication(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 520
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->defaultApplication(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static defaultOverrides()Lcom/typesafe/config/Config;
    .locals 2

    .line 441
    invoke-static {}, Lcom/typesafe/config/ConfigFactory;->getOverrideWithEnv()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-static {}, Lcom/typesafe/config/ConfigFactory;->systemEnvironmentOverrides()Lcom/typesafe/config/Config;

    move-result-object v0

    invoke-static {}, Lcom/typesafe/config/ConfigFactory;->systemProperties()Lcom/typesafe/config/Config;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/typesafe/config/Config;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    invoke-static {}, Lcom/typesafe/config/ConfigFactory;->systemProperties()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static defaultOverrides(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 456
    invoke-static {}, Lcom/typesafe/config/ConfigFactory;->defaultOverrides()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static defaultReference()Lcom/typesafe/config/Config;
    .locals 1

    .line 361
    const-string v0, "defaultReference"

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->checkedContextClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->defaultReference(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static defaultReference(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 372
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->defaultReference(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static defaultReferenceUnresolved()Lcom/typesafe/config/Config;
    .locals 1

    .line 411
    const-string v0, "defaultReferenceUnresolved"

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->checkedContextClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->defaultReferenceUnresolved(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static defaultReferenceUnresolved(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 422
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->defaultReferenceUnresolved(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lcom/typesafe/config/Config;
    .locals 1

    .line 570
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->empty(Ljava/lang/String;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static empty(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "originDescription"    # Ljava/lang/String;

    .line 586
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->emptyConfig(Ljava/lang/String;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method private static ensureClassLoader(Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 1
    .param p0, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/typesafe/config/ConfigParseOptions;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {p1}, Lcom/typesafe/config/ConfigFactory;->checkedContextClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    return-object p0
.end method

.method private static getConfigLoadingStrategy()Lcom/typesafe/config/ConfigLoadingStrategy;
    .locals 6

    .line 1241
    const-string v0, "Failed to load strategy: "

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "config.strategy"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1245
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/typesafe/config/ConfigLoadingStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/ConfigLoadingStrategy;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1250
    :catchall_0
    move-exception v2

    .line 1251
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1246
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 1247
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 1248
    .local v3, "cause":Ljava/lang/Throwable;
    if-nez v3, :cond_0

    new-instance v4, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1249
    :cond_0
    new-instance v4, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1254
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Lcom/typesafe/config/DefaultConfigLoadingStrategy;

    invoke-direct {v0}, Lcom/typesafe/config/DefaultConfigLoadingStrategy;-><init>()V

    return-object v0
.end method

.method private static getOverrideWithEnv()Ljava/lang/Boolean;
    .locals 2

    .line 1259
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "config.override_with_env_vars"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "overrideWithEnv":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static invalidateCaches()V
    .locals 0

    .line 557
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->reloadSystemPropertiesConfig()V

    .line 558
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->reloadEnvVariablesConfig()V

    .line 559
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->reloadEnvVariablesOverridesConfig()V

    .line 560
    return-void
.end method

.method public static load()Lcom/typesafe/config/Config;
    .locals 2

    .line 236
    const-string v0, "load"

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->checkedContextClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 237
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v1

    return-object v1
.end method

.method public static load(Lcom/typesafe/config/Config;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "config"    # Lcom/typesafe/config/Config;

    .line 172
    const-string v0, "load"

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->checkedContextClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/ClassLoader;Lcom/typesafe/config/Config;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static load(Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "config"    # Lcom/typesafe/config/Config;
    .param p1, "resolveOptions"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 200
    const-string v0, "load"

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->checkedContextClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/ClassLoader;Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static load(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 248
    invoke-static {}, Lcom/typesafe/config/ConfigResolveOptions;->defaults()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->load(Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static load(Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .param p1, "resolveOptions"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 328
    const-string v0, "load"

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->ensureClassLoader(Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 329
    .local v0, "withLoader":Lcom/typesafe/config/ConfigParseOptions;
    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->defaultApplication(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/typesafe/config/ConfigFactory;->load(Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    .locals 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 260
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 261
    .local v0, "withLoader":Lcom/typesafe/config/ConfigParseOptions;
    new-instance v1, Lcom/typesafe/config/ConfigFactory$1;

    invoke-direct {v1, p0, v0}, Lcom/typesafe/config/ConfigFactory$1;-><init>(Ljava/lang/ClassLoader;Lcom/typesafe/config/ConfigParseOptions;)V

    const-string v2, "load"

    invoke-static {p0, v2, v1}, Lcom/typesafe/config/impl/ConfigImpl;->computeCachedConfig(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/typesafe/config/Config;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/lang/ClassLoader;Lcom/typesafe/config/Config;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "config"    # Lcom/typesafe/config/Config;

    .line 186
    invoke-static {}, Lcom/typesafe/config/ConfigResolveOptions;->defaults()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/ClassLoader;Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/ClassLoader;Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "config"    # Lcom/typesafe/config/Config;
    .param p2, "resolveOptions"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 217
    invoke-static {p0}, Lcom/typesafe/config/ConfigFactory;->defaultOverrides(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/typesafe/config/Config;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/Config;

    move-result-object v0

    .line 218
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->defaultReferenceUnresolved(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/typesafe/config/Config;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/Config;

    move-result-object v0

    .line 219
    invoke-interface {v0, p2}, Lcom/typesafe/config/Config;->resolve(Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    .line 217
    return-object v0
.end method

.method public static load(Ljava/lang/ClassLoader;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 280
    invoke-virtual {p1, p0}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->load(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/ClassLoader;Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .param p2, "resolveOptions"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 311
    const-string v0, "load"

    invoke-static {p1, v0}, Lcom/typesafe/config/ConfigFactory;->ensureClassLoader(Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 312
    .local v0, "withLoader":Lcom/typesafe/config/ConfigParseOptions;
    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->defaultApplication(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/ClassLoader;Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/lang/ClassLoader;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resolveOptions"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 294
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/ClassLoader;Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceBasename"    # Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/typesafe/config/ConfigResolveOptions;->defaults()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v1

    .line 99
    invoke-static {p1, v0, v1}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceBasename"    # Ljava/lang/String;
    .param p2, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .param p3, "resolveOptions"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 141
    invoke-virtual {p2, p0}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "resourceBasename"    # Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/typesafe/config/ConfigResolveOptions;->defaults()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v1

    .line 79
    invoke-static {p0, v0, v1}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
    .locals 3
    .param p0, "resourceBasename"    # Ljava/lang/String;
    .param p1, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .param p2, "resolveOptions"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 117
    const-string v0, "load"

    invoke-static {p1, v0}, Lcom/typesafe/config/ConfigFactory;->ensureClassLoader(Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 118
    .local v0, "withLoader":Lcom/typesafe/config/ConfigParseOptions;
    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseResourcesAnySyntax(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v1

    .line 119
    .local v1, "appConfig":Lcom/typesafe/config/Config;
    invoke-virtual {v0}, Lcom/typesafe/config/ConfigParseOptions;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/ClassLoader;Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;

    move-result-object v2

    return-object v2
.end method

.method public static parseApplicationReplacement()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/typesafe/config/Config;",
            ">;"
        }
    .end annotation

    .line 1106
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->parseApplicationReplacement(Lcom/typesafe/config/ConfigParseOptions;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static parseApplicationReplacement(Lcom/typesafe/config/ConfigParseOptions;)Ljava/util/Optional;
    .locals 11
    .param p0, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigParseOptions;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/typesafe/config/Config;",
            ">;"
        }
    .end annotation

    .line 1133
    const-string v0, "parseApplicationReplacement"

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->ensureClassLoader(Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 1134
    .local v0, "withLoader":Lcom/typesafe/config/ConfigParseOptions;
    invoke-virtual {v0}, Lcom/typesafe/config/ConfigParseOptions;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1136
    .local v1, "loader":Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 1140
    .local v2, "specified":I
    const-string v3, "config.resource"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1141
    .local v3, "resource":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1142
    add-int/lit8 v2, v2, 0x1

    .line 1143
    :cond_0
    const-string v4, "config.file"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "file":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1145
    add-int/lit8 v2, v2, 0x1

    .line 1146
    :cond_1
    const-string v5, "config.url"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1147
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1148
    add-int/lit8 v2, v2, 0x1

    .line 1150
    :cond_2
    if-nez v2, :cond_3

    .line 1151
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    return-object v6

    .line 1152
    :cond_3
    const/4 v6, 0x1

    if-gt v2, v6, :cond_7

    .line 1158
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/typesafe/config/ConfigParseOptions;->setAllowMissing(Z)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v7

    .line 1159
    .local v7, "overrideOptions":Lcom/typesafe/config/ConfigParseOptions;
    if-eqz v3, :cond_5

    .line 1160
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1161
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1164
    :cond_4
    invoke-static {v1, v3, v7}, Lcom/typesafe/config/ConfigFactory;->parseResources(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    return-object v6

    .line 1165
    :cond_5
    if-eqz v4, :cond_6

    .line 1166
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/typesafe/config/ConfigFactory;->parseFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    return-object v6

    .line 1169
    :cond_6
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/typesafe/config/ConfigFactory;->parseURL(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 1170
    :catch_0
    move-exception v6

    .line 1171
    .local v6, "e":Ljava/net/MalformedURLException;
    new-instance v8, Lcom/typesafe/config/ConfigException$Generic;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad URL in config.url system property: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1172
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/typesafe/config/ConfigException$Generic;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1153
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .end local v7    # "overrideOptions":Lcom/typesafe/config/ConfigParseOptions;
    :cond_7
    new-instance v6, Lcom/typesafe/config/ConfigException$Generic;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You set more than one of config.file=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', config.url=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', config.resource=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'; don\'t know which one to use!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/typesafe/config/ConfigException$Generic;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static parseApplicationReplacement(Ljava/lang/ClassLoader;)Ljava/util/Optional;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/typesafe/config/Config;",
            ">;"
        }
    .end annotation

    .line 1120
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/ConfigFactory;->parseApplicationReplacement(Lcom/typesafe/config/ConfigParseOptions;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static parseFile(Ljava/io/File;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 807
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 793
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Parseable;->newFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parse()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileAnySyntax(Ljava/io/File;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "fileBasename"    # Ljava/io/File;

    .line 857
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseFileAnySyntax(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileAnySyntax(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "fileBasename"    # Ljava/io/File;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 845
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/ConfigImpl;->parseFileAnySyntax(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseMap(Ljava/util/Map;)Lcom/typesafe/config/Config;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/typesafe/config/Config;"
        }
    .end annotation

    .line 1237
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseMap(Ljava/util/Map;Ljava/lang/String;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseMap(Ljava/util/Map;Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p1, "originDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/typesafe/config/Config;"
        }
    .end annotation

    .line 1226
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/ConfigImpl;->fromPathMap(Ljava/util/Map;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseProperties(Ljava/util/Properties;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "properties"    # Ljava/util/Properties;

    .line 708
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseProperties(Ljava/util/Properties;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseProperties(Ljava/util/Properties;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 697
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Parseable;->newProperties(Ljava/util/Properties;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parse()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseReader(Ljava/io/Reader;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;

    .line 741
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseReader(Ljava/io/Reader;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseReader(Ljava/io/Reader;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 727
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Parseable;->newReader(Ljava/io/Reader;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parse()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseResources(Ljava/lang/Class;Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/typesafe/config/Config;"
        }
    .end annotation

    .line 909
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/typesafe/config/ConfigFactory;->parseResources(Ljava/lang/Class;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseResources(Ljava/lang/Class;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigParseOptions;",
            ")",
            "Lcom/typesafe/config/Config;"
        }
    .end annotation

    .line 891
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/typesafe/config/impl/Parseable;->newResources(Ljava/lang/Class;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parse()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    .line 892
    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    .line 891
    return-object v0
.end method

.method public static parseResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resource"    # Ljava/lang/String;

    .line 1003
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/typesafe/config/ConfigFactory;->parseResources(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseResources(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 989
    invoke-virtual {p2, p0}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/typesafe/config/ConfigFactory;->parseResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseResources(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;

    .line 1071
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 1060
    const-string v0, "parseResources"

    invoke-static {p1, v0}, Lcom/typesafe/config/ConfigFactory;->ensureClassLoader(Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 1061
    .local v0, "withLoader":Lcom/typesafe/config/ConfigParseOptions;
    invoke-static {p0, v0}, Lcom/typesafe/config/impl/Parseable;->newResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/impl/Parseable;->parse()Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    invoke-interface {v1}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v1

    return-object v1
.end method

.method public static parseResourcesAnySyntax(Ljava/lang/Class;Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p1, "resourceBasename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/typesafe/config/Config;"
        }
    .end annotation

    .line 962
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/typesafe/config/ConfigFactory;->parseResourcesAnySyntax(Ljava/lang/Class;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseResourcesAnySyntax(Ljava/lang/Class;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p1, "resourceBasename"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigParseOptions;",
            ")",
            "Lcom/typesafe/config/Config;"
        }
    .end annotation

    .line 944
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/typesafe/config/impl/ConfigImpl;->parseResourcesAnySyntax(Ljava/lang/Class;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    .line 945
    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    .line 944
    return-object v0
.end method

.method public static parseResourcesAnySyntax(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceBasename"    # Ljava/lang/String;

    .line 1048
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/typesafe/config/ConfigFactory;->parseResourcesAnySyntax(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseResourcesAnySyntax(Ljava/lang/ClassLoader;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceBasename"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 1031
    invoke-virtual {p2, p0}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/typesafe/config/impl/ConfigImpl;->parseResourcesAnySyntax(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    .line 1032
    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    .line 1031
    return-object v0
.end method

.method public static parseResourcesAnySyntax(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "resourceBasename"    # Ljava/lang/String;

    .line 1093
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseResourcesAnySyntax(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseResourcesAnySyntax(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "resourceBasename"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 1083
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/ConfigImpl;->parseResourcesAnySyntax(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseString(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1198
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseString(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseString(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 1188
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Parseable;->newString(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parse()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseURL(Ljava/net/URL;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .line 774
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigFactory;->parseURL(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static parseURL(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 760
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Parseable;->newURL(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parse()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static systemEnvironment()Lcom/typesafe/config/Config;
    .locals 1

    .line 671
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->envVariablesAsConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static systemEnvironmentOverrides()Lcom/typesafe/config/Config;
    .locals 1

    .line 653
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->envVariablesOverridesAsConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static systemProperties()Lcom/typesafe/config/Config;
    .locals 1

    .line 609
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->systemPropertiesAsConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method
