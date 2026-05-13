.class final Lio/ktor/server/engine/BaseApplicationResponse$cookies$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseApplicationResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/BaseApplicationResponse;-><init>(Lio/ktor/server/application/ApplicationCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/server/response/ResponseCookies;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/server/response/ResponseCookies;",
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
.field final synthetic this$0:Lio/ktor/server/engine/BaseApplicationResponse;


# direct methods
.method constructor <init>(Lio/ktor/server/engine/BaseApplicationResponse;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationResponse$cookies$2;->this$0:Lio/ktor/server/engine/BaseApplicationResponse;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/server/response/ResponseCookies;
    .locals 4

    .line 33
    new-instance v0, Lio/ktor/server/response/ResponseCookies;

    iget-object v1, p0, Lio/ktor/server/engine/BaseApplicationResponse$cookies$2;->this$0:Lio/ktor/server/engine/BaseApplicationResponse;

    check-cast v1, Lio/ktor/server/response/ApplicationResponse;

    iget-object v2, p0, Lio/ktor/server/engine/BaseApplicationResponse$cookies$2;->this$0:Lio/ktor/server/engine/BaseApplicationResponse;

    invoke-virtual {v2}, Lio/ktor/server/engine/BaseApplicationResponse;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/server/plugins/OriginConnectionPointKt;->getOrigin(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/RequestConnectionPoint;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/http/RequestConnectionPoint;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/ktor/server/engine/BaseApplicationResponse$cookies$2;->this$0:Lio/ktor/server/engine/BaseApplicationResponse;

    invoke-virtual {v2}, Lio/ktor/server/engine/BaseApplicationResponse;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/server/plugins/OriginConnectionPointKt;->getOrigin(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/RequestConnectionPoint;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/http/RequestConnectionPoint;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wss"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {v0, v1, v2}, Lio/ktor/server/response/ResponseCookies;-><init>(Lio/ktor/server/response/ApplicationResponse;Z)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationResponse$cookies$2;->invoke()Lio/ktor/server/response/ResponseCookies;

    move-result-object v0

    return-object v0
.end method
