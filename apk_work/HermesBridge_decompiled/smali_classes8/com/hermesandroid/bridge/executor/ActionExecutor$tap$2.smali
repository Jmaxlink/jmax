.class final Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActionExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/executor/ActionExecutor;->tap(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionExecutor.kt\ncom/hermesandroid/bridge/executor/ActionExecutor$tap$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,796:1\n1#2:797\n*E\n"
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
    c = "com.hermesandroid.bridge.executor.ActionExecutor$tap$2"
    f = "ActionExecutor.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x37
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
.field final synthetic $nodeId:Ljava/lang/String;

.field final synthetic $x:Ljava/lang/Integer;

.field final synthetic $y:Ljava/lang/Integer;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$nodeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$x:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$y:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;

    iget-object v1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$nodeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$x:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$y:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 31
    move-object/from16 v1, p0

    iget v2, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->I$0:I

    .local v4, "waited":I
    iget-object v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v5, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v6, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v6, "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v2    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "waited":I
    .end local v5    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v6    # "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;
    move-object/from16 v3, p1

    .line 32
    .restart local v3    # "$result":Ljava/lang/Object;
    sget-object v4, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v4}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 33
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v7, "Accessibility service not running"

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 35
    .local v4, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    iget-object v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$nodeId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 36
    .end local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    sget-object v0, Lcom/hermesandroid/bridge/executor/ActionExecutor;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor;

    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$nodeId:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->access$findNodeById(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$nodeId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Node not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 38
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v6

    .line 39
    .local v6, "result":Z
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 40
    .end local v0    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    if-eqz v6, :cond_2

    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$nodeId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tapped node "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_0

    .end local v6    # "result":Z
    :cond_2
    const-string v4, "Click action failed"

    move-object v7, v4

    :goto_0
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 43
    .restart local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_3
    iget-object v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$x:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    iget-object v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$y:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    .line 44
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget-object v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$x:Ljava/lang/Integer;

    iget-object v6, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$y:Ljava/lang/Integer;

    move-object v8, v7

    .line 797
    .local v8, "$this$invokeSuspend_u24lambda_u240":Landroid/graphics/Path;
    const/4 v9, 0x0

    .line 44
    .local v9, "$i$a$-apply-ActionExecutor$tap$2$path$1":I
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v8, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    .end local v8    # "$this$invokeSuspend_u24lambda_u240":Landroid/graphics/Path;
    .end local v9    # "$i$a$-apply-ActionExecutor$tap$2$path$1":I
    .local v7, "path":Landroid/graphics/Path;
    new-instance v5, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v5}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 46
    new-instance v12, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x32

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    invoke-virtual {v5, v12}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object v5

    .line 47
    .end local v7    # "path":Landroid/graphics/Path;
    invoke-virtual {v5}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object v5

    .line 45
    nop

    .line 48
    .local v5, "gesture":Landroid/accessibilityservice/GestureDescription;
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 49
    .local v6, "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 50
    .local v7, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v8, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2$1;

    invoke-direct {v8, v7, v6}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v8, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    .line 53
    .end local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v5    # "gesture":Landroid/accessibilityservice/GestureDescription;
    nop

    .line 50
    const/4 v9, 0x0

    invoke-virtual {v4, v5, v8, v9}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 54
    const/4 v4, 0x0

    move-object v5, v7

    .line 55
    .end local v7    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v4, "waited":I
    .local v5, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    :goto_1
    iget-boolean v7, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v7, :cond_5

    const/16 v7, 0x7d0

    if-ge v4, v7, :cond_5

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->L$1:Ljava/lang/Object;

    iput v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->I$0:I

    const/4 v8, 0x1

    iput v8, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->label:I

    const-wide/16 v8, 0x32

    invoke-static {v8, v9, v7}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    .line 31
    return-object v0

    .line 55
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x32

    goto :goto_1

    .line 56
    .end local v4    # "waited":I
    .end local v6    # "done":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_5
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    iget-boolean v8, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-boolean v4, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$x:Ljava/lang/Integer;

    iget-object v6, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;->$y:Ljava/lang/Integer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tapped ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_3

    .end local v5    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_6
    const-string v4, "Tap gesture cancelled"

    move-object v9, v4

    :goto_3
    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 59
    :cond_7
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/4 v14, 0x0

    const-string v15, "Provide either (x, y) or nodeId"

    const/16 v16, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
