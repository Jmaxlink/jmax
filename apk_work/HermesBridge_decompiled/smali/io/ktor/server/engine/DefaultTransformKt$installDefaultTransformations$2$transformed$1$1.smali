.class final Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultTransform.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/http/content/PartData;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "part",
        "Lio/ktor/http/content/PartData;"
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
    c = "io.ktor.server.engine.DefaultTransformKt$installDefaultTransformations$2$transformed$1$1"
    f = "DefaultTransform.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_build:Lio/ktor/http/ParametersBuilder;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/http/ParametersBuilder;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/ParametersBuilder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;->$this_build:Lio/ktor/http/ParametersBuilder;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;

    iget-object v1, p0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;->$this_build:Lio/ktor/http/ParametersBuilder;

    invoke-direct {v0, v1, p2}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;-><init>(Lio/ktor/http/ParametersBuilder;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lio/ktor/http/content/PartData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/PartData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/http/content/PartData;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;->invoke(Lio/ktor/http/content/PartData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 53
    iget v0, p0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/http/content/PartData;

    .line 54
    .local v1, "part":Lio/ktor/http/content/PartData;
    instance-of v2, v1, Lio/ktor/http/content/PartData$FormItem;

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1}, Lio/ktor/http/content/PartData;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;->$this_build:Lio/ktor/http/ParametersBuilder;

    .local v2, "partName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, "$i$a$-let-DefaultTransformKt$installDefaultTransformations$2$transformed$1$1$1":I
    move-object v5, v1

    check-cast v5, Lio/ktor/http/content/PartData$FormItem;

    invoke-virtual {v5}, Lio/ktor/http/content/PartData$FormItem;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lio/ktor/http/ParametersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    nop

    .line 55
    .end local v2    # "partName":Ljava/lang/String;
    .end local v4    # "$i$a$-let-DefaultTransformKt$installDefaultTransformations$2$transformed$1$1$1":I
    nop

    .line 60
    :cond_0
    invoke-virtual {v1}, Lio/ktor/http/content/PartData;->getDispose()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 61
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
