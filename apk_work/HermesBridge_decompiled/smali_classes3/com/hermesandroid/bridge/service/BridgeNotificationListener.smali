.class public final Lcom/hermesandroid/bridge/service/BridgeNotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "BridgeNotificationListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermesandroid/bridge/service/BridgeNotificationListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/service/BridgeNotificationListener;",
        "Landroid/service/notification/NotificationListenerService;",
        "()V",
        "onListenerConnected",
        "",
        "onListenerDisconnected",
        "onNotificationPosted",
        "sbn",
        "Landroid/service/notification/StatusBarNotification;",
        "onNotificationRemoved",
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
.field public static final Companion:Lcom/hermesandroid/bridge/service/BridgeNotificationListener$Companion;

.field private static final TAG:Ljava/lang/String; = "BridgeNotifListener"

.field private static volatile instance:Lcom/hermesandroid/bridge/service/BridgeNotificationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermesandroid/bridge/service/BridgeNotificationListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermesandroid/bridge/service/BridgeNotificationListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermesandroid/bridge/service/BridgeNotificationListener;->Companion:Lcom/hermesandroid/bridge/service/BridgeNotificationListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/hermesandroid/bridge/service/BridgeNotificationListener;
    .locals 1

    .line 12
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeNotificationListener;->instance:Lcom/hermesandroid/bridge/service/BridgeNotificationListener;

    return-object v0
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 2

    .line 23
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 24
    sput-object p0, Lcom/hermesandroid/bridge/service/BridgeNotificationListener;->instance:Lcom/hermesandroid/bridge/service/BridgeNotificationListener;

    .line 25
    sget-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->INSTANCE:Lcom/hermesandroid/bridge/notification/NotificationStore;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/notification/NotificationStore;->setMaxCapacity(I)V

    .line 26
    const-string v0, "BridgeNotifListener"

    const-string v1, "Notification listener connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public onListenerDisconnected()V
    .locals 2

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/hermesandroid/bridge/service/BridgeNotificationListener;->instance:Lcom/hermesandroid/bridge/service/BridgeNotificationListener;

    .line 44
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 45
    const-string v0, "BridgeNotifListener"

    const-string v1, "Notification listener disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    const-string v0, "sbn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->INSTANCE:Lcom/hermesandroid/bridge/notification/NotificationStore;

    invoke-virtual {v0, p1}, Lcom/hermesandroid/bridge/notification/NotificationStore;->parseNotification(Landroid/service/notification/StatusBarNotification;)Lcom/hermesandroid/bridge/notification/NotificationEntry;

    move-result-object v0

    .line 31
    .local v0, "entry":Lcom/hermesandroid/bridge/notification/NotificationEntry;
    if-eqz v0, :cond_1

    .line 32
    sget-object v1, Lcom/hermesandroid/bridge/notification/NotificationStore;->INSTANCE:Lcom/hermesandroid/bridge/notification/NotificationStore;

    invoke-virtual {v1, v0}, Lcom/hermesandroid/bridge/notification/NotificationStore;->add(Lcom/hermesandroid/bridge/notification/NotificationEntry;)V

    .line 33
    invoke-virtual {v0}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x32

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BridgeNotifListener"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    const-string v0, "sbn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/hermesandroid/bridge/notification/NotificationStore;->INSTANCE:Lcom/hermesandroid/bridge/notification/NotificationStore;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/hermesandroid/bridge/notification/NotificationStore;->markRemoved(Ljava/lang/String;)V

    .line 40
    return-void
.end method
