.class public final Lio/ktor/server/application/hooks/BeforeResponseTransform;
.super Ljava/lang/Object;
.source "CommonHooks.kt"

# interfaces
.implements Lio/ktor/server/application/Hook;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/Hook<",
        "Lkotlin/jvm/functions/Function3<",
        "-",
        "Lio/ktor/server/application/ApplicationCall;",
        "-TT;-",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lio/ktor/util/InternalAPI;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022H\u0012D\u0012B\u0008\u0001\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u0011H\u0001\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00040\u0003B\u0013\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u0002\u0010\rJ`\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112F\u0010\u0012\u001aB\u0008\u0001\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/ktor/server/application/hooks/BeforeResponseTransform;",
        "T",
        "",
        "Lio/ktor/server/application/Hook;",
        "Lkotlin/Function3;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/ParameterName;",
        "name",
        "call",
        "body",
        "Lkotlin/coroutines/Continuation;",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "(Lkotlin/reflect/KClass;)V",
        "install",
        "",
        "pipeline",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "handler",
        "(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function3;)V",
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
.field private final clazz:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;)V
    .locals 1
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lio/ktor/server/application/hooks/BeforeResponseTransform;->clazz:Lkotlin/reflect/KClass;

    return-void
.end method

.method public static final synthetic access$getClazz$p(Lio/ktor/server/application/hooks/BeforeResponseTransform;)Lkotlin/reflect/KClass;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/application/hooks/BeforeResponseTransform;

    .line 137
    iget-object v0, p0, Lio/ktor/server/application/hooks/BeforeResponseTransform;->clazz:Lkotlin/reflect/KClass;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic install(Lio/ktor/server/application/ApplicationCallPipeline;Ljava/lang/Object;)V
    .locals 1
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p2, "handler"    # Ljava/lang/Object;

    .line 137
    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, p1, v0}, Lio/ktor/server/application/hooks/BeforeResponseTransform;->install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function3;)V
    .locals 4
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p2, "handler"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "BeforeTransform"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "beforeTransform":Lio/ktor/util/pipeline/PipelinePhase;
    invoke-virtual {p1}, Lio/ktor/server/application/ApplicationCallPipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v1

    sget-object v2, Lio/ktor/server/response/ApplicationSendPipeline;->Phases:Lio/ktor/server/response/ApplicationSendPipeline$Phases;

    invoke-virtual {v2}, Lio/ktor/server/response/ApplicationSendPipeline$Phases;->getTransform()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/ktor/server/response/ApplicationSendPipeline;->insertPhaseBefore(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 146
    invoke-virtual {p1}, Lio/ktor/server/application/ApplicationCallPipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v1

    new-instance v2, Lio/ktor/server/application/hooks/BeforeResponseTransform$install$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lio/ktor/server/application/hooks/BeforeResponseTransform$install$1;-><init>(Lio/ktor/server/application/hooks/BeforeResponseTransform;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lio/ktor/server/response/ApplicationSendPipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 152
    return-void
.end method
