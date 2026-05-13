.class public final Lio/ktor/server/routing/RoutingApplicationCall;
.super Ljava/lang/Object;
.source "RoutingApplicationCall.kt"

# interfaces
.implements Lio/ktor/server/application/ApplicationCall;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010)\u001a\u00020*H\u0016R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u000c\u001a\u00020\r8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001f\u001a\u00020 X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020$X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lio/ktor/server/routing/RoutingApplicationCall;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "engineCall",
        "route",
        "Lio/ktor/server/routing/Route;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "receivePipeline",
        "Lio/ktor/server/request/ApplicationReceivePipeline;",
        "responsePipeline",
        "Lio/ktor/server/response/ApplicationSendPipeline;",
        "parameters",
        "Lio/ktor/http/Parameters;",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/routing/Route;Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/request/ApplicationReceivePipeline;Lio/ktor/server/response/ApplicationSendPipeline;Lio/ktor/http/Parameters;)V",
        "application",
        "Lio/ktor/server/application/Application;",
        "getApplication",
        "()Lio/ktor/server/application/Application;",
        "attributes",
        "Lio/ktor/util/Attributes;",
        "getAttributes",
        "()Lio/ktor/util/Attributes;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getEngineCall",
        "()Lio/ktor/server/application/ApplicationCall;",
        "getParameters",
        "()Lio/ktor/http/Parameters;",
        "parameters$delegate",
        "Lkotlin/Lazy;",
        "request",
        "Lio/ktor/server/routing/RoutingApplicationRequest;",
        "getRequest",
        "()Lio/ktor/server/routing/RoutingApplicationRequest;",
        "response",
        "Lio/ktor/server/routing/RoutingApplicationResponse;",
        "getResponse",
        "()Lio/ktor/server/routing/RoutingApplicationResponse;",
        "getRoute",
        "()Lio/ktor/server/routing/Route;",
        "toString",
        "",
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
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final engineCall:Lio/ktor/server/application/ApplicationCall;

.field private final parameters$delegate:Lkotlin/Lazy;

.field private final request:Lio/ktor/server/routing/RoutingApplicationRequest;

.field private final response:Lio/ktor/server/routing/RoutingApplicationResponse;

.field private final route:Lio/ktor/server/routing/Route;


# direct methods
.method public constructor <init>(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/routing/Route;Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/request/ApplicationReceivePipeline;Lio/ktor/server/response/ApplicationSendPipeline;Lio/ktor/http/Parameters;)V
    .locals 2
    .param p1, "engineCall"    # Lio/ktor/server/application/ApplicationCall;
    .param p2, "route"    # Lio/ktor/server/routing/Route;
    .param p3, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p4, "receivePipeline"    # Lio/ktor/server/request/ApplicationReceivePipeline;
    .param p5, "responsePipeline"    # Lio/ktor/server/response/ApplicationSendPipeline;
    .param p6, "parameters"    # Lio/ktor/http/Parameters;

    const-string v0, "engineCall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receivePipeline"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responsePipeline"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/ktor/server/routing/RoutingApplicationCall;->engineCall:Lio/ktor/server/application/ApplicationCall;

    .line 22
    iput-object p2, p0, Lio/ktor/server/routing/RoutingApplicationCall;->route:Lio/ktor/server/routing/Route;

    .line 23
    iput-object p3, p0, Lio/ktor/server/routing/RoutingApplicationCall;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 33
    new-instance v0, Lio/ktor/server/routing/RoutingApplicationRequest;

    iget-object v1, p0, Lio/ktor/server/routing/RoutingApplicationCall;->engineCall:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v1

    invoke-direct {v0, p0, p4, v1}, Lio/ktor/server/routing/RoutingApplicationRequest;-><init>(Lio/ktor/server/routing/RoutingApplicationCall;Lio/ktor/server/request/ApplicationReceivePipeline;Lio/ktor/server/request/ApplicationRequest;)V

    iput-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->request:Lio/ktor/server/routing/RoutingApplicationRequest;

    .line 36
    new-instance v0, Lio/ktor/server/routing/RoutingApplicationResponse;

    iget-object v1, p0, Lio/ktor/server/routing/RoutingApplicationCall;->engineCall:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v1

    invoke-direct {v0, p0, p5, v1}, Lio/ktor/server/routing/RoutingApplicationResponse;-><init>(Lio/ktor/server/routing/RoutingApplicationCall;Lio/ktor/server/response/ApplicationSendPipeline;Lio/ktor/server/response/ApplicationResponse;)V

    iput-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->response:Lio/ktor/server/routing/RoutingApplicationResponse;

    .line 38
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/ktor/server/routing/RoutingApplicationCall$parameters$2;

    invoke-direct {v1, p0, p6}, Lio/ktor/server/routing/RoutingApplicationCall$parameters$2;-><init>(Lio/ktor/server/routing/RoutingApplicationCall;Lio/ktor/http/Parameters;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->parameters$delegate:Lkotlin/Lazy;

    .line 20
    return-void
.end method


# virtual methods
.method public getApplication()Lio/ktor/server/application/Application;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->engineCall:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lio/ktor/util/Attributes;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->engineCall:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getEngineCall()Lio/ktor/server/application/ApplicationCall;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->engineCall:Lio/ktor/server/application/ApplicationCall;

    return-object v0
.end method

.method public getParameters()Lio/ktor/http/Parameters;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->parameters$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lio/ktor/server/request/ApplicationRequest;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingApplicationCall;->getRequest()Lio/ktor/server/routing/RoutingApplicationRequest;

    move-result-object v0

    check-cast v0, Lio/ktor/server/request/ApplicationRequest;

    return-object v0
.end method

.method public getRequest()Lio/ktor/server/routing/RoutingApplicationRequest;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->request:Lio/ktor/server/routing/RoutingApplicationRequest;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lio/ktor/server/response/ApplicationResponse;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingApplicationCall;->getResponse()Lio/ktor/server/routing/RoutingApplicationResponse;

    move-result-object v0

    check-cast v0, Lio/ktor/server/response/ApplicationResponse;

    return-object v0
.end method

.method public getResponse()Lio/ktor/server/routing/RoutingApplicationResponse;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->response:Lio/ktor/server/routing/RoutingApplicationResponse;

    return-object v0
.end method

.method public final getRoute()Lio/ktor/server/routing/Route;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationCall;->route:Lio/ktor/server/routing/Route;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoutingApplicationCall(route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/RoutingApplicationCall;->route:Lio/ktor/server/routing/Route;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
