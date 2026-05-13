.class final Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/MainActivity;->setupRelayConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "connected",
        "",
        "message",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hermesandroid/bridge/MainActivity;


# direct methods
.method constructor <init>(Lcom/hermesandroid/bridge/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->this$0:Lcom/hermesandroid/bridge/MainActivity;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 170
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->invoke(ZLjava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(ZLjava/lang/String;)V
    .locals 6
    .param p1, "connected"    # Z
    .param p2, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->this$0:Lcom/hermesandroid/bridge/MainActivity;

    invoke-static {v0}, Lcom/hermesandroid/bridge/MainActivity;->access$getTvRelayStatus$p(Lcom/hermesandroid/bridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "tvRelayStatus"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->this$0:Lcom/hermesandroid/bridge/MainActivity;

    invoke-static {v0}, Lcom/hermesandroid/bridge/MainActivity;->access$getTvRelayStatus$p(Lcom/hermesandroid/bridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    .line 173
    :cond_1
    const v1, -0xb350b0

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    const v3, -0x777778

    .line 172
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v0, p0, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->this$0:Lcom/hermesandroid/bridge/MainActivity;

    invoke-static {v0}, Lcom/hermesandroid/bridge/MainActivity;->access$getBtnDisconnect$p(Lcom/hermesandroid/bridge/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "btnDisconnect"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    if-nez p1, :cond_5

    sget-object v3, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {v3}, Lcom/hermesandroid/bridge/client/RelayClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->this$0:Lcom/hermesandroid/bridge/MainActivity;

    invoke-static {v0}, Lcom/hermesandroid/bridge/MainActivity;->access$getBtnConnect$p(Lcom/hermesandroid/bridge/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v3, "btnConnect"

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    sget-object v4, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {v4}, Lcom/hermesandroid/bridge/client/RelayClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "CONNECTED"

    goto :goto_3

    :cond_7
    const-string v4, "CONNECT"

    :goto_3
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->this$0:Lcom/hermesandroid/bridge/MainActivity;

    invoke-static {v0}, Lcom/hermesandroid/bridge/MainActivity;->access$getBtnConnect$p(Lcom/hermesandroid/bridge/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    iget-object v4, p0, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->this$0:Lcom/hermesandroid/bridge/MainActivity;

    .line 178
    sget-object v5, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {v5}, Lcom/hermesandroid/bridge/client/RelayClient;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_9

    sget v5, Lcom/hermesandroid/bridge/R$drawable;->bg_input_dark:I

    goto :goto_4

    :cond_9
    sget v5, Lcom/hermesandroid/bridge/R$drawable;->bg_button_orange:I

    .line 177
    :goto_4
    invoke-virtual {v4, v5}, Lcom/hermesandroid/bridge/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->this$0:Lcom/hermesandroid/bridge/MainActivity;

    invoke-static {v0}, Lcom/hermesandroid/bridge/MainActivity;->access$getBtnConnect$p(Lcom/hermesandroid/bridge/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object v2, v0

    .line 181
    :goto_5
    sget-object v0, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/client/RelayClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    const v1, -0xe5e5e6

    .line 180
    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lcom/hermesandroid/bridge/MainActivity$setupRelayConnection$1;->this$0:Lcom/hermesandroid/bridge/MainActivity;

    invoke-static {v0}, Lcom/hermesandroid/bridge/MainActivity;->access$updateStatus(Lcom/hermesandroid/bridge/MainActivity;)V

    .line 184
    return-void
.end method
