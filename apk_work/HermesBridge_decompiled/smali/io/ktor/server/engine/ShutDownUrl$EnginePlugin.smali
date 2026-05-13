.class public final Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;
.super Ljava/lang/Object;
.source "ShutDownUrl.kt"

# interfaces
.implements Lio/ktor/server/application/BaseApplicationPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/engine/ShutDownUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnginePlugin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/BaseApplicationPlugin<",
        "Lio/ktor/server/engine/EnginePipeline;",
        "Lio/ktor/server/engine/ShutDownUrl$Config;",
        "Lio/ktor/server/engine/ShutDownUrl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0005J)\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00022\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0002\u0008\u000fH\u0016R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;",
        "Lio/ktor/server/application/BaseApplicationPlugin;",
        "Lio/ktor/server/engine/EnginePipeline;",
        "Lio/ktor/server/engine/ShutDownUrl$Config;",
        "Lio/ktor/server/engine/ShutDownUrl;",
        "()V",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "getKey",
        "()Lio/ktor/util/AttributeKey;",
        "install",
        "pipeline",
        "configure",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "ktor-server-host-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/engine/ShutDownUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;

    invoke-direct {v0}, Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;-><init>()V

    sput-object v0, Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;->INSTANCE:Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;

    .line 59
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "shutdown.url"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/engine/ShutDownUrl;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public install(Lio/ktor/server/engine/EnginePipeline;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ShutDownUrl;
    .locals 5
    .param p1, "pipeline"    # Lio/ktor/server/engine/EnginePipeline;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/EnginePipeline;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/engine/ShutDownUrl$Config;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/engine/ShutDownUrl;"
        }
    .end annotation

    const-string v0, "pipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lio/ktor/server/engine/ShutDownUrl$Config;

    invoke-direct {v0}, Lio/ktor/server/engine/ShutDownUrl$Config;-><init>()V

    .line 63
    .local v0, "config":Lio/ktor/server/engine/ShutDownUrl$Config;
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Lio/ktor/server/engine/ShutDownUrl;

    invoke-virtual {v0}, Lio/ktor/server/engine/ShutDownUrl$Config;->getShutDownUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/ktor/server/engine/ShutDownUrl$Config;->getExitCodeSupplier()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/ktor/server/engine/ShutDownUrl;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 66
    .local v1, "plugin":Lio/ktor/server/engine/ShutDownUrl;
    sget-object v2, Lio/ktor/server/engine/EnginePipeline;->Companion:Lio/ktor/server/engine/EnginePipeline$Companion;

    invoke-virtual {v2}, Lio/ktor/server/engine/EnginePipeline$Companion;->getBefore()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v2

    new-instance v3, Lio/ktor/server/engine/ShutDownUrl$EnginePlugin$install$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lio/ktor/server/engine/ShutDownUrl$EnginePlugin$install$1;-><init>(Lio/ktor/server/engine/ShutDownUrl;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v2, v3}, Lio/ktor/server/engine/EnginePipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 72
    return-object v1
.end method

.method public bridge synthetic install(Lio/ktor/util/pipeline/Pipeline;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "pipeline"    # Lio/ktor/util/pipeline/Pipeline;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;

    .line 58
    move-object v0, p1

    check-cast v0, Lio/ktor/server/engine/EnginePipeline;

    invoke-virtual {p0, v0, p2}, Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;->install(Lio/ktor/server/engine/EnginePipeline;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ShutDownUrl;

    move-result-object v0

    return-object v0
.end method
