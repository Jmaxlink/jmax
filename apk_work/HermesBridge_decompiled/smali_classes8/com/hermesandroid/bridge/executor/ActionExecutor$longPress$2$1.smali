.class public final Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2$1;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "ActionExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/hermesandroid/bridge/executor/ActionExecutor$longPress$2$1",
        "Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;",
        "onCancelled",
        "",
        "g",
        "Landroid/accessibilityservice/GestureDescription;",
        "onCompleted",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $done:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $success:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0
    .param p1, "$success"    # Lkotlin/jvm/internal/Ref$BooleanRef;
    .param p2, "$done"    # Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2$1;->$success:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 351
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 2
    .param p1, "g"    # Landroid/accessibilityservice/GestureDescription;

    const-string v0, "g"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2$1;->$success:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 2
    .param p1, "g"    # Landroid/accessibilityservice/GestureDescription;

    const-string v0, "g"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2$1;->$success:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
