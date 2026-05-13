.class public final Lio/ktor/server/engine/EmbeddedServerKt;
.super Ljava/lang/Object;
.source "EmbeddedServer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aV\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0019\u0008\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0008\u000c\u00a2\u0006\u0002\u0010\r\u001a\u008b\u0001\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00132\u0019\u0008\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0008\u000c2\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0008\u000c\u00a2\u0006\u0002\u0010\u0016\u001a\u009b\u0001\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u0004*\u00020\u00172\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00062\u0014\u0008\u0002\u0010\u0018\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001a0\u0019\"\u00020\u001a2\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00132\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0019\u0008\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0008\u000c2\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0008\u000c\u00a2\u0006\u0002\u0010\u001d\u001a\u0099\u0001\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u0004*\u00020\u00172\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00132\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0019\u0008\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0008\u000c2\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0008\u000c\u00a2\u0006\u0002\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "embeddedServer",
        "TEngine",
        "Lio/ktor/server/engine/ApplicationEngine;",
        "TConfiguration",
        "Lio/ktor/server/engine/ApplicationEngine$Configuration;",
        "factory",
        "Lio/ktor/server/engine/ApplicationEngineFactory;",
        "environment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "configure",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/server/engine/ApplicationEngineFactory;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;",
        "port",
        "",
        "host",
        "",
        "watchPaths",
        "",
        "module",
        "Lio/ktor/server/application/Application;",
        "(Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "connectors",
        "",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "parentCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;[Lio/ktor/server/engine/EngineConnectorConfig;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;",
        "(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;",
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
.method public static final embeddedServer(Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 9
    .param p0, "factory"    # Lio/ktor/server/engine/ApplicationEngineFactory;
    .param p1, "port"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "watchPaths"    # Ljava/util/List;
    .param p4, "configure"    # Lkotlin/jvm/functions/Function1;
    .param p5, "module"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEngine::",
            "Lio/ktor/server/engine/ApplicationEngine;",
            "TConfiguration:",
            "Lio/ktor/server/engine/ApplicationEngine$Configuration;",
            ">(",
            "Lio/ktor/server/engine/ApplicationEngineFactory<",
            "+TTEngine;TTConfiguration;>;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTConfiguration;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;)TTEngine;"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watchPaths"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Lio/ktor/server/engine/EmbeddedServerKt;->embeddedServer(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object v0

    return-object v0
.end method

.method public static final embeddedServer(Lio/ktor/server/engine/ApplicationEngineFactory;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 1
    .param p0, "factory"    # Lio/ktor/server/engine/ApplicationEngineFactory;
    .param p1, "environment"    # Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEngine::",
            "Lio/ktor/server/engine/ApplicationEngine;",
            "TConfiguration:",
            "Lio/ktor/server/engine/ApplicationEngine$Configuration;",
            ">(",
            "Lio/ktor/server/engine/ApplicationEngineFactory<",
            "+TTEngine;TTConfiguration;>;",
            "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTConfiguration;",
            "Lkotlin/Unit;",
            ">;)TTEngine;"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-interface {p0, p1, p2}, Lio/ktor/server/engine/ApplicationEngineFactory;->create(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object v0

    return-object v0
.end method

.method public static final embeddedServer(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 16
    .param p0, "$this$embeddedServer"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "factory"    # Lio/ktor/server/engine/ApplicationEngineFactory;
    .param p2, "port"    # I
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "watchPaths"    # Ljava/util/List;
    .param p5, "parentCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p6, "configure"    # Lkotlin/jvm/functions/Function1;
    .param p7, "module"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEngine::",
            "Lio/ktor/server/engine/ApplicationEngine;",
            "TConfiguration:",
            "Lio/ktor/server/engine/ApplicationEngine$Configuration;",
            ">(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lio/ktor/server/engine/ApplicationEngineFactory<",
            "+TTEngine;TTConfiguration;>;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTConfiguration;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;)TTEngine;"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "<this>"

    move-object/from16 v9, p0

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "factory"

    move-object/from16 v10, p1

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "host"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "watchPaths"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parentCoroutineContext"

    move-object/from16 v12, p5

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configure"

    move-object/from16 v13, p6

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "module"

    move-object/from16 v14, p7

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x1

    new-array v2, v1, [Lio/ktor/server/engine/EngineConnectorConfig;

    new-instance v3, Lio/ktor/server/engine/EngineConnectorBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lio/ktor/server/engine/EngineConnectorBuilder;-><init>(Lio/ktor/server/engine/ConnectorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v3

    .local v1, "$this$embeddedServer_u24lambda_u240":Lio/ktor/server/engine/EngineConnectorBuilder;
    const/4 v4, 0x0

    .line 61
    .local v4, "$i$a$-apply-EmbeddedServerKt$embeddedServer$connectors$1":I
    move/from16 v15, p2

    invoke-virtual {v1, v15}, Lio/ktor/server/engine/EngineConnectorBuilder;->setPort(I)V

    .line 62
    invoke-virtual {v1, v0}, Lio/ktor/server/engine/EngineConnectorBuilder;->setHost(Ljava/lang/String;)V

    .line 63
    nop

    .end local v1    # "$this$embeddedServer_u24lambda_u240":Lio/ktor/server/engine/EngineConnectorBuilder;
    .end local v4    # "$i$a$-apply-EmbeddedServerKt$embeddedServer$connectors$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    const/4 v1, 0x0

    aput-object v3, v2, v1

    .line 59
    move-object v1, v2

    .line 65
    .local v1, "connectors":[Lio/ktor/server/engine/EngineConnectorConfig;
    nop

    .line 66
    nop

    .line 67
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [Lio/ktor/server/engine/EngineConnectorConfig;

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 65
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lio/ktor/server/engine/EmbeddedServerKt;->embeddedServer(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;[Lio/ktor/server/engine/EngineConnectorConfig;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object v2

    return-object v2
.end method

.method public static final embeddedServer(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;[Lio/ktor/server/engine/EngineConnectorConfig;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 7
    .param p0, "$this$embeddedServer"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "factory"    # Lio/ktor/server/engine/ApplicationEngineFactory;
    .param p2, "connectors"    # [Lio/ktor/server/engine/EngineConnectorConfig;
    .param p3, "watchPaths"    # Ljava/util/List;
    .param p4, "parentCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p5, "configure"    # Lkotlin/jvm/functions/Function1;
    .param p6, "module"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEngine::",
            "Lio/ktor/server/engine/ApplicationEngine;",
            "TConfiguration:",
            "Lio/ktor/server/engine/ApplicationEngine$Configuration;",
            ">(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lio/ktor/server/engine/ApplicationEngineFactory<",
            "+TTEngine;TTConfiguration;>;[",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTConfiguration;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;)TTEngine;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watchPaths"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentCoroutineContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Ljava/util/List;Lkotlin/jvm/functions/Function1;[Lio/ktor/server/engine/EngineConnectorConfig;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentKt;->applicationEngineEnvironment(Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    .line 100
    .local v0, "environment":Lio/ktor/server/engine/ApplicationEngineEnvironment;
    invoke-static {p1, v0, p5}, Lio/ktor/server/engine/EmbeddedServerKt;->embeddedServer(Lio/ktor/server/engine/ApplicationEngineFactory;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic embeddedServer$default(Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 6

    .line 32
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 35
    const/16 p1, 0x50

    move v1, p1

    goto :goto_0

    .line 32
    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_1

    .line 36
    const-string p2, "0.0.0.0"

    move-object v2, p2

    goto :goto_1

    .line 32
    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_2

    .line 37
    invoke-static {}, Lio/ktor/server/engine/ServerEngineUtilsJvmKt;->getWORKING_DIRECTORY_PATH()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    move-object v3, p3

    goto :goto_2

    .line 32
    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_3

    .line 38
    sget-object p1, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$1;->INSTANCE:Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$1;

    move-object p4, p1

    check-cast p4, Lkotlin/jvm/functions/Function1;

    move-object v4, p4

    goto :goto_3

    .line 32
    :cond_3
    move-object v4, p4

    :goto_3
    move-object v0, p0

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/server/engine/EmbeddedServerKt;->embeddedServer(Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic embeddedServer$default(Lio/ktor/server/engine/ApplicationEngineFactory;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 0

    .line 106
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 109
    sget-object p2, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$4;->INSTANCE:Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$4;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 106
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/server/engine/EmbeddedServerKt;->embeddedServer(Lio/ktor/server/engine/ApplicationEngineFactory;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic embeddedServer$default(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 9

    .line 49
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 52
    const/16 v0, 0x50

    move v3, v0

    goto :goto_0

    .line 49
    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "0.0.0.0"

    move-object v4, v0

    goto :goto_1

    .line 49
    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    .line 54
    invoke-static {}, Lio/ktor/server/engine/ServerEngineUtilsJvmKt;->getWORKING_DIRECTORY_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    .line 49
    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    .line 55
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    move-object v6, v0

    goto :goto_3

    .line 49
    :cond_3
    move-object v6, p5

    :goto_3
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_4

    .line 56
    sget-object v0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$2;->INSTANCE:Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v7, v0

    goto :goto_4

    .line 49
    :cond_4
    move-object v7, p6

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lio/ktor/server/engine/EmbeddedServerKt;->embeddedServer(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic embeddedServer$default(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;[Lio/ktor/server/engine/EngineConnectorConfig;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 7

    .line 83
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 86
    new-instance p2, Lio/ktor/server/engine/EngineConnectorBuilder;

    const/4 p8, 0x1

    const/4 v0, 0x0

    invoke-direct {p2, v0, p8, v0}, Lio/ktor/server/engine/EngineConnectorBuilder;-><init>(Lio/ktor/server/engine/ConnectorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {p2}, [Lio/ktor/server/engine/EngineConnectorBuilder;

    move-result-object p2

    check-cast p2, [Lio/ktor/server/engine/EngineConnectorConfig;

    move-object v2, p2

    goto :goto_0

    .line 83
    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    .line 87
    invoke-static {}, Lio/ktor/server/engine/ServerEngineUtilsJvmKt;->getWORKING_DIRECTORY_PATH()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    move-object v3, p3

    goto :goto_1

    .line 83
    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    .line 88
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    move-object p4, p2

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    move-object v4, p4

    goto :goto_2

    .line 83
    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    .line 89
    sget-object p2, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$3;->INSTANCE:Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$3;

    move-object p5, p2

    check-cast p5, Lkotlin/jvm/functions/Function1;

    move-object v5, p5

    goto :goto_3

    .line 83
    :cond_3
    move-object v5, p5

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lio/ktor/server/engine/EmbeddedServerKt;->embeddedServer(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;[Lio/ktor/server/engine/EngineConnectorConfig;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object p0

    return-object p0
.end method
