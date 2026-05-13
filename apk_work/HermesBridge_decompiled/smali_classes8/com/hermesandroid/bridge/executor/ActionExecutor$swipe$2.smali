.class final Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActionExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/executor/ActionExecutor;->swipe(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.hermesandroid.bridge.executor.ActionExecutor$swipe$2"
    f = "ActionExecutor.kt"
    i = {}
    l = {
        0xa1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $direction:Ljava/lang/String;

.field final synthetic $distance:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->$distance:Ljava/lang/String;

    iput-object p2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->$direction:Ljava/lang/String;

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

    new-instance v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;

    iget-object v1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->$distance:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->$direction:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 132
    move-object/from16 v1, p0

    iget v2, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v0    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;
    move-object/from16 v3, p1

    .line 133
    .local v3, "$result":Ljava/lang/Object;
    sget-object v4, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v4}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 134
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v7, "Accessibility service not running"

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 136
    .local v4, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    invoke-virtual {v4}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 137
    .local v5, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 138
    .local v6, "w":I
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 140
    .local v5, "h":I
    const v7, 0x3e4ccccd    # 0.2f

    .line 141
    .local v7, "shortDist":F
    const v8, 0x3ecccccd    # 0.4f

    .line 142
    .local v8, "mediumDist":F
    const v9, 0x3f333333    # 0.7f

    .line 143
    .local v9, "longDist":F
    iget-object v10, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->$distance:Ljava/lang/String;

    const-string v11, "short"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    .end local v7    # "shortDist":F
    :cond_1
    const-string v7, "long"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    move v7, v8

    .line 145
    .end local v8    # "mediumDist":F
    .end local v9    # "longDist":F
    .local v7, "dist":F
    :goto_0
    iget-object v8, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->$direction:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/high16 v15, 0x40000000    # 2.0f

    sparse-switch v9, :sswitch_data_0

    :goto_1
    goto/16 :goto_4

    :sswitch_0
    const-string v9, "right"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 149
    :cond_3
    int-to-float v8, v6

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v9

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v8

    int-to-float v11, v5

    div-float/2addr v11, v15

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v11

    int-to-float v12, v6

    add-float/2addr v9, v7

    mul-float/2addr v12, v9

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v9

    int-to-float v12, v5

    div-float/2addr v12, v15

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v12

    new-array v10, v10, [Ljava/lang/Float;

    aput-object v8, v10, v13

    aput-object v11, v10, v14

    const/4 v8, 0x2

    aput-object v9, v10, v8

    const/4 v8, 0x3

    aput-object v12, v10, v8

    const/4 v8, 0x2

    .end local v5    # "h":I
    .end local v6    # "w":I
    .end local v7    # "dist":F
    goto/16 :goto_2

    .line 145
    .restart local v5    # "h":I
    .restart local v6    # "w":I
    .restart local v7    # "dist":F
    :sswitch_1
    const-string v9, "left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 148
    :cond_4
    int-to-float v8, v6

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v8

    int-to-float v11, v5

    div-float/2addr v11, v15

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v11

    int-to-float v12, v6

    sub-float/2addr v9, v7

    mul-float/2addr v12, v9

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v9

    int-to-float v12, v5

    div-float/2addr v12, v15

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v12

    new-array v10, v10, [Ljava/lang/Float;

    aput-object v8, v10, v13

    aput-object v11, v10, v14

    const/4 v8, 0x2

    aput-object v9, v10, v8

    const/4 v8, 0x3

    aput-object v12, v10, v8

    const/4 v8, 0x2

    .end local v5    # "h":I
    .end local v6    # "w":I
    .end local v7    # "dist":F
    goto :goto_2

    .line 145
    .restart local v5    # "h":I
    .restart local v6    # "w":I
    .restart local v7    # "dist":F
    :sswitch_2
    const-string v9, "down"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    .line 147
    :cond_5
    int-to-float v8, v6

    div-float/2addr v8, v15

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v8

    int-to-float v9, v5

    const v11, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v11

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v9

    int-to-float v12, v6

    div-float/2addr v12, v15

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v12

    int-to-float v15, v5

    add-float/2addr v11, v7

    mul-float/2addr v15, v11

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Float;

    aput-object v8, v10, v13

    aput-object v9, v10, v14

    const/4 v8, 0x2

    aput-object v12, v10, v8

    const/4 v8, 0x3

    aput-object v11, v10, v8

    const/4 v8, 0x2

    .end local v5    # "h":I
    .end local v6    # "w":I
    .end local v7    # "dist":F
    goto :goto_2

    .line 145
    .restart local v5    # "h":I
    .restart local v6    # "w":I
    .restart local v7    # "dist":F
    :sswitch_3
    const-string v9, "up"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_1

    .line 146
    :cond_6
    int-to-float v8, v6

    div-float/2addr v8, v15

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v8

    int-to-float v9, v5

    const v11, 0x3f333333    # 0.7f

    mul-float/2addr v9, v11

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v9

    int-to-float v12, v6

    div-float/2addr v12, v15

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v12

    int-to-float v15, v5

    sub-float/2addr v11, v7

    mul-float/2addr v15, v11

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Float;

    aput-object v8, v10, v13

    aput-object v9, v10, v14

    const/4 v8, 0x2

    aput-object v12, v10, v8

    const/4 v9, 0x3

    aput-object v11, v10, v9

    .line 145
    .end local v5    # "h":I
    .end local v6    # "w":I
    .end local v7    # "dist":F
    :goto_2
    aget-object v5, v10, v13

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .local v5, "startX":F
    aget-object v6, v10, v14

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .local v6, "startY":F
    aget-object v7, v10, v8

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const/4 v8, 0x3

    .local v7, "endX":F
    aget-object v8, v10, v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 153
    .local v8, "endY":F
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v9, v16

    .local v9, "$this$invokeSuspend_u24lambda_u240":Landroid/graphics/Path;
    const/4 v10, 0x0

    .line 154
    .local v10, "$i$a$-apply-ActionExecutor$swipe$2$path$1":I
    invoke-virtual {v9, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 155
    .end local v5    # "startX":F
    .end local v6    # "startY":F
    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    .end local v7    # "endX":F
    .end local v8    # "endY":F
    nop

    .line 153
    .end local v9    # "$this$invokeSuspend_u24lambda_u240":Landroid/graphics/Path;
    .end local v10    # "$i$a$-apply-ActionExecutor$swipe$2$path$1":I
    nop

    .line 157
    .local v16, "path":Landroid/graphics/Path;
    new-instance v5, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v5}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 158
    new-instance v6, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x12c

    move-object v15, v6

    invoke-direct/range {v15 .. v20}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    invoke-virtual {v5, v6}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object v5

    .line 159
    .end local v16    # "path":Landroid/graphics/Path;
    invoke-virtual {v5}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object v5

    .line 157
    nop

    .line 160
    .local v5, "gesture":Landroid/accessibilityservice/GestureDescription;
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 161
    .end local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v5    # "gesture":Landroid/accessibilityservice/GestureDescription;
    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v14, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->label:I

    const-wide/16 v5, 0x190

    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_7

    .line 132
    return-object v0

    .line 161
    :cond_7
    move-object v0, v2

    move-object v2, v3

    .line 162
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;
    .local v2, "$result":Ljava/lang/Object;
    :goto_3
    new-instance v9, Lcom/hermesandroid/bridge/model/ActionResult;

    iget-object v3, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->$direction:Ljava/lang/String;

    iget-object v4, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->$distance:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Swiped "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    .line 150
    .end local v0    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;
    .local v2, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_4
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    iget-object v4, v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;->$direction:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xe9b -> :sswitch_3
        0x2f24a2 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method
