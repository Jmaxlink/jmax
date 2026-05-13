.class public final Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;
.super Ljava/lang/Object;
.source "CreatePluginUtils.kt"

# interfaces
.implements Lio/ktor/server/application/ApplicationPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/CreatePluginUtilsKt;->createApplicationPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/ApplicationPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/ApplicationPlugin<",
        "TPluginConfigT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J)\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0002\u0008\rH\u0016R\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "io/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2",
        "Lio/ktor/server/application/ApplicationPlugin;",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/server/application/PluginInstance;",
        "getKey",
        "()Lio/ktor/util/AttributeKey;",
        "install",
        "pipeline",
        "Lio/ktor/server/application/Application;",
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
            "Lio/ktor/server/application/PluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $createConfiguration:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
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
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "$name"    # Ljava/lang/String;
    .param p2, "$body"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$createConfiguration"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/PluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPluginConfigT;>;)V"
        }
    .end annotation

    iput-object p2, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;->$body:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;->$createConfiguration:Lkotlin/jvm/functions/Function0;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lio/ktor/util/AttributeKey;

    invoke-direct {v0, p1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;->key:Lio/ktor/util/AttributeKey;

    .line 83
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

    .line 84
    iget-object v0, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public install(Lio/ktor/server/application/Application;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;
    .locals 7
    .param p1, "pipeline"    # Lio/ktor/server/application/Application;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/Application;",
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

    .line 90
    move-object v1, p0

    check-cast v1, Lio/ktor/server/application/Plugin;

    move-object v3, p1

    check-cast v3, Lio/ktor/server/application/ApplicationCallPipeline;

    iget-object v4, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;->$body:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;->$createConfiguration:Lkotlin/jvm/functions/Function0;

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lio/ktor/server/application/CreatePluginUtilsKt;->access$createPluginInstance(Lio/ktor/server/application/Plugin;Lio/ktor/server/application/Application;Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic install(Lio/ktor/util/pipeline/Pipeline;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "pipeline"    # Lio/ktor/util/pipeline/Pipeline;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;

    .line 83
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/Application;

    invoke-virtual {p0, v0, p2}, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$2;->install(Lio/ktor/server/application/Application;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;

    move-result-object v0

    return-object v0
.end method
