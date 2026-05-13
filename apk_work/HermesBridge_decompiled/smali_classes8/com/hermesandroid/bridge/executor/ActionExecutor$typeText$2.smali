.class final Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActionExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/executor/ActionExecutor;->typeText(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.hermesandroid.bridge.executor.ActionExecutor$typeText$2"
    f = "ActionExecutor.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $clearFirst:Z

.field final synthetic $text:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->$clearFirst:Z

    iput-object p2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->$text:Ljava/lang/String;

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

    new-instance v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;

    iget-boolean v1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->$clearFirst:Z

    iget-object v2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->$text:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;-><init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 101
    iget v0, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 102
    .local v0, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;
    .local p1, "$result":Ljava/lang/Object;
    sget-object v1, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "Accessibility service not running"

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 105
    .local v1, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 107
    .local v1, "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-boolean v3, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->$clearFirst:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 108
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v3, "bundle":Landroid/os/Bundle;
    nop

    .line 110
    nop

    .line 109
    const-string v5, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    nop

    .line 113
    nop

    .line 114
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    .line 112
    :goto_0
    const-string v6, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    if-eqz v1, :cond_2

    const/high16 v5, 0x20000

    invoke-virtual {v1, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    nop

    .line 117
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_2
    if-eqz v1, :cond_3

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 120
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;->$text:Ljava/lang/String;

    move-object v6, v3

    .local v6, "$this$invokeSuspend_u24lambda_u240":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 121
    .local v7, "$i$a$-apply-ActionExecutor$typeText$2$arguments$1":I
    nop

    .line 122
    check-cast v5, Ljava/lang/CharSequence;

    .line 121
    const-string v8, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 124
    nop

    .line 120
    .end local v6    # "$this$invokeSuspend_u24lambda_u240":Landroid/os/Bundle;
    .end local v7    # "$i$a$-apply-ActionExecutor$typeText$2$arguments$1":I
    nop

    .line 125
    .local v3, "arguments":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 126
    .end local v1    # "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    nop

    .line 125
    .end local v3    # "arguments":Landroid/os/Bundle;
    const/high16 v5, 0x200000

    invoke-virtual {v1, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_1

    .line 127
    :cond_4
    move v1, v4

    .line 125
    :goto_1
    nop

    .line 128
    .local v1, "result":Z
    new-instance v3, Lcom/hermesandroid/bridge/model/ActionResult;

    if-eqz v1, :cond_5

    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v4

    :goto_2
    if-eqz v1, :cond_6

    const-string v2, "Typed text"

    move-object v7, v2

    goto :goto_3

    .end local v1    # "result":Z
    :cond_6
    const-string v1, "No focused input found"

    move-object v7, v1

    :goto_3
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
