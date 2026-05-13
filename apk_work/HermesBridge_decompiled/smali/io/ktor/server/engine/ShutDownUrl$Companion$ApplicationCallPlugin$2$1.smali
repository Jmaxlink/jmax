.class final Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShutDownUrl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;->invoke(Lio/ktor/server/application/PluginBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lio/ktor/server/application/OnCallContext<",
        "Lio/ktor/server/engine/ShutDownUrl$Config;",
        ">;",
        "Lio/ktor/server/application/ApplicationCall;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/application/OnCallContext;",
        "Lio/ktor/server/engine/ShutDownUrl$Config;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;"
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
    c = "io.ktor.server.engine.ShutDownUrl$Companion$ApplicationCallPlugin$2$1"
    f = "ShutDownUrl.kt"
    i = {}
    l = {
        0x67
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/server/engine/ShutDownUrl;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/server/engine/ShutDownUrl;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/ShutDownUrl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->$plugin:Lio/ktor/server/engine/ShutDownUrl;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/server/application/OnCallContext;Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/OnCallContext<",
            "Lio/ktor/server/engine/ShutDownUrl$Config;",
            ">;",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;

    iget-object v1, p0, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->$plugin:Lio/ktor/server/engine/ShutDownUrl;

    invoke-direct {v0, v1, p3}, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;-><init>(Lio/ktor/server/engine/ShutDownUrl;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/server/application/OnCallContext;

    check-cast p2, Lio/ktor/server/application/ApplicationCall;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->invoke(Lio/ktor/server/application/OnCallContext;Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 101
    iget v1, p0, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/server/application/ApplicationCall;

    .line 102
    .local v2, "call":Lio/ktor/server/application/ApplicationCall;
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->getUri(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->$plugin:Lio/ktor/server/engine/ShutDownUrl;

    invoke-virtual {v4}, Lio/ktor/server/engine/ShutDownUrl;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, v1, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->$plugin:Lio/ktor/server/engine/ShutDownUrl;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;->label:I

    invoke-virtual {v3, v2, v4}, Lio/ktor/server/engine/ShutDownUrl;->doShutdown(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "call":Lio/ktor/server/application/ApplicationCall;
    if-ne v2, v0, :cond_0

    .line 101
    return-object v0

    .line 103
    :cond_0
    move-object v0, v1

    .line 105
    .end local v1    # "this":Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;
    .restart local v0    # "this":Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;
    :goto_0
    move-object v1, v0

    .end local v0    # "this":Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;
    .restart local v1    # "this":Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
