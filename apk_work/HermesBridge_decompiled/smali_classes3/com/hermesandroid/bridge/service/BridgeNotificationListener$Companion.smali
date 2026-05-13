.class public final Lcom/hermesandroid/bridge/service/BridgeNotificationListener$Companion;
.super Ljava/lang/Object;
.source "BridgeNotificationListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermesandroid/bridge/service/BridgeNotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/service/BridgeNotificationListener$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "<set-?>",
        "Lcom/hermesandroid/bridge/service/BridgeNotificationListener;",
        "instance",
        "getInstance",
        "()Lcom/hermesandroid/bridge/service/BridgeNotificationListener;",
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
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermesandroid/bridge/service/BridgeNotificationListener$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/hermesandroid/bridge/service/BridgeNotificationListener;
    .locals 1

    .line 18
    invoke-static {}, Lcom/hermesandroid/bridge/service/BridgeNotificationListener;->access$getInstance$cp()Lcom/hermesandroid/bridge/service/BridgeNotificationListener;

    move-result-object v0

    return-object v0
.end method
