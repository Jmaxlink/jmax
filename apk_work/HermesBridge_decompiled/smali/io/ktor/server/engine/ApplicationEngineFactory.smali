.class public interface abstract Lio/ktor/server/engine/ApplicationEngineFactory;
.super Ljava/lang/Object;
.source "EmbeddedServer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEngine::",
        "Lio/ktor/server/engine/ApplicationEngine;",
        "TConfiguration:",
        "Lio/ktor/server/engine/ApplicationEngine$Configuration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u00020\u0005J.\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0008\u000cH&\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/server/engine/ApplicationEngineFactory;",
        "TEngine",
        "Lio/ktor/server/engine/ApplicationEngine;",
        "TConfiguration",
        "Lio/ktor/server/engine/ApplicationEngine$Configuration;",
        "",
        "create",
        "environment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "configure",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;",
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
.method public abstract create(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTConfiguration;",
            "Lkotlin/Unit;",
            ">;)TTEngine;"
        }
    .end annotation
.end method
