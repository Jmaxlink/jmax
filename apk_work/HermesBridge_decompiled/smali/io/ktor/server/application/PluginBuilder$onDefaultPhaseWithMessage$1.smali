.class final Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PluginBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/PluginBuilder;->onDefaultPhaseWithMessage(Ljava/util/List;Lio/ktor/util/pipeline/PipelinePhase;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/util/pipeline/Pipeline<",
        "TT;",
        "Lio/ktor/server/application/ApplicationCall;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u000e\u0008\u0001\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0008\u0008\u0002\u0010\u0006*\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\t0\u0008H\n\u00a2\u0006\u0002\u0008\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "ContextT",
        "Lio/ktor/server/application/CallContext;",
        "PluginConfig",
        "pipeline",
        "Lio/ktor/util/pipeline/Pipeline;",
        "Lio/ktor/server/application/ApplicationCall;",
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
.field final synthetic $block:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "TContextT;",
            "Lio/ktor/server/application/ApplicationCall;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contextInit:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TPluginConfig;",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;TContextT;>;"
        }
    .end annotation
.end field

.field final synthetic $handlerName:Ljava/lang/String;

.field final synthetic $phase:Lio/ktor/util/pipeline/PipelinePhase;

.field final synthetic this$0:Lio/ktor/server/application/PluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/PluginBuilder<",
            "TPluginConfig;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/server/application/PluginBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelinePhase;",
            "Lio/ktor/server/application/PluginBuilder<",
            "TPluginConfig;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function4<",
            "-TContextT;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TPluginConfig;-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;+TContextT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->$phase:Lio/ktor/util/pipeline/PipelinePhase;

    iput-object p2, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->this$0:Lio/ktor/server/application/PluginBuilder;

    iput-object p3, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->$handlerName:Ljava/lang/String;

    iput-object p4, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->$block:Lkotlin/jvm/functions/Function4;

    iput-object p5, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->$contextInit:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 186
    move-object v0, p1

    check-cast v0, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {p0, v0}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->invoke(Lio/ktor/util/pipeline/Pipeline;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/util/pipeline/Pipeline;)V
    .locals 8
    .param p1, "pipeline"    # Lio/ktor/util/pipeline/Pipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/Pipeline<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->$phase:Lio/ktor/util/pipeline/PipelinePhase;

    new-instance v7, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;

    iget-object v2, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->this$0:Lio/ktor/server/application/PluginBuilder;

    iget-object v3, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->$handlerName:Ljava/lang/String;

    iget-object v4, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->$block:Lkotlin/jvm/functions/Function4;

    iget-object v5, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->$contextInit:Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;-><init>(Lio/ktor/server/application/PluginBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v0, v7}, Lio/ktor/util/pipeline/Pipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 203
    return-void
.end method
