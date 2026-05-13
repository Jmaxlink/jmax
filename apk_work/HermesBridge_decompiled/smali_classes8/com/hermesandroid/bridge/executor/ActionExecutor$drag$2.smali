.class final Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActionExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/executor/ActionExecutor;->drag(IIIIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/hermesandroid/bridge/model/ActionResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/hermesandroid/bridge/model/ActionResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.hermesandroid.bridge.executor.ActionExecutor$drag$2"
    f = "ActionExecutor.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x17e
    }
    m = "invokeSuspend"
    n = {
        "done",
        "success",
        "waited"
    }
    s = {
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $duration:J

.field final synthetic $endX:I

.field final synthetic $endY:I

.field final synthetic $startX:I

.field final synthetic $startY:I

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JIIIILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$duration:J

    iput p3, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$startX:I

    iput p4, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$startY:I

    iput p5, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$endX:I

    iput p6, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$endY:I

    const/4 v0, 0x1

    invoke-direct {p0, v0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v8, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;

    iget-wide v1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$duration:J

    iget v3, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$startX:I

    iget v4, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$startY:I

    iget v5, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$endX:I

    iget v6, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$endY:I

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;-><init>(JIIIILkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 364
    iget v1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;
    .local p1, "$result":Ljava/lang/Object;
    iget v2, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->I$0:I

    .local v2, "waited":I
    iget-object v3, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v3, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v4, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v4, "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v1    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;
    .end local v2    # "waited":I
    .end local v3    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v4    # "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 365
    .restart local v1    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v2, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v2}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 366
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v5, "Accessibility service not running"

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 368
    .local v2, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iget v3, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$startX:I

    iget v5, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$startY:I

    iget v6, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$endX:I

    iget v7, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$endY:I

    move-object v8, v4

    .local v8, "$this$invokeSuspend_u24lambda_u240":Landroid/graphics/Path;
    const/4 v9, 0x0

    .line 369
    .local v9, "$i$a$-apply-ActionExecutor$drag$2$path$1":I
    int-to-float v3, v3

    int-to-float v5, v5

    invoke-virtual {v8, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 370
    int-to-float v3, v6

    int-to-float v5, v7

    invoke-virtual {v8, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 371
    nop

    .line 368
    .end local v8    # "$this$invokeSuspend_u24lambda_u240":Landroid/graphics/Path;
    .end local v9    # "$i$a$-apply-ActionExecutor$drag$2$path$1":I
    nop

    .line 372
    .local v4, "path":Landroid/graphics/Path;
    new-instance v9, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v9}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 373
    new-instance v10, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v5, 0x0

    iget-wide v7, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$duration:J

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    invoke-virtual {v9, v10}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object v3

    .line 374
    .end local v4    # "path":Landroid/graphics/Path;
    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object v3

    .line 372
    nop

    .line 375
    .local v3, "gesture":Landroid/accessibilityservice/GestureDescription;
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 376
    .local v4, "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 377
    .local v5, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v6, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2$1;

    invoke-direct {v6, v5, v4}, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v6, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    .line 380
    .end local v2    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v3    # "gesture":Landroid/accessibilityservice/GestureDescription;
    nop

    .line 377
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 381
    const/4 v2, 0x0

    move-object v3, v5

    .line 382
    .end local v5    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v2, "waited":I
    .local v3, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    :goto_0
    iget-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v5, :cond_2

    const/16 v5, 0xbb8

    if-ge v2, v5, :cond_2

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->L$1:Ljava/lang/Object;

    iput v2, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->I$0:I

    const/4 v6, 0x1

    iput v6, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->label:I

    const-wide/16 v6, 0x32

    invoke-static {v6, v7, v5}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_1

    .line 364
    return-object v0

    .line 382
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x32

    goto :goto_0

    .line 383
    .end local v2    # "waited":I
    .end local v4    # "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_2
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    iget-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-boolean v2, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$startX:I

    iget v4, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$startY:I

    iget v5, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$endX:I

    iget v7, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;->$endY:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dragged ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") to ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_2

    .end local v3    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_3
    const-string v2, "Drag gesture cancelled"

    move-object v7, v2

    :goto_2
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
