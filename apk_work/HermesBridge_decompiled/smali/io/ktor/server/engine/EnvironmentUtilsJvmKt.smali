.class public final Lio/ktor/server/engine/EnvironmentUtilsJvmKt;
.super Ljava/lang/Object;
.source "EnvironmentUtilsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnvironmentUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnvironmentUtilsJvm.kt\nio/ktor/server/engine/EnvironmentUtilsJvmKt\n+ 2 EngineConnectorConfigJvm.kt\nio/ktor/server/engine/EngineConnectorConfigJvmKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,80:1\n20#2,2:81\n11653#3,9:83\n13579#3:92\n13580#3:94\n11662#3:95\n1#4:93\n1#4:96\n467#5,7:97\n125#6:104\n152#6,3:105\n*S KotlinDebug\n*F\n+ 1 EnvironmentUtilsJvm.kt\nio/ktor/server/engine/EnvironmentUtilsJvmKt\n*L\n51#1:81,2\n64#1:83,9\n64#1:92\n64#1:94\n64#1:95\n64#1:93\n78#1:97,7\n79#1:104\n79#1:105,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\t\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0000\u001a\u001f\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0000\u00a2\u0006\u0002\u0010\u0008\u001aB\u0010\t\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "getConfigFromEnvironment",
        "Lio/ktor/server/config/ApplicationConfig;",
        "configurePlatformProperties",
        "",
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
        "args",
        "",
        "",
        "(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;[Ljava/lang/String;)V",
        "configureSSLConnectors",
        "host",
        "sslPort",
        "sslKeyStorePath",
        "sslKeyStorePassword",
        "sslPrivateKeyPassword",
        "sslKeyAlias",
        "ktor-server-host-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final configurePlatformProperties(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;[Ljava/lang/String;)V
    .locals 17
    .param p0, "$this$configurePlatformProperties"    # Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    move-object/from16 v1, p1

    .local v1, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 83
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 91
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 92
    .local v8, "$i$f$forEach":I
    array-length v9, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_1

    aget-object v12, v7, v11

    .local v12, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 91
    .local v14, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object v15, v13

    .local v15, "it":Ljava/lang/String;
    const/16 v16, 0x0

    .line 64
    .local v16, "$i$a$-mapNotNull-EnvironmentUtilsJvmKt$configurePlatformProperties$argumentsPairs$1":I
    const/16 v10, 0x3d

    invoke-static {v15, v10}, Lio/ktor/server/engine/CommandLineKt;->splitPair(Ljava/lang/String;C)Lkotlin/Pair;

    move-result-object v10

    .line 91
    .end local v15    # "it":Ljava/lang/String;
    .end local v16    # "$i$a$-mapNotNull-EnvironmentUtilsJvmKt$configurePlatformProperties$argumentsPairs$1":I
    if-eqz v10, :cond_0

    .line 93
    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 91
    .local v15, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    .end local v15    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v12    # "element$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 94
    :cond_1
    nop

    .line 95
    .end local v7    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$mapNotNullTo":I
    check-cast v4, Ljava/util/List;

    .line 83
    nop

    .end local v1    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$mapNotNull":I
    check-cast v4, Ljava/lang/Iterable;

    .line 64
    invoke-static {v4}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 65
    .local v1, "argumentsPairs":Ljava/util/Map;
    const-string v3, "-jar"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .local v3, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 66
    .local v5, "$i$a$-let-EnvironmentUtilsJvmKt$configurePlatformProperties$jar$1":I
    nop

    .line 67
    const-string v6, "file:"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v3, v6, v8, v7, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "jrt:"

    invoke-static {v3, v6, v8, v7, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "jar:"

    invoke-static {v3, v6, v8, v7, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 68
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    goto :goto_2

    .line 67
    :cond_3
    :goto_1
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    .line 66
    :goto_2
    nop

    .line 65
    .end local v3    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-EnvironmentUtilsJvmKt$configurePlatformProperties$jar$1":I
    nop

    :cond_4
    move-object v3, v4

    .line 72
    .local v3, "jar":Ljava/net/URL;
    if-eqz v3, :cond_5

    .line 96
    move-object v4, v3

    .local v4, "it":Ljava/net/URL;
    const/4 v5, 0x0

    .line 72
    .local v5, "$i$a$-let-EnvironmentUtilsJvmKt$configurePlatformProperties$1":I
    new-instance v6, Ljava/net/URLClassLoader;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/net/URL;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const-class v8, Lio/ktor/server/application/ApplicationEnvironment;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .end local v4    # "it":Ljava/net/URL;
    .end local v5    # "$i$a$-let-EnvironmentUtilsJvmKt$configurePlatformProperties$1":I
    check-cast v6, Ljava/lang/ClassLoader;

    goto :goto_3

    :cond_5
    const-class v4, Lio/ktor/server/application/ApplicationEnvironment;

    .line 73
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v4, "ApplicationEnvironment::class.java.classLoader"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :goto_3
    invoke-virtual {v0, v6}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 74
    return-void
.end method

.method public static final configureSSLConnectors(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p0, "$this$configureSSLConnectors"    # Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "sslPort"    # Ljava/lang/String;
    .param p3, "sslKeyStorePath"    # Ljava/lang/String;
    .param p4, "sslKeyStorePassword"    # Ljava/lang/String;
    .param p5, "sslPrivateKeyPassword"    # Ljava/lang/String;
    .param p6, "sslKeyAlias"    # Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v0, "<this>"

    move-object/from16 v6, p0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sslPort"

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sslKeyAlias"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    if-eqz v2, :cond_5

    .line 27
    if-eqz v3, :cond_4

    .line 32
    if-eqz v4, :cond_3

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 39
    .local v8, "$i$a$-let-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStoreFile$1":I
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/io/File;

    const-string v10, "."

    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    move-object v0, v9

    .line 38
    .end local v0    # "file":Ljava/io/File;
    .end local v8    # "$i$a$-let-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStoreFile$1":I
    :cond_1
    :goto_0
    move-object v8, v0

    .line 41
    .local v8, "keyStoreFile":Ljava/io/File;
    const-string v0, "JKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    move-object v9, v0

    .local v9, "$this$configureSSLConnectors_u24lambda_u243":Ljava/security/KeyStore;
    const/4 v10, 0x0

    .line 42
    .local v10, "$i$a$-apply-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1":I
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v11, Ljava/io/Closeable;

    :try_start_0
    move-object v12, v11

    check-cast v12, Ljava/io/FileInputStream;

    .local v12, "it":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 43
    .local v13, "$i$a$-use-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1$1":I
    move-object v14, v12

    check-cast v14, Ljava/io/InputStream;

    invoke-static/range {p4 .. p4}, Lio/ktor/util/CharsetKt;->toCharArray(Ljava/lang/String;)[C

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 44
    nop

    .end local v12    # "it":Ljava/io/FileInputStream;
    .end local v13    # "$i$a$-use-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1$1":I
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    invoke-static/range {p5 .. p5}, Lio/ktor/util/CharsetKt;->toCharArray(Ljava/lang/String;)[C

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 49
    nop

    .line 41
    .end local v9    # "$this$configureSSLConnectors_u24lambda_u243":Ljava/security/KeyStore;
    .end local v10    # "$i$a$-apply-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1":I
    nop

    .line 51
    .local v0, "keyStore":Ljava/security/KeyStore;
    nop

    .line 52
    const-string v9, "keyStore"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v9, Lio/ktor/server/engine/EnvironmentUtilsJvmKt$configureSSLConnectors$1;

    invoke-direct {v9, v3}, Lio/ktor/server/engine/EnvironmentUtilsJvmKt$configureSSLConnectors$1;-><init>(Ljava/lang/String;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .local v9, "keyStorePassword$iv":Lkotlin/jvm/functions/Function0;
    new-instance v10, Lio/ktor/server/engine/EnvironmentUtilsJvmKt$configureSSLConnectors$2;

    invoke-direct {v10, v4}, Lio/ktor/server/engine/EnvironmentUtilsJvmKt$configureSSLConnectors$2;-><init>(Ljava/lang/String;)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .local v10, "privateKeyPassword$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v11, p0

    .local v11, "$this$sslConnector$iv":Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
    move-object v12, v0

    .local v12, "keyStore$iv":Ljava/security/KeyStore;
    const/4 v13, 0x0

    .line 81
    .local v13, "$i$f$sslConnector":I
    invoke-virtual {v11}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->getConnectors()Ljava/util/List;

    move-result-object v14

    new-instance v15, Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-direct {v15, v12, v5, v9, v10}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;-><init>(Ljava/security/KeyStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v16, v15

    .local v16, "$this$configureSSLConnectors_u24lambda_u244":Lio/ktor/server/engine/EngineSSLConnectorBuilder;
    const/16 v17, 0x0

    .line 57
    .local v17, "$i$a$-sslConnector-EnvironmentUtilsJvmKt$configureSSLConnectors$3":I
    move-object/from16 v18, v0

    move-object/from16 v0, v16

    .end local v16    # "$this$configureSSLConnectors_u24lambda_u244":Lio/ktor/server/engine/EngineSSLConnectorBuilder;
    .local v0, "$this$configureSSLConnectors_u24lambda_u244":Lio/ktor/server/engine/EngineSSLConnectorBuilder;
    .local v18, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v0, v1}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->setHost(Ljava/lang/String;)V

    .line 58
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->setPort(I)V

    .line 59
    invoke-virtual {v0, v8}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->setKeyStorePath(Ljava/io/File;)V

    .line 60
    nop

    .line 81
    .end local v0    # "$this$configureSSLConnectors_u24lambda_u244":Lio/ktor/server/engine/EngineSSLConnectorBuilder;
    .end local v17    # "$i$a$-sslConnector-EnvironmentUtilsJvmKt$configureSSLConnectors$3":I
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    nop

    .line 61
    .end local v9    # "keyStorePassword$iv":Lkotlin/jvm/functions/Function0;
    .end local v10    # "privateKeyPassword$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$sslConnector$iv":Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
    .end local v12    # "keyStore$iv":Ljava/security/KeyStore;
    .end local v13    # "$i$f$sslConnector":I
    return-void

    .line 46
    .end local v18    # "keyStore":Ljava/security/KeyStore;
    .local v9, "$this$configureSSLConnectors_u24lambda_u243":Ljava/security/KeyStore;
    .local v10, "$i$a$-apply-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1":I
    :cond_2
    const/4 v0, 0x0

    .line 47
    .local v0, "$i$a$-requireNotNull-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The specified key "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " doesn\'t exist in the key store "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .end local v0    # "$i$a$-requireNotNull-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v8    # "keyStoreFile":Ljava/io/File;
    .end local v9    # "$this$configureSSLConnectors_u24lambda_u243":Ljava/security/KeyStore;
    .end local v10    # "$i$a$-apply-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1":I
    .end local p0    # "$this$configureSSLConnectors":Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "sslPort":Ljava/lang/String;
    .end local p3    # "sslKeyStorePath":Ljava/lang/String;
    .end local p4    # "sslKeyStorePassword":Ljava/lang/String;
    .end local p5    # "sslPrivateKeyPassword":Ljava/lang/String;
    .end local p6    # "sslKeyAlias":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v8    # "keyStoreFile":Ljava/io/File;
    .restart local v9    # "$this$configureSSLConnectors_u24lambda_u243":Ljava/security/KeyStore;
    .restart local v10    # "$i$a$-apply-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1":I
    .restart local p0    # "$this$configureSSLConnectors":Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "sslPort":Ljava/lang/String;
    .restart local p3    # "sslKeyStorePath":Ljava/lang/String;
    .restart local p4    # "sslKeyStorePassword":Ljava/lang/String;
    .restart local p5    # "sslPrivateKeyPassword":Ljava/lang/String;
    .restart local p6    # "sslKeyAlias":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v12, v0

    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v12

    .line 33
    .end local v8    # "keyStoreFile":Ljava/io/File;
    .end local v9    # "$this$configureSSLConnectors_u24lambda_u243":Ljava/security/KeyStore;
    .end local v10    # "$i$a$-apply-EnvironmentUtilsJvmKt$configureSSLConnectors$keyStore$1":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    nop

    .line 33
    const-string v1, "SSL requires certificate password: use ktor.security.ssl.privateKeyPassword config"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    nop

    .line 28
    const-string v1, "SSL requires keystore password: use ktor.security.ssl.keyStorePassword config"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    nop

    .line 23
    const-string v1, "SSL requires keystore: use -sslKeyStore=path or ktor.security.ssl.keyStore config"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getConfigFromEnvironment()Lio/ktor/server/config/ApplicationConfig;
    .locals 14

    .line 76
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "getProperties()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    .line 77
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 78
    nop

    .local v0, "$this$filterKeys$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$f$filterKeys":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    .local v2, "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 99
    .local v4, "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 78
    .local v7, "$i$a$-filterKeys-EnvironmentUtilsJvmKt$getConfigFromEnvironment$1":I
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v10, "ktor."

    const/4 v11, 0x0

    invoke-static {v5, v10, v11, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    .line 99
    .end local v6    # "it":Ljava/lang/Object;
    .end local v7    # "$i$a$-filterKeys-EnvironmentUtilsJvmKt$getConfigFromEnvironment$1":I
    if-eqz v5, :cond_0

    .line 100
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .end local v4    # "entry$iv":Ljava/util/Map$Entry;
    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 79
    .end local v0    # "$this$filterKeys$iv":Ljava/util/Map;
    .end local v1    # "$i$f$filterKeys":I
    .end local v2    # "result$iv":Ljava/util/LinkedHashMap;
    nop

    .line 96
    .local v0, "env":Ljava/util/Map;
    const/4 v1, 0x0

    .line 79
    .local v1, "$i$a$-let-EnvironmentUtilsJvmKt$getConfigFromEnvironment$2":I
    move-object v2, v0

    .local v2, "$this$map$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 104
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 105
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 106
    .local v9, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v10, v9

    .local v10, "it":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 79
    .local v11, "$i$a$-map-EnvironmentUtilsJvmKt$getConfigFromEnvironment$2$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/String;

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 106
    .end local v10    # "it":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-map-EnvironmentUtilsJvmKt$getConfigFromEnvironment$2$1":I
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    .end local v9    # "item$iv$iv":Ljava/util/Map$Entry;
    :cond_2
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 104
    nop

    .line 79
    .end local v2    # "$this$map$iv":Ljava/util/Map;
    .end local v3    # "$i$f$map":I
    new-instance v2, Lio/ktor/server/config/MapApplicationConfig;

    invoke-direct {v2, v4}, Lio/ktor/server/config/MapApplicationConfig;-><init>(Ljava/util/List;)V

    .end local v0    # "env":Ljava/util/Map;
    .end local v1    # "$i$a$-let-EnvironmentUtilsJvmKt$getConfigFromEnvironment$2":I
    check-cast v2, Lio/ktor/server/config/ApplicationConfig;

    return-object v2
.end method
