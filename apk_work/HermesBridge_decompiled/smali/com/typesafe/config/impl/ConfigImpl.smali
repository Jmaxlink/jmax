.class public Lcom/typesafe/config/impl/ConfigImpl;
.super Ljava/lang/Object;
.source "ConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;,
        Lcom/typesafe/config/impl/ConfigImpl$EnvVariablesOverridesHolder;,
        Lcom/typesafe/config/impl/ConfigImpl$EnvVariablesHolder;,
        Lcom/typesafe/config/impl/ConfigImpl$SystemPropertiesHolder;,
        Lcom/typesafe/config/impl/ConfigImpl$DefaultIncluderHolder;,
        Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSourceWithClass;,
        Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSource;,
        Lcom/typesafe/config/impl/ConfigImpl$FileNameSource;,
        Lcom/typesafe/config/impl/ConfigImpl$LoaderCacheHolder;,
        Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;
    }
.end annotation


# static fields
.field private static final ENV_VAR_OVERRIDE_PREFIX:Ljava/lang/String; = "CONFIG_FORCE_"

.field private static final defaultEmptyList:Lcom/typesafe/config/impl/SimpleConfigList;

.field private static final defaultEmptyObject:Lcom/typesafe/config/impl/SimpleConfigObject;

.field private static final defaultFalseValue:Lcom/typesafe/config/impl/ConfigBoolean;

.field private static final defaultNullValue:Lcom/typesafe/config/impl/ConfigNull;

.field private static final defaultTrueValue:Lcom/typesafe/config/impl/ConfigBoolean;

.field private static final defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 156
    nop

    .line 157
    const-string v0, "hardcoded value"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 158
    new-instance v0, Lcom/typesafe/config/impl/ConfigBoolean;

    sget-object v1, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ConfigBoolean;-><init>(Lcom/typesafe/config/ConfigOrigin;Z)V

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultTrueValue:Lcom/typesafe/config/impl/ConfigBoolean;

    .line 160
    new-instance v0, Lcom/typesafe/config/impl/ConfigBoolean;

    sget-object v1, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ConfigBoolean;-><init>(Lcom/typesafe/config/ConfigOrigin;Z)V

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultFalseValue:Lcom/typesafe/config/impl/ConfigBoolean;

    .line 162
    new-instance v0, Lcom/typesafe/config/impl/ConfigNull;

    sget-object v1, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/ConfigNull;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultNullValue:Lcom/typesafe/config/impl/ConfigNull;

    .line 164
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigList;

    sget-object v1, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultEmptyList:Lcom/typesafe/config/impl/SimpleConfigList;

    .line 166
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 167
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigObject;->empty(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultEmptyObject:Lcom/typesafe/config/impl/SimpleConfigObject;

    .line 166
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1

    .line 34
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->loadSystemProperties()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1

    .line 34
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->loadEnvVariables()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1

    .line 34
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->loadEnvVariablesOverrides()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "x0"    # Ljava/lang/ClassLoader;

    .line 34
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->unresolvedReference(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static computeCachedConfig(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/typesafe/config/Config;",
            ">;)",
            "Lcom/typesafe/config/Config;"
        }
    .end annotation

    .line 89
    .local p2, "updater":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/typesafe/config/Config;>;"
    :try_start_0
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCacheHolder;->cache:Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .local v0, "cache":Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;
    nop

    .line 93
    invoke-virtual {v0, p0, p1, p2}, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->getOrElseUpdate(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/typesafe/config/Config;

    move-result-object v1

    return-object v1

    .line 90
    .end local v0    # "cache":Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->extractInitializerError(Ljava/lang/ExceptionInInitializerError;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method

.method static defaultIncluder()Lcom/typesafe/config/ConfigIncluder;
    .locals 2

    .line 294
    :try_start_0
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl$DefaultIncluderHolder;->defaultIncluder:Lcom/typesafe/config/ConfigIncluder;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->extractInitializerError(Ljava/lang/ExceptionInInitializerError;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method

.method public static defaultReference(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 408
    new-instance v0, Lcom/typesafe/config/impl/ConfigImpl$1;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/ConfigImpl$1;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "defaultReference"

    invoke-static {p0, v1, v0}, Lcom/typesafe/config/impl/ConfigImpl;->computeCachedConfig(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public static defaultReferenceUnresolved(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 437
    :try_start_0
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->defaultReference(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    :try_end_0
    .catch Lcom/typesafe/config/ConfigException$UnresolvedSubstitution; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    nop

    .line 442
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->unresolvedReference(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;
    const-string v1, "Could not resolve substitution in reference.conf to a value: %s. All reference.conf files are required to be fully, independently resolvable, and should not require the presence of values for substitutions from further up the hierarchy."

    invoke-virtual {v0, v1}, Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;->addExtraDetail(Ljava/lang/String;)Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;

    move-result-object v1

    throw v1
.end method

.method static empty(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 152
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->emptyObject(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public static emptyConfig(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "originDescription"    # Ljava/lang/String;

    .line 148
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->emptyObject(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->toConfig()Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method private static emptyList(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigList;
    .locals 2
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 170
    if-eqz p0, :cond_1

    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigList;

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    .line 173
    return-object v0

    .line 171
    :cond_1
    :goto_0
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultEmptyList:Lcom/typesafe/config/impl/SimpleConfigList;

    return-object v0
.end method

.method private static emptyObject(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 180
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    if-ne p0, v0, :cond_0

    .line 181
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultEmptyObject:Lcom/typesafe/config/impl/SimpleConfigObject;

    return-object v0

    .line 183
    :cond_0
    invoke-static {p0}, Lcom/typesafe/config/impl/SimpleConfigObject;->empty(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v0

    return-object v0
.end method

.method static emptyObject(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 2
    .param p0, "originDescription"    # Ljava/lang/String;

    .line 142
    if-eqz p0, :cond_0

    .line 143
    invoke-static {p0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, "origin":Lcom/typesafe/config/ConfigOrigin;
    :goto_0
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImpl;->emptyObject(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1

    return-object v1
.end method

.method public static envVariablesAsConfig()Lcom/typesafe/config/Config;
    .locals 1

    .line 361
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->envVariablesAsConfigObject()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->toConfig()Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method static envVariablesAsConfigObject()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 2

    .line 354
    :try_start_0
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl$EnvVariablesHolder;->envVariables:Lcom/typesafe/config/impl/AbstractConfigObject;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->extractInitializerError(Ljava/lang/ExceptionInInitializerError;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method

.method public static envVariablesOverridesAsConfig()Lcom/typesafe/config/Config;
    .locals 1

    .line 398
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->envVariablesOverridesAsConfigObject()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->toConfig()Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method static envVariablesOverridesAsConfigObject()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 2

    .line 391
    :try_start_0
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl$EnvVariablesOverridesHolder;->envVariables:Lcom/typesafe/config/impl/AbstractConfigObject;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->extractInitializerError(Ljava/lang/ExceptionInInitializerError;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method

.method public static fromAnyRef(Ljava/lang/Object;Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "originDescription"    # Ljava/lang/String;

    .line 194
    invoke-static {p1}, Lcom/typesafe/config/impl/ConfigImpl;->valueOrigin(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    .line 195
    .local v0, "origin":Lcom/typesafe/config/ConfigOrigin;
    sget-object v1, Lcom/typesafe/config/impl/FromMapMode;->KEYS_ARE_KEYS:Lcom/typesafe/config/impl/FromMapMode;

    invoke-static {p0, v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->fromAnyRef(Ljava/lang/Object;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/FromMapMode;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1
.end method

.method static fromAnyRef(Ljava/lang/Object;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/FromMapMode;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "mapMode"    # Lcom/typesafe/config/impl/FromMapMode;

    .line 207
    if-eqz p1, :cond_15

    .line 211
    if-nez p0, :cond_1

    .line 212
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    if-eq p1, v0, :cond_0

    .line 213
    new-instance v0, Lcom/typesafe/config/impl/ConfigNull;

    invoke-direct {v0, p1}, Lcom/typesafe/config/impl/ConfigNull;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    return-object v0

    .line 215
    :cond_0
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultNullValue:Lcom/typesafe/config/impl/ConfigNull;

    return-object v0

    .line 216
    :cond_1
    instance-of v0, p0, Lcom/typesafe/config/impl/AbstractConfigValue;

    if-eqz v0, :cond_2

    .line 217
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v0

    .line 218
    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 219
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    if-eq p1, v0, :cond_3

    .line 220
    new-instance v0, Lcom/typesafe/config/impl/ConfigBoolean;

    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/ConfigBoolean;-><init>(Lcom/typesafe/config/ConfigOrigin;Z)V

    return-object v0

    .line 221
    :cond_3
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultTrueValue:Lcom/typesafe/config/impl/ConfigBoolean;

    return-object v0

    .line 224
    :cond_4
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultFalseValue:Lcom/typesafe/config/impl/ConfigBoolean;

    return-object v0

    .line 226
    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 227
    new-instance v0, Lcom/typesafe/config/impl/ConfigString$Quoted;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/ConfigString$Quoted;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    return-object v0

    .line 228
    :cond_6
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 234
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 235
    new-instance v0, Lcom/typesafe/config/impl/ConfigDouble;

    move-object v2, p0

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/typesafe/config/impl/ConfigDouble;-><init>(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)V

    return-object v0

    .line 236
    :cond_7
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 237
    new-instance v0, Lcom/typesafe/config/impl/ConfigInt;

    move-object v2, p0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, p1, v2, v1}, Lcom/typesafe/config/impl/ConfigInt;-><init>(Lcom/typesafe/config/ConfigOrigin;ILjava/lang/String;)V

    return-object v0

    .line 238
    :cond_8
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 239
    new-instance v0, Lcom/typesafe/config/impl/ConfigLong;

    move-object v2, p0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/typesafe/config/impl/ConfigLong;-><init>(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)V

    return-object v0

    .line 241
    :cond_9
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 241
    invoke-static {p1, v2, v3, v1}, Lcom/typesafe/config/impl/ConfigNumber;->newNumber(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;

    move-result-object v0

    return-object v0

    .line 244
    :cond_a
    instance-of v0, p0, Ljava/time/Duration;

    if-eqz v0, :cond_b

    .line 245
    new-instance v0, Lcom/typesafe/config/impl/ConfigLong;

    move-object v2, p0

    check-cast v2, Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/typesafe/config/impl/ConfigLong;-><init>(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)V

    return-object v0

    .line 246
    :cond_b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 247
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 248
    invoke-static {p1}, Lcom/typesafe/config/impl/ConfigImpl;->emptyObject(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0

    .line 250
    :cond_c
    sget-object v0, Lcom/typesafe/config/impl/FromMapMode;->KEYS_ARE_KEYS:Lcom/typesafe/config/impl/FromMapMode;

    if-ne p2, v0, :cond_f

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 253
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 254
    .local v3, "key":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/typesafe/config/impl/ConfigImpl;->fromAnyRef(Ljava/lang/Object;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/FromMapMode;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v4

    .line 260
    .local v4, "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 255
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v3    # "key":Ljava/lang/Object;
    :cond_d
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bug in method caller: not valid to create ConfigObject from map with non-String key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_e
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-direct {v1, p1, v0}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)V

    return-object v1

    .line 265
    .end local v0    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_f
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/typesafe/config/impl/PropertiesParser;->fromPathMap(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0

    .line 267
    :cond_10
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_13

    .line 268
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    .line 270
    invoke-static {p1}, Lcom/typesafe/config/impl/ConfigImpl;->emptyList(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object v1

    return-object v1

    .line 272
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/typesafe/config/impl/ConfigImpl;->fromAnyRef(Ljava/lang/Object;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/FromMapMode;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    .line 275
    .local v2, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v2    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_1

    .line 278
    :cond_12
    new-instance v2, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-direct {v2, p1, v1}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v2

    .line 279
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_13
    instance-of v0, p0, Lcom/typesafe/config/ConfigMemorySize;

    if-eqz v0, :cond_14

    .line 280
    new-instance v0, Lcom/typesafe/config/impl/ConfigLong;

    move-object v2, p0

    check-cast v2, Lcom/typesafe/config/ConfigMemorySize;

    invoke-virtual {v2}, Lcom/typesafe/config/ConfigMemorySize;->toBytes()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/typesafe/config/impl/ConfigLong;-><init>(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)V

    return-object v0

    .line 282
    :cond_14
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bug in method caller: not valid to create ConfigValue from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_15
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "origin not supposed to be null"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromPathMap(Ljava/util/Map;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 2
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
            "Lcom/typesafe/config/ConfigObject;"
        }
    .end annotation

    .line 200
    .local p0, "pathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/typesafe/config/impl/ConfigImpl;->valueOrigin(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    .line 201
    .local v0, "origin":Lcom/typesafe/config/ConfigOrigin;
    sget-object v1, Lcom/typesafe/config/impl/FromMapMode;->KEYS_ARE_PATHS:Lcom/typesafe/config/impl/FromMapMode;

    invoke-static {p0, v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->fromAnyRef(Ljava/lang/Object;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/FromMapMode;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/ConfigObject;

    return-object v1
.end method

.method private static getSystemProperties()Ljava/util/Properties;
    .locals 6

    .line 302
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 303
    .local v0, "systemProperties":Ljava/util/Properties;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 304
    .local v1, "systemPropertiesCopy":Ljava/util/Properties;
    monitor-enter v0

    .line 305
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 308
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.version."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 309
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 312
    :cond_1
    monitor-exit v0

    .line 313
    return-object v1

    .line 312
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static improveNotResolved(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigException$NotResolved;)Lcom/typesafe/config/ConfigException$NotResolved;
    .locals 2
    .param p0, "what"    # Lcom/typesafe/config/impl/Path;
    .param p1, "original"    # Lcom/typesafe/config/ConfigException$NotResolved;

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has not been resolved, you need to call Config#resolve(), see API docs for Config#resolve()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "newMessage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/typesafe/config/ConfigException$NotResolved;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    return-object p1

    .line 529
    :cond_0
    new-instance v1, Lcom/typesafe/config/ConfigException$NotResolved;

    invoke-direct {v1, v0, p1}, Lcom/typesafe/config/ConfigException$NotResolved;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static loadEnvVariables()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 2

    .line 345
    const-string v0, "env variables"

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImpl;->newSimpleOrigin(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/PropertiesParser;->fromStringMap(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method private static loadEnvVariablesOverrides()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 6

    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 374
    .local v0, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    .local v3, "key":Ljava/lang/String;
    const-string v4, "CONFIG_FORCE_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 378
    invoke-static {v3, v4}, Lcom/typesafe/config/impl/ConfigImplUtil;->envVariableAsProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 382
    :cond_1
    const-string v2, "env variables overrides"

    invoke-static {v2}, Lcom/typesafe/config/impl/ConfigImpl;->newSimpleOrigin(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/typesafe/config/impl/PropertiesParser;->fromStringMap(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    return-object v2
.end method

.method private static loadSystemProperties()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 3

    .line 317
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->getSystemProperties()Ljava/util/Properties;

    move-result-object v0

    .line 318
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    const-string v2, "system properties"

    invoke-virtual {v1, v2}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    .line 317
    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Parseable;->newProperties(Ljava/util/Properties;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parse()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 317
    return-object v0
.end method

.method public static newFileOrigin(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .line 541
    invoke-static {p0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newFile(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleOrigin(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "description"    # Ljava/lang/String;

    .line 533
    if-nez p0, :cond_0

    .line 534
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    return-object v0

    .line 536
    :cond_0
    invoke-static {p0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method public static newURLOrigin(Ljava/net/URL;)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .line 545
    invoke-static {p0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newURL(Ljava/net/URL;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileAnySyntax(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;
    .locals 2
    .param p0, "basename"    # Ljava/io/File;
    .param p1, "baseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 137
    new-instance v0, Lcom/typesafe/config/impl/ConfigImpl$FileNameSource;

    invoke-direct {v0}, Lcom/typesafe/config/impl/ConfigImpl$FileNameSource;-><init>()V

    .line 138
    .local v0, "source":Lcom/typesafe/config/impl/SimpleIncluder$NameSource;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/typesafe/config/impl/SimpleIncluder;->fromBasename(Lcom/typesafe/config/impl/SimpleIncluder$NameSource;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    return-object v1
.end method

.method public static parseResourcesAnySyntax(Ljava/lang/Class;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;
    .locals 2
    .param p1, "resourceBasename"    # Ljava/lang/String;
    .param p2, "baseOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigParseOptions;",
            ")",
            "Lcom/typesafe/config/ConfigObject;"
        }
    .end annotation

    .line 126
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSourceWithClass;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSourceWithClass;-><init>(Ljava/lang/Class;)V

    .line 127
    .local v0, "source":Lcom/typesafe/config/impl/SimpleIncluder$NameSource;
    invoke-static {v0, p1, p2}, Lcom/typesafe/config/impl/SimpleIncluder;->fromBasename(Lcom/typesafe/config/impl/SimpleIncluder$NameSource;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    return-object v1
.end method

.method public static parseResourcesAnySyntax(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;
    .locals 2
    .param p0, "resourceBasename"    # Ljava/lang/String;
    .param p1, "baseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 132
    new-instance v0, Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSource;

    invoke-direct {v0}, Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSource;-><init>()V

    .line 133
    .local v0, "source":Lcom/typesafe/config/impl/SimpleIncluder$NameSource;
    invoke-static {v0, p0, p1}, Lcom/typesafe/config/impl/SimpleIncluder;->fromBasename(Lcom/typesafe/config/impl/SimpleIncluder$NameSource;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    return-object v1
.end method

.method public static reloadEnvVariablesConfig()V
    .locals 1

    .line 367
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->loadEnvVariables()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl$EnvVariablesHolder;->envVariables:Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 368
    return-void
.end method

.method public static reloadEnvVariablesOverridesConfig()V
    .locals 1

    .line 404
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->loadEnvVariablesOverrides()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl$EnvVariablesOverridesHolder;->envVariables:Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 405
    return-void
.end method

.method public static reloadSystemPropertiesConfig()V
    .locals 1

    .line 341
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->loadSystemProperties()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl$SystemPropertiesHolder;->systemProperties:Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 342
    return-void
.end method

.method public static systemPropertiesAsConfig()Lcom/typesafe/config/Config;
    .locals 1

    .line 335
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->systemPropertiesAsConfigObject()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->toConfig()Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method static systemPropertiesAsConfigObject()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 2

    .line 328
    :try_start_0
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl$SystemPropertiesHolder;->systemProperties:Lcom/typesafe/config/impl/AbstractConfigObject;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->extractInitializerError(Ljava/lang/ExceptionInInitializerError;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method

.method public static trace(ILjava/lang/String;)V
    .locals 2
    .param p0, "indentLevel"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 510
    nop

    :goto_0
    if-lez p0, :cond_0

    .line 511
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 512
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 514
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 506
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public static traceLoadsEnabled()Z
    .locals 2

    .line 491
    :try_start_0
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->traceLoadsEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->extractInitializerError(Ljava/lang/ExceptionInInitializerError;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method

.method public static traceSubstitutionsEnabled()Z
    .locals 2

    .line 499
    :try_start_0
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->traceSubstitutionsEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->extractInitializerError(Ljava/lang/ExceptionInInitializerError;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method

.method private static unresolvedReference(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 418
    new-instance v0, Lcom/typesafe/config/impl/ConfigImpl$2;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/ConfigImpl$2;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "unresolvedReference"

    invoke-static {p0, v1, v0}, Lcom/typesafe/config/impl/ConfigImpl;->computeCachedConfig(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method private static valueOrigin(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "originDescription"    # Ljava/lang/String;

    .line 187
    if-nez p0, :cond_0

    .line 188
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl;->defaultValueOrigin:Lcom/typesafe/config/ConfigOrigin;

    return-object v0

    .line 190
    :cond_0
    invoke-static {p0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method
