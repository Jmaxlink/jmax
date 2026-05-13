.class public final Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;
.super Ljava/lang/Object;
.source "CreatePluginUtils.kt"

# interfaces
.implements Lio/ktor/server/application/RouteScopedPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/CreatePluginUtilsKt;->createRouteScopedPlugin(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/RouteScopedPlugin<",
        "TPluginConfigT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J)\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0002\u0008\rH\u0016R\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "io/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2",
        "Lio/ktor/server/application/RouteScopedPlugin;",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/server/application/PluginInstance;",
        "getKey",
        "()Lio/ktor/util/AttributeKey;",
        "install",
        "pipeline",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "configure",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "ktor-server-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $body:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/application/RouteScopedPluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $configurationPath:Ljava/lang/String;

.field final synthetic $createConfiguration:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/config/ApplicationConfig;",
            "TPluginConfigT;>;"
        }
    .end annotation
.end field

.field private final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/application/PluginInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$name"    # Ljava/lang/String;
    .param p2, "$configurationPath"    # Ljava/lang/String;
    .param p3, "$body"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$createConfiguration"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/RouteScopedPluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/config/ApplicationConfig;",
            "+TPluginConfigT;>;)V"
        }
    .end annotation

    iput-object p2, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;->$configurationPath:Ljava/lang/String;

    iput-object p3, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;->$body:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;->$createConfiguration:Lkotlin/jvm/functions/Function1;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lio/ktor/util/AttributeKey;

    invoke-direct {v0, p1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;->key:Lio/ktor/util/AttributeKey;

    .line 172
    return-void
.end method


# virtual methods
.method public getKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/application/PluginInstance;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;
    .locals 9
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "Lkotlin/jvm/functions/Function1<",
            "-TPluginConfigT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/application/PluginInstance;"
        }
    .end annotation

    const-string v0, "pipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lio/ktor/server/application/ApplicationCallPipeline;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 183
    .local v0, "environment":Lio/ktor/server/application/ApplicationEnvironment;
    nop

    .line 184
    :try_start_0
    invoke-interface {v0}, Lio/ktor/server/application/ApplicationEnvironment;->getConfig()Lio/ktor/server/config/ApplicationConfig;

    move-result-object v1

    iget-object v2, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;->$configurationPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/ktor/server/config/ApplicationConfig;->config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v1

    .line 186
    .local v1, "_":Ljava/lang/Throwable;
    new-instance v2, Lio/ktor/server/config/MapApplicationConfig;

    invoke-direct {v2}, Lio/ktor/server/config/MapApplicationConfig;-><init>()V

    check-cast v2, Lio/ktor/server/config/ApplicationConfig;

    move-object v1, v2

    .line 183
    .end local v1    # "_":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 189
    .local v1, "config":Lio/ktor/server/config/ApplicationConfig;
    nop

    .line 190
    instance-of v2, p1, Lio/ktor/server/routing/Route;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lio/ktor/server/routing/Route;

    invoke-static {v2}, Lio/ktor/server/routing/RoutingKt;->getApplication(Lio/ktor/server/routing/Route;)Lio/ktor/server/application/Application;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    .line 191
    :cond_0
    instance-of v2, p1, Lio/ktor/server/application/Application;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lio/ktor/server/application/Application;

    move-object v4, v2

    .line 189
    :goto_1
    nop

    .line 195
    .local v4, "application":Lio/ktor/server/application/Application;
    move-object v3, p0

    check-cast v3, Lio/ktor/server/application/Plugin;

    iget-object v6, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;->$body:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2$install$1;

    iget-object v5, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;->$createConfiguration:Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v5, v1}, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2$install$1;-><init>(Lkotlin/jvm/functions/Function1;Lio/ktor/server/config/ApplicationConfig;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lio/ktor/server/application/CreatePluginUtilsKt;->access$createRouteScopedPluginInstance(Lio/ktor/server/application/Plugin;Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;

    move-result-object v2

    return-object v2

    .line 191
    .end local v4    # "application":Lio/ktor/server/application/Application;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported pipeline type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    .end local v0    # "environment":Lio/ktor/server/application/ApplicationEnvironment;
    .end local v1    # "config":Lio/ktor/server/config/ApplicationConfig;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 181
    const-string v1, "Can\'t install plugin with config: environment is not initialized."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic install(Lio/ktor/util/pipeline/Pipeline;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "pipeline"    # Lio/ktor/util/pipeline/Pipeline;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;

    .line 172
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/ApplicationCallPipeline;

    invoke-virtual {p0, v0, p2}, Lio/ktor/server/application/CreatePluginUtilsKt$createRouteScopedPlugin$2;->install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;

    move-result-object v0

    return-object v0
.end method
