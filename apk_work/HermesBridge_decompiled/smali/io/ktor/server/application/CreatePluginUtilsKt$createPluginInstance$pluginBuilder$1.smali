.class public final Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;
.super Lio/ktor/server/application/PluginBuilder;
.source "CreatePluginUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/CreatePluginUtilsKt;->createPluginInstance(Lio/ktor/server/application/Plugin;Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/server/application/PluginBuilder<",
        "TPluginConfigT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "io/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1",
        "Lio/ktor/server/application/PluginBuilder;",
        "application",
        "Lio/ktor/server/application/Application;",
        "getApplication",
        "()Lio/ktor/server/application/Application;",
        "pipeline",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "getPipeline$ktor_server_core",
        "()Lio/ktor/server/application/ApplicationCallPipeline;",
        "pluginConfig",
        "getPluginConfig",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
.field private final application:Lio/ktor/server/application/Application;

.field private final pipeline:Lio/ktor/server/application/ApplicationCallPipeline;

.field private final pluginConfig:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPluginConfigT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Ljava/lang/Object;Lio/ktor/util/AttributeKey;)V
    .locals 0
    .param p1, "$application"    # Lio/ktor/server/application/Application;
    .param p2, "$pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p3, "$config"    # Ljava/lang/Object;
    .param p4, "$super_call_param$1"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/Application;",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "TPluginConfigT;",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/application/PluginInstance;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p4}, Lio/ktor/server/application/PluginBuilder;-><init>(Lio/ktor/util/AttributeKey;)V

    .line 265
    iput-object p1, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;->application:Lio/ktor/server/application/Application;

    .line 266
    iput-object p2, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;->pipeline:Lio/ktor/server/application/ApplicationCallPipeline;

    .line 267
    iput-object p3, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;->pluginConfig:Ljava/lang/Object;

    .line 264
    return-void
.end method


# virtual methods
.method public getApplication()Lio/ktor/server/application/Application;
    .locals 1

    .line 265
    iget-object v0, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;->application:Lio/ktor/server/application/Application;

    return-object v0
.end method

.method public getPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;
    .locals 1

    .line 266
    iget-object v0, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;->pipeline:Lio/ktor/server/application/ApplicationCallPipeline;

    return-object v0
.end method

.method public getPluginConfig()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPluginConfigT;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createPluginInstance$pluginBuilder$1;->pluginConfig:Ljava/lang/Object;

    return-object v0
.end method
