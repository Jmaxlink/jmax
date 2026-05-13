.class final synthetic Lio/ktor/server/application/PluginBuilder$onCallRespond$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "PluginBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/PluginBuilder;->onCallRespond(Lkotlin/jvm/functions/Function4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "TPluginConfig;",
        "Lio/ktor/util/pipeline/PipelineContext<",
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/ApplicationCall;",
        ">;",
        "Lio/ktor/server/application/OnCallRespondContext<",
        "TPluginConfig;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/server/application/PluginBuilder$onCallRespond$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/application/PluginBuilder$onCallRespond$1;

    invoke-direct {v0}, Lio/ktor/server/application/PluginBuilder$onCallRespond$1;-><init>()V

    sput-object v0, Lio/ktor/server/application/PluginBuilder$onCallRespond$1;->INSTANCE:Lio/ktor/server/application/PluginBuilder$onCallRespond$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lio/ktor/server/application/OnCallRespondContext;

    const-string v4, "<init>(Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;)V"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;)Lio/ktor/server/application/OnCallRespondContext;
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Lio/ktor/util/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPluginConfig;",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Ljava/lang/Object;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;)",
            "Lio/ktor/server/application/OnCallRespondContext<",
            "TPluginConfig;>;"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lio/ktor/server/application/OnCallRespondContext;

    invoke-direct {v0, p1, p2}, Lio/ktor/server/application/OnCallRespondContext;-><init>(Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 124
    move-object v0, p2

    check-cast v0, Lio/ktor/util/pipeline/PipelineContext;

    invoke-virtual {p0, p1, v0}, Lio/ktor/server/application/PluginBuilder$onCallRespond$1;->invoke(Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;)Lio/ktor/server/application/OnCallRespondContext;

    move-result-object v0

    return-object v0
.end method
