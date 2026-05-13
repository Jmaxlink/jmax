.class final Lio/ktor/server/routing/RoutingApplicationCall$parameters$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RoutingApplicationCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/routing/RoutingApplicationCall;-><init>(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/routing/Route;Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/request/ApplicationReceivePipeline;Lio/ktor/server/response/ApplicationSendPipeline;Lio/ktor/http/Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/http/Parameters;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoutingApplicationCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoutingApplicationCall.kt\nio/ktor/server/routing/RoutingApplicationCall$parameters$2\n+ 2 Parameters.kt\nio/ktor/http/Parameters$Companion\n*L\n1#1,65:1\n24#2:66\n*S KotlinDebug\n*F\n+ 1 RoutingApplicationCall.kt\nio/ktor/server/routing/RoutingApplicationCall$parameters$2\n*L\n39#1:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/http/Parameters;",
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
.field final synthetic $parameters:Lio/ktor/http/Parameters;

.field final synthetic this$0:Lio/ktor/server/routing/RoutingApplicationCall;


# direct methods
.method constructor <init>(Lio/ktor/server/routing/RoutingApplicationCall;Lio/ktor/http/Parameters;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/routing/RoutingApplicationCall$parameters$2;->this$0:Lio/ktor/server/routing/RoutingApplicationCall;

    iput-object p2, p0, Lio/ktor/server/routing/RoutingApplicationCall$parameters$2;->$parameters:Lio/ktor/http/Parameters;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/http/Parameters;
    .locals 7

    .line 39
    sget-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    .local v0, "this_$iv":Lio/ktor/http/Parameters$Companion;
    iget-object v1, p0, Lio/ktor/server/routing/RoutingApplicationCall$parameters$2;->this$0:Lio/ktor/server/routing/RoutingApplicationCall;

    iget-object v2, p0, Lio/ktor/server/routing/RoutingApplicationCall$parameters$2;->$parameters:Lio/ktor/http/Parameters;

    const/4 v3, 0x0

    .line 66
    .local v3, "$i$f$build":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6, v4, v5}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v4

    move-object v5, v4

    .local v5, "$this$invoke_u24lambda_u240":Lio/ktor/http/ParametersBuilder;
    const/4 v6, 0x0

    .line 40
    .local v6, "$i$a$-build-RoutingApplicationCall$parameters$2$1":I
    invoke-virtual {v1}, Lio/ktor/server/routing/RoutingApplicationCall;->getEngineCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v1

    check-cast v1, Lio/ktor/util/StringValues;

    invoke-interface {v5, v1}, Lio/ktor/http/ParametersBuilder;->appendAll(Lio/ktor/util/StringValues;)V

    .line 41
    check-cast v2, Lio/ktor/util/StringValues;

    invoke-interface {v5, v2}, Lio/ktor/http/ParametersBuilder;->appendMissing(Lio/ktor/util/StringValues;)V

    .line 42
    nop

    .line 66
    .end local v5    # "$this$invoke_u24lambda_u240":Lio/ktor/http/ParametersBuilder;
    .end local v6    # "$i$a$-build-RoutingApplicationCall$parameters$2$1":I
    invoke-interface {v4}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object v0

    .line 39
    .end local v0    # "this_$iv":Lio/ktor/http/Parameters$Companion;
    .end local v3    # "$i$f$build":I
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingApplicationCall$parameters$2;->invoke()Lio/ktor/http/Parameters;

    move-result-object v0

    return-object v0
.end method
