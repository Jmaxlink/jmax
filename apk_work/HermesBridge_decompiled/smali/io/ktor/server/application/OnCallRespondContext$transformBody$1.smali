.class final Lio/ktor/server/application/OnCallRespondContext$transformBody$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "KtorCallContexts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/OnCallRespondContext;->transformBody(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.server.application.OnCallRespondContext"
    f = "KtorCallContexts.kt"
    i = {}
    l = {
        0x56
    }
    m = "transformBody"
    n = {}
    s = {}
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/server/application/OnCallRespondContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/OnCallRespondContext<",
            "TPluginConfig;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/server/application/OnCallRespondContext;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/OnCallRespondContext<",
            "TPluginConfig;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/application/OnCallRespondContext$transformBody$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/application/OnCallRespondContext$transformBody$1;->this$0:Lio/ktor/server/application/OnCallRespondContext;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lio/ktor/server/application/OnCallRespondContext$transformBody$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/ktor/server/application/OnCallRespondContext$transformBody$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/ktor/server/application/OnCallRespondContext$transformBody$1;->label:I

    iget-object v0, p0, Lio/ktor/server/application/OnCallRespondContext$transformBody$1;->this$0:Lio/ktor/server/application/OnCallRespondContext;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1, v2}, Lio/ktor/server/application/OnCallRespondContext;->transformBody(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
