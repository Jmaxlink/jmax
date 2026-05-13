.class final Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PluginBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/PluginBuilder;->onDefaultPhase(Ljava/util/List;Lio/ktor/util/pipeline/PipelinePhase;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u000e\u0008\u0001\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0008\u0008\u0002\u0010\u0006*\u00020\u0003*\u0002H\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u0002H\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "ContextT",
        "Lio/ktor/server/application/CallContext;",
        "PluginConfig",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "body"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.server.application.PluginBuilder$onDefaultPhase$1"
    f = "PluginBuilder.kt"
    i = {}
    l = {
        0xd7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
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

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->$block:Lkotlin/jvm/functions/Function4;

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/server/application/CallContext;Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;",
            "Lio/ktor/server/application/ApplicationCall;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;

    iget-object v1, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->$block:Lkotlin/jvm/functions/Function4;

    invoke-direct {v0, v1, p4}, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->L$2:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/server/application/CallContext;

    check-cast p2, Lio/ktor/server/application/ApplicationCall;

    check-cast p4, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->invoke(Lio/ktor/server/application/CallContext;Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 215
    iget v1, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/server/application/CallContext;

    .local v2, "$this$onDefaultPhaseWithMessage":Lio/ktor/server/application/CallContext;
    iget-object v3, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/server/application/ApplicationCall;

    .local v3, "call":Lio/ktor/server/application/ApplicationCall;
    iget-object v4, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->L$2:Ljava/lang/Object;

    .local v4, "body":Ljava/lang/Object;
    iget-object v5, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->$block:Lkotlin/jvm/functions/Function4;

    const/4 v6, 0x0

    iput-object v6, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;->label:I

    invoke-interface {v5, v2, v3, v4, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$onDefaultPhaseWithMessage":Lio/ktor/server/application/CallContext;
    .end local v3    # "call":Lio/ktor/server/application/ApplicationCall;
    .end local v4    # "body":Ljava/lang/Object;
    if-ne v2, v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;
    .restart local v0    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
