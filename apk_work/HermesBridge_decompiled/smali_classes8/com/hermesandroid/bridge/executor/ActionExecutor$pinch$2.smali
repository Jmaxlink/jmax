.class final Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActionExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/executor/ActionExecutor;->pinch(IIFJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.hermesandroid.bridge.executor.ActionExecutor$pinch$2"
    f = "ActionExecutor.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x1c0
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

.field final synthetic $scale:F

.field final synthetic $x:I

.field final synthetic $y:I

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(IIFJLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$x:I

    iput p2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$y:I

    iput p3, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$scale:F

    iput-wide p4, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$duration:J

    const/4 v0, 0x1

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;

    iget v1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$x:I

    iget v2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$y:I

    iget v3, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$scale:F

    iget-wide v4, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$duration:J

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;-><init>(IIFJLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 421
    move-object/from16 v1, p0

    iget v2, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->I$0:I

    .local v4, "waited":I
    iget-object v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v5, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v6, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v6, "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v2    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "waited":I
    .end local v5    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v6    # "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;
    move-object/from16 v3, p1

    .line 422
    .restart local v3    # "$result":Ljava/lang/Object;
    sget-object v4, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v4}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 423
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v7, "Accessibility service not running"

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 424
    .local v4, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    iget v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$x:I

    int-to-float v5, v5

    .line 425
    .local v5, "centerX":F
    iget v6, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$y:I

    int-to-float v6, v6

    .line 426
    .local v6, "centerY":F
    const/high16 v7, 0x42c80000    # 100.0f

    iget v8, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$scale:F

    mul-float/2addr v8, v7

    .line 427
    .local v8, "offset":F
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    move-object v7, v10

    .local v7, "$this$invokeSuspend_u24lambda_u240":Landroid/graphics/Path;
    const/4 v9, 0x0

    .line 428
    .local v9, "$i$a$-apply-ActionExecutor$pinch$2$path1$1":I
    sub-float v11, v5, v8

    sub-float v12, v6, v8

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 429
    add-float v11, v5, v8

    add-float v12, v6, v8

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 430
    nop

    .line 427
    .end local v7    # "$this$invokeSuspend_u24lambda_u240":Landroid/graphics/Path;
    .end local v9    # "$i$a$-apply-ActionExecutor$pinch$2$path1$1":I
    nop

    .line 431
    .local v10, "path1":Landroid/graphics/Path;
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v7, v16

    .local v7, "$this$invokeSuspend_u24lambda_u241":Landroid/graphics/Path;
    const/4 v9, 0x0

    .line 432
    .local v9, "$i$a$-apply-ActionExecutor$pinch$2$path2$1":I
    add-float v11, v5, v8

    add-float v12, v6, v8

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 433
    sub-float v11, v5, v8

    sub-float v12, v6, v8

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 434
    .end local v5    # "centerX":F
    .end local v6    # "centerY":F
    .end local v8    # "offset":F
    nop

    .line 431
    .end local v7    # "$this$invokeSuspend_u24lambda_u241":Landroid/graphics/Path;
    .end local v9    # "$i$a$-apply-ActionExecutor$pinch$2$path2$1":I
    nop

    .line 435
    .local v16, "path2":Landroid/graphics/Path;
    new-instance v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v11, 0x0

    iget-wide v13, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$duration:J

    move-object v9, v5

    invoke-direct/range {v9 .. v14}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 436
    .end local v10    # "path1":Landroid/graphics/Path;
    .local v5, "stroke1":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    new-instance v6, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v17, 0x0

    iget-wide v7, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$duration:J

    move-object v15, v6

    move-wide/from16 v19, v7

    invoke-direct/range {v15 .. v20}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 437
    .end local v16    # "path2":Landroid/graphics/Path;
    .local v6, "stroke2":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    new-instance v7, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v7}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 438
    invoke-virtual {v7, v5}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object v5

    .line 439
    .end local v5    # "stroke1":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    invoke-virtual {v5, v6}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object v5

    .line 440
    .end local v6    # "stroke2":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    invoke-virtual {v5}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object v5

    .line 437
    nop

    .line 441
    .local v5, "gesture":Landroid/accessibilityservice/GestureDescription;
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 442
    .local v6, "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 443
    .local v7, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v8, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2$1;

    invoke-direct {v8, v7, v6}, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v8, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    .line 446
    .end local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v5    # "gesture":Landroid/accessibilityservice/GestureDescription;
    nop

    .line 443
    const/4 v9, 0x0

    invoke-virtual {v4, v5, v8, v9}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 447
    const/4 v4, 0x0

    move-object v5, v7

    .line 448
    .end local v7    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v4, "waited":I
    .local v5, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    :goto_0
    iget-boolean v7, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v7, :cond_2

    const/16 v7, 0xbb8

    if-ge v4, v7, :cond_2

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->L$1:Ljava/lang/Object;

    iput v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->I$0:I

    const/4 v8, 0x1

    iput v8, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->label:I

    const-wide/16 v8, 0x32

    invoke-static {v8, v9, v7}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_1

    .line 421
    return-object v0

    .line 448
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x32

    goto :goto_0

    .line 449
    .end local v4    # "waited":I
    .end local v6    # "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_2
    iget v0, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    const-string v0, "zoom in"

    goto :goto_2

    :cond_3
    const-string v0, "zoom out"

    .line 450
    .local v0, "direction":Ljava/lang/String;
    :goto_2
    new-instance v4, Lcom/hermesandroid/bridge/model/ActionResult;

    iget-boolean v7, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-boolean v6, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v6, :cond_4

    iget v6, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$x:I

    iget v8, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$y:I

    iget v9, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;->$scale:F

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pinch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") scale "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_3

    .end local v0    # "direction":Ljava/lang/String;
    .end local v5    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_4
    const-string v0, "Pinch gesture cancelled"

    move-object v8, v0

    :goto_3
    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
