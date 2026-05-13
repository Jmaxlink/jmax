.class public final Lio/ktor/server/application/CreatePluginUtilsKt;
.super Ljava/lang/Object;
.source "CreatePluginUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreatePluginUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatePluginUtils.kt\nio/ktor/server/application/CreatePluginUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n1855#2,2:346\n1855#2,2:348\n1855#2,2:350\n1855#2,2:352\n1855#2,2:354\n*S KotlinDebug\n*F\n+ 1 CreatePluginUtils.kt\nio/ktor/server/application/CreatePluginUtilsKt\n*L\n303#1:346,2\n307#1:348,2\n311#1:350,2\n315#1:352,2\n319#1:354,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001aK\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00072\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u001a3\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u001ah\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052!\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u0002H\u00020\t2\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u001aR\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0012\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00072\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cH\u0007\u00a2\u0006\u0002\u0008\u0013\u001aK\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0012\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00072\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0014\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u001a:\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00122\u0006\u0010\u0004\u001a\u00020\u00052\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cH\u0007\u00a2\u0006\u0002\u0008\u0013\u001a3\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00122\u0006\u0010\u0004\u001a\u00020\u00052\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u001ao\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0012\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052!\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u0002H\u00020\t2\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cH\u0007\u00a2\u0006\u0002\u0008\u0013\u001ah\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0012\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052!\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u0002H\u00020\t2\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0014\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u001a\u0088\u0001\u0010\u0015\u001a\u00020\u0016\"\u0008\u0008\u0000\u0010\u0017*\u00020\u0018\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0003*\u0014\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00160\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00182\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00072\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cH\u0002\u001a\u0088\u0001\u0010\u001e\u001a\u00020\u0016\"\u0008\u0008\u0000\u0010\u0017*\u00020\u0018\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0003*\u0014\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00160\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00182\u001d\u0010\u0008\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0014\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00072\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cH\u0002\u001aD\u0010\u001f\u001a\u00020\u000b\"\u0008\u0008\u0000\u0010 *\u00020\u0003\"\u000e\u0008\u0001\u0010!*\u0008\u0012\u0004\u0012\u0002H 0\n*\u0002H!2\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u0002H!\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cH\u0002\u00a2\u0006\u0002\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "createApplicationPlugin",
        "Lio/ktor/server/application/ApplicationPlugin;",
        "PluginConfigT",
        "",
        "name",
        "",
        "createConfiguration",
        "Lkotlin/Function0;",
        "body",
        "Lkotlin/Function1;",
        "Lio/ktor/server/application/PluginBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "configurationPath",
        "Lio/ktor/server/config/ApplicationConfig;",
        "Lkotlin/ParameterName;",
        "config",
        "createRouteScopedPlugin",
        "Lio/ktor/server/application/RouteScopedPlugin;",
        "createRouteScopedPluginOld",
        "Lio/ktor/server/application/RouteScopedPluginBuilder;",
        "createPluginInstance",
        "Lio/ktor/server/application/PluginInstance;",
        "PipelineT",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "Lio/ktor/server/application/Plugin;",
        "application",
        "Lio/ktor/server/application/Application;",
        "pipeline",
        "configure",
        "createRouteScopedPluginInstance",
        "setupPlugin",
        "Configuration",
        "Builder",
        "(Lio/ktor/server/application/PluginBuilder;Lkotlin/jvm/functions/Function1;)V",
        "ktor-server-core"
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
.method public static final synthetic access$createPluginInstance(Lio/ktor/server/application/Plugin;Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/server/application/Plugin;
    .param p1, "application"    # Lio/ktor/server/application/Application;
    .param p2, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p3, "body"    # Lkotlin/jvm/functions/Function1;
    .param p4, "createConfiguration"    # Lkotlin/jvm/functions/Function0;
    .param p5, "configure"    # Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-static/range {p0 .. p5}, Lio/ktor/server/application/CreatePluginUtilsKt;->createPluginInstance(Lio/ktor/server/application/Plugin;Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createRouteScopedPluginInstance(Lio/ktor/server/application/Plugin;Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/server/application/Plugin;
    .param p1, "application"    # Lio/ktor/server/application/Application;
    .param p2, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p3, "body"    # Lkotlin/jvm/functions/Function1;
    .param p4, "createConfiguration"    # Lkotlin/jvm/functions/Function0;
    .param p5, "configure"    # Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-static/range {p0 .. p5}, Lio/ktor/server/application/CreatePluginUtilsKt;->createRouteScopedPluginInstance(Lio/ktor/server/application/Plugin;Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;

    move-result-object v0

    return-object v0
.end method

.method public static final createApplicationPlugin(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/ApplicationPlugin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "configurationPath"    # Ljava/lang/String;
    .param p2, "createConfiguration"    # Lkotlin/jvm/functions/Function1;
    .param p3, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PluginConfigT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/config/ApplicationConfig;",
            "+TPluginConfigT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/PluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/application/ApplicationPlugin<",
            "TPluginConfigT;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lio/ktor/server/application/ApplicationPlugin;

    .line 54
    return-object v0
.end method

.method public static final createApplicationPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/ApplicationPlugin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "createConfiguration"    # Lkotlin/jvm/functions/Function0;
    .param p2, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PluginConfigT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPluginConfigT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/PluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/application/ApplicationPlugin<",
            "TPluginConfigT;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;

    invoke-direct {v0, p0, p2, p1}, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lio/ktor/server/application/ApplicationPlugin;

    .line 92
    return-object v0
.end method

.method public static final createApplicationPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/ApplicationPlugin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/PluginBuilder<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/application/ApplicationPlugin<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$3;->INSTANCE:Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$3;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0, p1}, Lio/ktor/server/application/CreatePluginUtilsKt;->createApplicationPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/ApplicationPlugin;

    move-result-object v0

    return-object v0
.end method

.method private static final createPluginInstance(Lio/ktor/server/application/Plugin;Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;
    .locals 5
    .param p0, "$this$createPluginInstance"    # Lio/ktor/server/application/Plugin;
    .param p1, "application"    # Lio/ktor/server/application/Application;
    .param p2, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p3, "body"    # Lkotlin/jvm/functions/Function1;
    .param p4, "createConfiguration"    # Lkotlin/jvm/functions/Function0;
    .param p5, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PipelineT:",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "PluginConfigT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/Plugin<",
            "-TPipelineT;+TPluginConfigT;",
            "Lio/ktor/server/application/PluginInstance;",
            ">;",
            "Lio/ktor/server/application/Application;",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/PluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPluginConfigT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TPluginConfigT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/application/PluginInstance;"
        }
    .end annotation

    .line 261
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .local v0, "config":Ljava/lang/Object;
    move-object v1, p0

    .line 264
    .local v1, "currentPlugin":Lio/ktor/server/application/Plugin;
    invoke-interface {v1}, Lio/ktor/server/application/Plugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v2

    new-instance v3, Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;

    invoke-direct {v3, p1, p2, v0, v2}, Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;-><init>(Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Ljava/lang/Object;Lio/ktor/util/AttributeKey;)V

    move-object v2, v3

    .line 270
    .local v2, "pluginBuilder":Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;
    move-object v3, v2

    check-cast v3, Lio/ktor/server/application/PluginBuilder;

    invoke-static {v3, p3}, Lio/ktor/server/application/CreatePluginUtilsKt;->setupPlugin(Lio/ktor/server/application/PluginBuilder;Lkotlin/jvm/functions/Function1;)V

    .line 271
    new-instance v3, Lio/ktor/server/application/PluginInstance;

    move-object v4, v2

    check-cast v4, Lio/ktor/server/application/PluginBuilder;

    invoke-direct {v3, v4}, Lio/ktor/server/application/PluginInstance;-><init>(Lio/ktor/server/application/PluginBuilder;)V

    return-object v3
.end method

.method public static final createRouteScopedPlugin(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "configurationPath"    # Ljava/lang/String;
    .param p2, "createConfiguration"    # Lkotlin/jvm/functions/Function1;
    .param p3, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PluginConfigT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/config/ApplicationConfig;",
            "+TPluginConfigT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/RouteScopedPluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/application/RouteScopedPlugin<",
            "TPluginConfigT;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lio/ktor/server/application/RouteScopedPlugin;

    .line 197
    return-object v0
.end method

.method public static final createRouteScopedPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "createConfiguration"    # Lkotlin/jvm/functions/Function0;
    .param p2, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PluginConfigT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPluginConfigT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/RouteScopedPluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/application/RouteScopedPlugin<",
            "TPluginConfigT;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$1;

    invoke-direct {v0, p0, p2, p1}, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lio/ktor/server/application/RouteScopedPlugin;

    .line 139
    return-object v0
.end method

.method public static final createRouteScopedPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/RouteScopedPluginBuilder<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/application/RouteScopedPlugin<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$3;->INSTANCE:Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$3;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0, p1}, Lio/ktor/server/application/CreatePluginUtilsKt;->createRouteScopedPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;

    move-result-object v0

    return-object v0
.end method

.method private static final createRouteScopedPluginInstance(Lio/ktor/server/application/Plugin;Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;
    .locals 5
    .param p0, "$this$createRouteScopedPluginInstance"    # Lio/ktor/server/application/Plugin;
    .param p1, "application"    # Lio/ktor/server/application/Application;
    .param p2, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p3, "body"    # Lkotlin/jvm/functions/Function1;
    .param p4, "createConfiguration"    # Lkotlin/jvm/functions/Function0;
    .param p5, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PipelineT:",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "PluginConfigT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/Plugin<",
            "-TPipelineT;+TPluginConfigT;",
            "Lio/ktor/server/application/PluginInstance;",
            ">;",
            "Lio/ktor/server/application/Application;",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/RouteScopedPluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPluginConfigT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TPluginConfigT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/application/PluginInstance;"
        }
    .end annotation

    .line 284
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .local v0, "config":Ljava/lang/Object;
    move-object v1, p0

    .line 287
    .local v1, "currentPlugin":Lio/ktor/server/application/Plugin;
    invoke-interface {v1}, Lio/ktor/server/application/Plugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v2

    new-instance v3, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPluginInstance$pluginBuilder$1;

    invoke-direct {v3, p1, p2, v0, v2}, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPluginInstance$pluginBuilder$1;-><init>(Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Ljava/lang/Object;Lio/ktor/util/AttributeKey;)V

    move-object v2, v3

    .line 294
    .local v2, "pluginBuilder":Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPluginInstance$pluginBuilder$1;
    move-object v3, v2

    check-cast v3, Lio/ktor/server/application/PluginBuilder;

    invoke-static {v3, p3}, Lio/ktor/server/application/CreatePluginUtilsKt;->setupPlugin(Lio/ktor/server/application/PluginBuilder;Lkotlin/jvm/functions/Function1;)V

    .line 295
    new-instance v3, Lio/ktor/server/application/PluginInstance;

    move-object v4, v2

    check-cast v4, Lio/ktor/server/application/PluginBuilder;

    invoke-direct {v3, v4}, Lio/ktor/server/application/PluginInstance;-><init>(Lio/ktor/server/application/PluginBuilder;)V

    return-object v3
.end method

.method public static final synthetic createRouteScopedPluginOld(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "configurationPath"    # Ljava/lang/String;
    .param p2, "createConfiguration"    # Lkotlin/jvm/functions/Function1;
    .param p3, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This will be removed"
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/application/CreatePluginUtilsKt;->createRouteScopedPlugin(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic createRouteScopedPluginOld(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "createConfiguration"    # Lkotlin/jvm/functions/Function0;
    .param p2, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This will be removed"
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-static {p0, p1, p2}, Lio/ktor/server/application/CreatePluginUtilsKt;->createRouteScopedPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic createRouteScopedPluginOld(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This will be removed"
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$4;->INSTANCE:Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$4;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0, p1}, Lio/ktor/server/application/CreatePluginUtilsKt;->createRouteScopedPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;

    move-result-object v0

    return-object v0
.end method

.method private static final setupPlugin(Lio/ktor/server/application/PluginBuilder;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p0, "$this$setupPlugin"    # Lio/ktor/server/application/PluginBuilder;
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Configuration:",
            "Ljava/lang/Object;",
            "Builder:",
            "Lio/ktor/server/application/PluginBuilder<",
            "TConfiguration;>;>(TBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-TBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 301
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getCallInterceptions$ktor_server_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 346
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/server/application/Interception;

    .local v4, "it":Lio/ktor/server/application/Interception;
    const/4 v5, 0x0

    .line 304
    .local v5, "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$1":I
    invoke-virtual {v4}, Lio/ktor/server/application/Interception;->getAction()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    nop

    .line 346
    .end local v4    # "it":Lio/ktor/server/application/Interception;
    .end local v5    # "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 347
    :cond_0
    nop

    .line 307
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getOnReceiveInterceptions$ktor_server_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 348
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/server/application/Interception;

    .restart local v4    # "it":Lio/ktor/server/application/Interception;
    const/4 v5, 0x0

    .line 308
    .local v5, "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$2":I
    invoke-virtual {v4}, Lio/ktor/server/application/Interception;->getAction()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;

    move-result-object v7

    invoke-virtual {v7}, Lio/ktor/server/application/ApplicationCallPipeline;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    nop

    .line 348
    .end local v4    # "it":Lio/ktor/server/application/Interception;
    .end local v5    # "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$2":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 349
    :cond_1
    nop

    .line 311
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getOnResponseInterceptions$ktor_server_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 350
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/server/application/Interception;

    .restart local v4    # "it":Lio/ktor/server/application/Interception;
    const/4 v5, 0x0

    .line 312
    .local v5, "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$3":I
    invoke-virtual {v4}, Lio/ktor/server/application/Interception;->getAction()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;

    move-result-object v7

    invoke-virtual {v7}, Lio/ktor/server/application/ApplicationCallPipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    nop

    .line 350
    .end local v4    # "it":Lio/ktor/server/application/Interception;
    .end local v5    # "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$3":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 351
    :cond_2
    nop

    .line 315
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getAfterResponseInterceptions$ktor_server_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 352
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/server/application/Interception;

    .restart local v4    # "it":Lio/ktor/server/application/Interception;
    const/4 v5, 0x0

    .line 316
    .local v5, "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$4":I
    invoke-virtual {v4}, Lio/ktor/server/application/Interception;->getAction()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;

    move-result-object v7

    invoke-virtual {v7}, Lio/ktor/server/application/ApplicationCallPipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    nop

    .line 352
    .end local v4    # "it":Lio/ktor/server/application/Interception;
    .end local v5    # "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$4":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 353
    :cond_3
    nop

    .line 319
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getHooks$ktor_server_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 354
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/server/application/HookHandler;

    .local v4, "it":Lio/ktor/server/application/HookHandler;
    const/4 v5, 0x0

    .line 319
    .local v5, "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$5":I
    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/ktor/server/application/HookHandler;->install(Lio/ktor/server/application/ApplicationCallPipeline;)V

    .line 354
    .end local v4    # "it":Lio/ktor/server/application/HookHandler;
    .end local v5    # "$i$a$-forEach-CreatePluginUtilsKt$setupPlugin$5":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_4

    .line 355
    :cond_4
    nop

    .line 320
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
