.class public final Lcom/hermesandroid/bridge/server/BridgeServer;
.super Ljava/lang/Object;
.source "BridgeServer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBridgeServer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeServer.kt\ncom/hermesandroid/bridge/server/BridgeServer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/server/BridgeServer;",
        "",
        "()V",
        "server",
        "Lio/ktor/server/engine/ApplicationEngine;",
        "start",
        "",
        "port",
        "",
        "stop",
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
.field public static final INSTANCE:Lcom/hermesandroid/bridge/server/BridgeServer;

.field private static server:Lio/ktor/server/engine/ApplicationEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeServer;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/server/BridgeServer;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/server/BridgeServer;->INSTANCE:Lcom/hermesandroid/bridge/server/BridgeServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic start$default(Lcom/hermesandroid/bridge/server/BridgeServer;IILjava/lang/Object;)V
    .locals 0

    .line 16
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x223d

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/server/BridgeServer;->start(I)V

    return-void
.end method


# virtual methods
.method public final start(I)V
    .locals 9
    .param p1, "port"    # I

    .line 17
    sget-object v0, Lcom/hermesandroid/bridge/server/BridgeServer;->server:Lio/ktor/server/engine/ApplicationEngine;

    if-eqz v0, :cond_0

    return-void

    .line 18
    :cond_0
    sget-object v0, Lio/ktor/server/netty/Netty;->INSTANCE:Lio/ktor/server/netty/Netty;

    move-object v1, v0

    check-cast v1, Lio/ktor/server/engine/ApplicationEngineFactory;

    sget-object v0, Lcom/hermesandroid/bridge/server/BridgeServer$start$1;->INSTANCE:Lcom/hermesandroid/bridge/server/BridgeServer$start$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v3, "0.0.0.0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-static/range {v1 .. v8}, Lio/ktor/server/engine/EmbeddedServerKt;->embeddedServer$default(Lio/ktor/server/engine/ApplicationEngineFactory;ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object v0

    .line 42
    move-object v1, v0

    check-cast v1, Lio/ktor/server/netty/NettyApplicationEngine;

    .line 51
    .local v1, "it":Lio/ktor/server/netty/NettyApplicationEngine;
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-also-BridgeServer$start$2":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lio/ktor/server/netty/NettyApplicationEngine;->start(Z)Lio/ktor/server/netty/NettyApplicationEngine;

    .line 18
    .end local v1    # "it":Lio/ktor/server/netty/NettyApplicationEngine;
    .end local v2    # "$i$a$-also-BridgeServer$start$2":I
    sput-object v0, Lcom/hermesandroid/bridge/server/BridgeServer;->server:Lio/ktor/server/engine/ApplicationEngine;

    .line 43
    return-void
.end method

.method public final stop()V
    .locals 5

    .line 46
    sget-object v0, Lcom/hermesandroid/bridge/server/BridgeServer;->server:Lio/ktor/server/engine/ApplicationEngine;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x7d0

    invoke-interface {v0, v1, v2, v3, v4}, Lio/ktor/server/engine/ApplicationEngine;->stop(JJ)V

    .line 47
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/hermesandroid/bridge/server/BridgeServer;->server:Lio/ktor/server/engine/ApplicationEngine;

    .line 48
    return-void
.end method
