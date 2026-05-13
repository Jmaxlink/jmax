.class final Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActionExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/executor/ActionExecutor;->tapText(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.hermesandroid.bridge.executor.ActionExecutor$tapText$2"
    f = "ActionExecutor.kt"
    i = {}
    l = {
        0x61
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $exact:Z

.field final synthetic $text:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$text:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$exact:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;

    iget-object v1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$text:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$exact:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;-><init>(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 63
    move-object/from16 v1, p0

    iget v2, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v2

    goto/16 :goto_4

    .end local v0    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;
    move-object/from16 v3, p1

    .line 64
    .local v3, "$result":Ljava/lang/Object;
    sget-object v4, Lcom/hermesandroid/bridge/executor/ScreenReader;->INSTANCE:Lcom/hermesandroid/bridge/executor/ScreenReader;

    iget-object v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$text:Ljava/lang/String;

    iget-boolean v6, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$exact:Z

    invoke-virtual {v4, v5, v6}, Lcom/hermesandroid/bridge/executor/ScreenReader;->findNodeByText(Ljava/lang/String;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-nez v4, :cond_0

    .line 65
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$text:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Element with text \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 67
    .local v4, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    const-string v6, "Tapped \'"

    const-string v7, "Click failed on \'"

    const/16 v8, 0x10

    const-string v9, "\'"

    if-eqz v5, :cond_2

    .line 68
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v11

    .line 69
    .local v11, "result":Z
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 70
    .end local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    if-eqz v11, :cond_1

    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$text:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_0

    .end local v11    # "result":Z
    :cond_1
    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$text:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    :goto_0
    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 73
    .restart local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 74
    .local v5, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v10, 0x0

    .line 75
    .local v10, "clickableParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v5, :cond_4

    .line 76
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 77
    .end local v10    # "clickableParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v10, v5

    .line 78
    .end local v5    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v10    # "clickableParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_2

    .line 80
    .restart local v5    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    .line 81
    .local v11, "grandparent":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 82
    .end local v5    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v5, v11

    .end local v11    # "grandparent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 85
    .end local v5    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    :goto_2
    if-eqz v10, :cond_6

    .line 86
    invoke-virtual {v10, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v12

    .line 87
    .local v12, "result":Z
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 88
    .end local v10    # "clickableParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 89
    .end local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    if-eqz v12, :cond_5

    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$text:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (via parent)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_3

    .end local v12    # "result":Z
    :cond_5
    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->$text:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    :goto_3
    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 92
    .restart local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 94
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 95
    .end local v4    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    .line 96
    .local v4, "cx":I
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 97
    .end local v5    # "r":Landroid/graphics/Rect;
    .local v6, "cy":I
    sget-object v7, Lcom/hermesandroid/bridge/executor/ActionExecutor;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v11, v2

    check-cast v11, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;->label:I

    const/4 v10, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->tap$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cx":I
    .end local v6    # "cy":I
    if-ne v4, v0, :cond_7

    .line 63
    return-object v0

    .line 97
    :cond_7
    move-object v0, v2

    move-object v2, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;
    .local v2, "$result":Ljava/lang/Object;
    :goto_4
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
