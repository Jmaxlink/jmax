.class public final Lcom/hermesandroid/bridge/overlay/StatusOverlay;
.super Ljava/lang/Object;
.source "StatusOverlay.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/overlay/StatusOverlay;",
        "",
        "()V",
        "overlayView",
        "Landroid/view/View;",
        "hide",
        "",
        "context",
        "Landroid/content/Context;",
        "setStatus",
        "active",
        "",
        "show",
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


# static fields
.field public static final INSTANCE:Lcom/hermesandroid/bridge/overlay/StatusOverlay;

.field private static overlayView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/overlay/StatusOverlay;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/overlay/StatusOverlay;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/overlay/StatusOverlay;->INSTANCE:Lcom/hermesandroid/bridge/overlay/StatusOverlay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hide(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/hermesandroid/bridge/overlay/StatusOverlay;->overlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/view/View;
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$a$-let-StatusOverlay$hide$1":I
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/WindowManager;

    .line 45
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 46
    const/4 v3, 0x0

    sput-object v3, Lcom/hermesandroid/bridge/overlay/StatusOverlay;->overlayView:Landroid/view/View;

    .line 47
    nop

    .line 43
    .end local v0    # "it":Landroid/view/View;
    .end local v1    # "$i$a$-let-StatusOverlay$hide$1":I
    .end local v2    # "wm":Landroid/view/WindowManager;
    nop

    .line 48
    :cond_0
    return-void
.end method

.method public final setStatus(Z)V
    .locals 3
    .param p1, "active"    # Z

    .line 51
    sget-object v0, Lcom/hermesandroid/bridge/overlay/StatusOverlay;->overlayView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .local v0, "$this$setStatus_u24lambda_u243":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 52
    .local v1, "$i$a$-apply-StatusOverlay$setStatus$1":I
    if-eqz p1, :cond_1

    const-string v2, "H\u25cf"

    goto :goto_1

    :cond_1
    const-string v2, "H\u25cb"

    :goto_1
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    if-eqz p1, :cond_2

    const-string v2, "#4CAF50"

    goto :goto_2

    :cond_2
    const-string v2, "#FF5722"

    :goto_2
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    nop

    .line 51
    .end local v0    # "$this$setStatus_u24lambda_u243":Landroid/widget/TextView;
    .end local v1    # "$i$a$-apply-StatusOverlay$setStatus$1":I
    nop

    .line 55
    :cond_3
    return-void
.end method

.method public final show(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/hermesandroid/bridge/overlay/StatusOverlay;->overlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    .line 18
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 19
    nop

    .line 20
    nop

    .line 21
    nop

    .line 22
    nop

    .line 24
    nop

    .line 18
    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7f6

    const/16 v5, 0x28

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 25
    nop

    .local v1, "$this$show_u24lambda_u240":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .line 26
    .local v2, "$i$a$-apply-StatusOverlay$show$params$1":I
    const v3, 0x800035

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 27
    const/16 v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 28
    const/16 v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 29
    nop

    .line 25
    .end local v1    # "$this$show_u24lambda_u240":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "$i$a$-apply-StatusOverlay$show$params$1":I
    nop

    .line 18
    nop

    .line 31
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v3, v2

    .local v3, "$this$show_u24lambda_u241":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 32
    .local v4, "$i$a$-apply-StatusOverlay$show$tv$1":I
    const-string v5, "H\u25cf"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 34
    const-string v5, "#4CAF50"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 36
    nop

    .line 31
    .end local v3    # "$this$show_u24lambda_u241":Landroid/widget/TextView;
    .end local v4    # "$i$a$-apply-StatusOverlay$show$tv$1":I
    nop

    .line 38
    .local v2, "tv":Landroid/widget/TextView;
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    sput-object v3, Lcom/hermesandroid/bridge/overlay/StatusOverlay;->overlayView:Landroid/view/View;

    .line 40
    return-void
.end method
