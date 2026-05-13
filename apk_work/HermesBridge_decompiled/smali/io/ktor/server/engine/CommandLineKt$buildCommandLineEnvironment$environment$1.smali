.class final Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CommandLine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/CommandLineKt;->buildCommandLineEnvironment([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandLine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommandLine.kt\nio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 EngineConnectorConfig.kt\nio/ktor/server/engine/EngineConnectorConfigKt\n*L\n1#1,160:1\n1#2:161\n52#3,2:162\n*S KotlinDebug\n*F\n+ 1 CommandLine.kt\nio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1\n*L\n60#1:162,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $args:[Ljava/lang/String;

.field final synthetic $argumentsPairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $configuration:Lio/ktor/server/config/ApplicationConfig;

.field final synthetic $environmentBuilder:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $logger:Lorg/slf4j/Logger;

.field final synthetic $rootPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/slf4j/Logger;[Ljava/lang/String;Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/slf4j/Logger;",
            "[",
            "Ljava/lang/String;",
            "Lio/ktor/server/config/ApplicationConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$logger:Lorg/slf4j/Logger;

    iput-object p2, p0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$args:[Ljava/lang/String;

    iput-object p3, p0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    iput-object p4, p0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$rootPath:Ljava/lang/String;

    iput-object p5, p0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$argumentsPairs:Ljava/util/Map;

    iput-object p6, p0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$environmentBuilder:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 39
    move-object v0, p1

    check-cast v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;

    invoke-virtual {p0, v0}, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->invoke(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;)V
    .locals 18
    .param p1, "$this$applicationEngineEnvironment"    # Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v1, "$this$applicationEngineEnvironment"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$logger:Lorg/slf4j/Logger;

    invoke-virtual {v8, v1}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->setLog(Lorg/slf4j/Logger;)V

    .line 42
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$args:[Ljava/lang/String;

    invoke-static {v8, v1}, Lio/ktor/server/engine/EnvironmentUtilsJvmKt;->configurePlatformProperties(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;[Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    invoke-virtual {v8, v1}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->setConfig(Lio/ktor/server/config/ApplicationConfig;)V

    .line 46
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$rootPath:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->setRootPath(Ljava/lang/String;)V

    .line 48
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$argumentsPairs:Ljava/util/Map;

    const-string v2, "-host"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    const-string v2, "ktor.deployment.host"

    invoke-static {v1, v2}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "0.0.0.0"

    :cond_0
    move-object v9, v1

    .line 49
    .local v9, "host":Ljava/lang/String;
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$argumentsPairs:Ljava/util/Map;

    const-string v2, "-port"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    const-string v2, "ktor.deployment.port"

    invoke-static {v1, v2}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v10, v1

    .line 50
    .local v10, "port":Ljava/lang/String;
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$argumentsPairs:Ljava/util/Map;

    const-string v2, "-sslPort"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    const-string v2, "ktor.deployment.sslPort"

    invoke-static {v1, v2}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v11, v1

    .line 51
    .local v11, "sslPort":Ljava/lang/String;
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$argumentsPairs:Ljava/util/Map;

    const-string v2, "-sslKeyStore"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    const-string v2, "ktor.security.ssl.keyStore"

    invoke-static {v1, v2}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v4, v1

    .line 52
    .local v4, "sslKeyStorePath":Ljava/lang/String;
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    const-string v2, "ktor.security.ssl.keyStorePassword"

    invoke-static {v1, v2}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_4
    move-object v5, v2

    .line 53
    .local v5, "sslKeyStorePassword":Ljava/lang/String;
    :goto_0
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    const-string v3, "ktor.security.ssl.privateKeyPassword"

    invoke-static {v1, v3}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_5
    move-object v6, v2

    .line 54
    .local v6, "sslPrivateKeyPassword":Ljava/lang/String;
    :goto_1
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    const-string v3, "ktor.security.ssl.keyAlias"

    invoke-static {v1, v3}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "mykey"

    :cond_6
    move-object v7, v1

    .line 56
    .local v7, "sslKeyAlias":Ljava/lang/String;
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    const-string v3, "ktor.development"

    invoke-static {v1, v3}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_7

    .line 56
    nop

    .line 57
    nop

    .line 161
    nop

    .local v1, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 57
    .local v3, "$i$a$-let-CommandLineKt$buildCommandLineEnvironment$environment$1$1":I
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 56
    .end local v1    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-CommandLineKt$buildCommandLineEnvironment$environment$1$1":I
    goto :goto_2

    .line 57
    :cond_7
    sget-object v1, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-virtual {v1}, Lio/ktor/util/PlatformUtils;->getIS_DEVELOPMENT_MODE()Z

    move-result v12

    .line 56
    :goto_2
    invoke-virtual {v8, v12}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->setDevelopmentMode(Z)V

    .line 59
    if-eqz v10, :cond_8

    .line 60
    move-object/from16 v1, p1

    .local v1, "$this$connector$iv":Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
    const/4 v3, 0x0

    .line 162
    .local v3, "$i$f$connector":I
    invoke-virtual {v1}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->getConnectors()Ljava/util/List;

    move-result-object v12

    new-instance v13, Lio/ktor/server/engine/EngineConnectorBuilder;

    const/4 v14, 0x1

    invoke-direct {v13, v2, v14, v2}, Lio/ktor/server/engine/EngineConnectorBuilder;-><init>(Lio/ktor/server/engine/ConnectorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v13

    .local v2, "$this$invoke_u24lambda_u241":Lio/ktor/server/engine/EngineConnectorBuilder;
    const/4 v14, 0x0

    .line 61
    .local v14, "$i$a$-connector-CommandLineKt$buildCommandLineEnvironment$environment$1$2":I
    invoke-virtual {v2, v9}, Lio/ktor/server/engine/EngineConnectorBuilder;->setHost(Ljava/lang/String;)V

    .line 62
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v2, v15}, Lio/ktor/server/engine/EngineConnectorBuilder;->setPort(I)V

    .line 63
    nop

    .line 162
    .end local v2    # "$this$invoke_u24lambda_u241":Lio/ktor/server/engine/EngineConnectorBuilder;
    .end local v14    # "$i$a$-connector-CommandLineKt$buildCommandLineEnvironment$environment$1$2":I
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    nop

    .line 66
    .end local v1    # "$this$connector$iv":Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
    .end local v3    # "$i$f$connector":I
    :cond_8
    if-eqz v11, :cond_9

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 67
    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v11

    invoke-static/range {v1 .. v7}, Lio/ktor/server/engine/EnvironmentUtilsJvmKt;->configureSSLConnectors(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_9
    if-nez v10, :cond_b

    if-eqz v11, :cond_a

    goto :goto_3

    .line 78
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 79
    nop

    .line 78
    const-string v2, "Neither port nor sslPort specified. Use command line options -port/-sslPort or configure connectors in application.conf"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_b
    :goto_3
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$argumentsPairs:Ljava/util/Map;

    const-string v2, "-watch"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object v12, v1

    check-cast v12, Ljava/lang/CharSequence;

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$configuration:Lio/ktor/server/config/ApplicationConfig;

    const-string v2, "ktor.deployment.watch"

    invoke-static {v1, v2}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetStringList(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_d
    if-eqz v1, :cond_e

    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 85
    .local v2, "$i$a$-let-CommandLineKt$buildCommandLineEnvironment$environment$1$3":I
    invoke-virtual {v8, v1}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->setWatchPaths(Ljava/util/List;)V

    .line 86
    nop

    .line 84
    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-let-CommandLineKt$buildCommandLineEnvironment$environment$1$3":I
    nop

    .line 88
    :cond_e
    iget-object v1, v0, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;->$environmentBuilder:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method
