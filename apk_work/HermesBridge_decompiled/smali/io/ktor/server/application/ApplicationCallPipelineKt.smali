.class public final Lio/ktor/server/application/ApplicationCallPipelineKt;
.super Ljava/lang/Object;
.source "ApplicationCallPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationCallPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n*L\n1#1,81:1\n75#1:82\n*S KotlinDebug\n*F\n+ 1 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n*L\n80#1:82\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\"\u001f\u0010\u0000\u001a\u00020\u0001*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00030\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\" \u0010\u0006\u001a\u00020\u0003*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "application",
        "Lio/ktor/server/application/Application;",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/server/application/ApplicationCall;",
        "getApplication",
        "(Lio/ktor/util/pipeline/PipelineContext;)Lio/ktor/server/application/Application;",
        "call",
        "getCall",
        "(Lio/ktor/util/pipeline/PipelineContext;)Lio/ktor/server/application/ApplicationCall;",
        "ktor-server-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getApplication(Lio/ktor/util/pipeline/PipelineContext;)Lio/ktor/server/application/Application;
    .locals 3
    .param p0, "$this$application"    # Lio/ktor/util/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;)",
            "Lio/ktor/server/application/Application;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    move-object v0, p0

    .local v0, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v1, 0x0

    .line 82
    .local v1, "$i$f$getCall":I
    invoke-virtual {v0}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/server/application/ApplicationCall;

    .line 80
    .end local v0    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v1    # "$i$f$getCall":I
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v0

    return-object v0
.end method

.method public static final getCall(Lio/ktor/util/pipeline/PipelineContext;)Lio/ktor/server/application/ApplicationCall;
    .locals 2
    .param p0, "$this$call"    # Lio/ktor/util/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;)",
            "Lio/ktor/server/application/ApplicationCall;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 75
    .local v0, "$i$f$getCall":I
    invoke-virtual {p0}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/server/application/ApplicationCall;

    return-object v1
.end method
