.class public final Lio/ktor/server/application/hooks/ReceiveRequestBytes;
.super Ljava/lang/Object;
.source "CommonHooks.kt"

# interfaces
.implements Lio/ktor/server/application/Hook;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/Hook<",
        "Lkotlin/jvm/functions/Function2<",
        "-",
        "Lio/ktor/server/application/ApplicationCall;",
        "-",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "+",
        "Lio/ktor/utils/io/ByteReadChannel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u000028\u00124\u00122\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00070\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\tJH\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r26\u0010\u000e\u001a2\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00070\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/server/application/hooks/ReceiveRequestBytes;",
        "Lio/ktor/server/application/Hook;",
        "Lkotlin/Function2;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/ParameterName;",
        "name",
        "call",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "body",
        "()V",
        "install",
        "",
        "pipeline",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "handler",
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


# static fields
.field public static final INSTANCE:Lio/ktor/server/application/hooks/ReceiveRequestBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/application/hooks/ReceiveRequestBytes;

    invoke-direct {v0}, Lio/ktor/server/application/hooks/ReceiveRequestBytes;-><init>()V

    sput-object v0, Lio/ktor/server/application/hooks/ReceiveRequestBytes;->INSTANCE:Lio/ktor/server/application/hooks/ReceiveRequestBytes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic install(Lio/ktor/server/application/ApplicationCallPipeline;Ljava/lang/Object;)V
    .locals 1
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p2, "handler"    # Ljava/lang/Object;

    .line 120
    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, p1, v0}, Lio/ktor/server/application/hooks/ReceiveRequestBytes;->install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p2, "handler"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "+",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lio/ktor/server/application/ApplicationCallPipeline;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v0

    sget-object v1, Lio/ktor/server/request/ApplicationReceivePipeline;->Phases:Lio/ktor/server/request/ApplicationReceivePipeline$Phases;

    invoke-virtual {v1}, Lio/ktor/server/request/ApplicationReceivePipeline$Phases;->getBefore()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v1

    new-instance v2, Lio/ktor/server/application/hooks/ReceiveRequestBytes$install$1;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lio/ktor/server/application/hooks/ReceiveRequestBytes$install$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lio/ktor/server/request/ApplicationReceivePipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 130
    return-void
.end method
