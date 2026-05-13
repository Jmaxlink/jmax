.class public interface abstract Lio/ktor/server/engine/ApplicationEngine;
.super Ljava/lang/Object;
.source "ApplicationEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/engine/ApplicationEngine$Configuration;,
        Lio/ktor/server/engine/ApplicationEngine$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0001\u0016J\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0012\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H&J\u001c\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H&R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/ktor/server/engine/ApplicationEngine;",
        "",
        "application",
        "Lio/ktor/server/application/Application;",
        "getApplication",
        "()Lio/ktor/server/application/Application;",
        "environment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "getEnvironment",
        "()Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "resolvedConnectors",
        "",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "start",
        "wait",
        "",
        "stop",
        "",
        "gracePeriodMillis",
        "",
        "timeoutMillis",
        "Configuration",
        "ktor-server-host-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getApplication()Lio/ktor/server/application/Application;
.end method

.method public abstract getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;
.end method

.method public abstract resolvedConnectors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract start(Z)Lio/ktor/server/engine/ApplicationEngine;
.end method

.method public abstract stop(JJ)V
.end method
