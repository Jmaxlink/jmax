.class public Lio/ktor/server/application/CallContext;
.super Ljava/lang/Object;
.source "KtorCallContexts.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PluginConfig:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\r\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u000fR\u001e\u0010\u0004\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00060\u0005X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/server/application/CallContext;",
        "PluginConfig",
        "",
        "pluginConfig",
        "context",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;)V",
        "getContext",
        "()Lio/ktor/util/pipeline/PipelineContext;",
        "getPluginConfig",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "finish",
        "",
        "finish$ktor_server_core",
        "ktor-server-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Lio/ktor/util/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/pipeline/PipelineContext<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginConfig:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPluginConfig;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;)V
    .locals 1
    .param p1, "pluginConfig"    # Ljava/lang/Object;
    .param p2, "context"    # Lio/ktor/util/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPluginConfig;",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pluginConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/ktor/server/application/CallContext;->pluginConfig:Ljava/lang/Object;

    .line 20
    iput-object p2, p0, Lio/ktor/server/application/CallContext;->context:Lio/ktor/util/pipeline/PipelineContext;

    .line 18
    return-void
.end method


# virtual methods
.method public final finish$ktor_server_core()V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lio/ktor/server/application/CallContext;->getContext()Lio/ktor/util/pipeline/PipelineContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/util/pipeline/PipelineContext;->finish()V

    return-void
.end method

.method protected getContext()Lio/ktor/util/pipeline/PipelineContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lio/ktor/server/application/CallContext;->context:Lio/ktor/util/pipeline/PipelineContext;

    return-object v0
.end method

.method public final getPluginConfig()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPluginConfig;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lio/ktor/server/application/CallContext;->pluginConfig:Ljava/lang/Object;

    return-object v0
.end method
