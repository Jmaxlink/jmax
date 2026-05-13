.class public final Lio/ktor/server/netty/Netty;
.super Ljava/lang/Object;
.source "Embedded.kt"

# interfaces
.implements Lio/ktor/server/engine/ApplicationEngineFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/server/engine/ApplicationEngineFactory<",
        "Lio/ktor/server/netty/NettyApplicationEngine;",
        "Lio/ktor/server/netty/NettyApplicationEngine$Configuration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J)\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0008\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/server/netty/Netty;",
        "Lio/ktor/server/engine/ApplicationEngineFactory;",
        "Lio/ktor/server/netty/NettyApplicationEngine;",
        "Lio/ktor/server/netty/NettyApplicationEngine$Configuration;",
        "()V",
        "create",
        "environment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "configure",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "ktor-server-netty"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/server/netty/Netty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/netty/Netty;

    invoke-direct {v0}, Lio/ktor/server/netty/Netty;-><init>()V

    sput-object v0, Lio/ktor/server/netty/Netty;->INSTANCE:Lio/ktor/server/netty/Netty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 1
    .param p1, "environment"    # Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;

    .line 13
    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/Netty;->create(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/netty/NettyApplicationEngine;

    move-result-object v0

    check-cast v0, Lio/ktor/server/engine/ApplicationEngine;

    return-object v0
.end method

.method public create(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/netty/NettyApplicationEngine;
    .locals 1
    .param p1, "environment"    # Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/netty/NettyApplicationEngine$Configuration;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/netty/NettyApplicationEngine;"
        }
    .end annotation

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-direct {v0, p1, p2}, Lio/ktor/server/netty/NettyApplicationEngine;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
