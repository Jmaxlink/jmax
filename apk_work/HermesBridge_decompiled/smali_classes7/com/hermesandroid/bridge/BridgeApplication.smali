.class public final Lcom/hermesandroid/bridge/BridgeApplication;
.super Landroid/app/Application;
.source "BridgeApplication.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/BridgeApplication;",
        "Landroid/app/Application;",
        "()V",
        "onCreate",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 11
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    sget-object v0, Lcom/hermesandroid/bridge/auth/PairingManager;->INSTANCE:Lcom/hermesandroid/bridge/auth/PairingManager;

    invoke-virtual {p0}, Lcom/hermesandroid/bridge/BridgeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/auth/PairingManager;->init(Landroid/content/Context;)V

    .line 13
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    invoke-virtual {p0}, Lcom/hermesandroid/bridge/BridgeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/power/WakeLockManager;->init(Landroid/content/Context;)V

    .line 14
    sget-object v0, Lcom/hermesandroid/bridge/server/BridgeServer;->INSTANCE:Lcom/hermesandroid/bridge/server/BridgeServer;

    const/16 v1, 0x223d

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/server/BridgeServer;->start(I)V

    .line 17
    sget-object v0, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {p0}, Lcom/hermesandroid/bridge/BridgeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/client/RelayClient;->init(Landroid/content/Context;)V

    .line 18
    sget-object v0, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/client/RelayClient;->autoConnect()V

    .line 19
    return-void
.end method
