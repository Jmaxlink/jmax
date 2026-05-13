.class public final Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "BridgeAccessibilityService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0014J\u0006\u0010\u000c\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;",
        "Landroid/accessibilityservice/AccessibilityService;",
        "()V",
        "isForeground",
        "",
        "onAccessibilityEvent",
        "",
        "event",
        "Landroid/view/accessibility/AccessibilityEvent;",
        "onDestroy",
        "onInterrupt",
        "onServiceConnected",
        "startForeground",
        "stopForeground",
        "Companion",
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
.field public static final Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

.field private static volatile instance:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;


# instance fields
.field private isForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .locals 1

    .line 9
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->instance:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    return-object v0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 35
    if-eqz p1, :cond_0

    .line 36
    sget-object v0, Lcom/hermesandroid/bridge/event/EventStore;->INSTANCE:Lcom/hermesandroid/bridge/event/EventStore;

    invoke-virtual {v0, p1}, Lcom/hermesandroid/bridge/event/EventStore;->add(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 38
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->instance:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    .line 99
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 100
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .line 95
    return-void
.end method

.method protected onServiceConnected()V
    .locals 5

    .line 18
    sput-object p0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->instance:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    .line 19
    invoke-virtual {p0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$onServiceConnected_u24lambda_u240":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v2, 0x0

    .line 20
    .local v2, "$i$a$-apply-BridgeAccessibilityService$onServiceConnected$1":I
    const/16 v3, 0x1839

    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 26
    const/16 v3, 0x10

    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 27
    const/16 v3, 0x51

    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 30
    const-wide/16 v3, 0x64

    iput-wide v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 31
    nop

    .line 19
    .end local v1    # "$this$onServiceConnected_u24lambda_u240":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v2    # "$i$a$-apply-BridgeAccessibilityService$onServiceConnected$1":I
    invoke-virtual {p0, v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 32
    return-void
.end method

.method public final startForeground()V
    .locals 6

    .line 43
    iget-boolean v0, p0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->isForeground:Z

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    const-string v0, "hermes_bridge_channel"

    .line 45
    .local v0, "channelId":Ljava/lang/String;
    nop

    .line 46
    new-instance v1, Landroid/app/NotificationChannel;

    .line 47
    nop

    .line 48
    const-string v2, "Hermes Bridge"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    .line 49
    nop

    .line 46
    const/4 v4, 0x2

    invoke-direct {v1, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 50
    move-object v3, v1

    .local v3, "$this$startForeground_u24lambda_u241":Landroid/app/NotificationChannel;
    const/4 v4, 0x0

    .line 51
    .local v4, "$i$a$-apply-BridgeAccessibilityService$startForeground$channel$1":I
    const-string v5, "Keeps Hermes Bridge running"

    invoke-virtual {v3, v5}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 52
    nop

    .line 50
    .end local v3    # "$this$startForeground_u24lambda_u241":Landroid/app/NotificationChannel;
    .end local v4    # "$i$a$-apply-BridgeAccessibilityService$startForeground$channel$1":I
    nop

    .line 46
    nop

    .line 53
    .local v1, "channel":Landroid/app/NotificationChannel;
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/NotificationManager;

    .line 54
    .local v3, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 56
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    .end local v3    # "manager":Landroid/app/NotificationManager;
    nop

    .line 57
    new-instance v1, Landroid/app/Notification$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 59
    const-string v2, "Connected to server"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 60
    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;
    move-object v4, p0
    check-cast v4, Landroid/content/Context;
    const-class v5, Lcom/hermesandroid/bridge/MainActivity;
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const v4, 0x10000000
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    move-object v4, p0
    check-cast v4, Landroid/content/Context;
    const/4 v5, 0x0
    const v2, 0x4000000
    invoke-static {v4, v5, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v3
    const/4 v2, 0x1
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    .local v1, "notification":Landroid/app/Notification;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    .line 73
    nop

    .line 74
    nop

    .line 73
    const/16 v3, 0x20

    invoke-virtual {p0, v2, v1, v3}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->startForeground(ILandroid/app/Notification;)V

    .line 79
    :goto_0
    iput-boolean v2, p0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->isForeground:Z

    .line 80
    return-void
.end method

.method public final stopForeground()V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->isForeground:Z

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 85
    invoke-virtual {p0, v2}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->stopForeground(I)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, v2}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->stopForeground(Z)V

    .line 90
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->isForeground:Z

    .line 91
    return-void
.end method
