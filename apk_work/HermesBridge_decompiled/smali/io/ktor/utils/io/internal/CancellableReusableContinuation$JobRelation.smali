.class final Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
.super Ljava/lang/Object;
.source "CancellableReusableContinuation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/CancellableReusableContinuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobRelation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002#\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007B\r\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u000f\u001a\u00020\u0006J\u0013\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "Lkotlinx/coroutines/CompletionHandler;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lkotlinx/coroutines/Job;)V",
        "handler",
        "Lkotlinx/coroutines/DisposableHandle;",
        "getJob",
        "()Lkotlinx/coroutines/Job;",
        "dispose",
        "invoke",
        "ktor-io"
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
.field private handler:Lkotlinx/coroutines/DisposableHandle;

.field private final job:Lkotlinx/coroutines/Job;

.field final synthetic this$0:Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/internal/CancellableReusableContinuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lkotlinx/coroutines/Job;)V
    .locals 7
    .param p1, "this$0"    # Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .param p2, "job"    # Lkotlinx/coroutines/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            ")V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->this$0:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->job:Lkotlinx/coroutines/Job;

    .line 111
    nop

    .line 113
    iget-object v1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->job:Lkotlinx/coroutines/Job;

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 115
    .local v0, "h":Lkotlinx/coroutines/DisposableHandle;
    iget-object v1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->job:Lkotlinx/coroutines/Job;

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iput-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->handler:Lkotlinx/coroutines/DisposableHandle;

    .line 118
    .end local v0    # "h":Lkotlinx/coroutines/DisposableHandle;
    :cond_0
    nop

    .line 108
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    .line 130
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->handler:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    .local v0, "it":Lkotlinx/coroutines/DisposableHandle;
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$a$-let-CancellableReusableContinuation$JobRelation$dispose$1":I
    const/4 v2, 0x0

    iput-object v2, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->handler:Lkotlinx/coroutines/DisposableHandle;

    .line 132
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 133
    nop

    .line 130
    .end local v0    # "it":Lkotlinx/coroutines/DisposableHandle;
    .end local v1    # "$i$a$-let-CancellableReusableContinuation$JobRelation$dispose$1":I
    nop

    .line 134
    :cond_0
    return-void
.end method

.method public final getJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->job:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 108
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 121
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->this$0:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-static {v0, p0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->access$notParent(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;)V

    .line 122
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->this$0:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    iget-object v1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->job:Lkotlinx/coroutines/Job;

    invoke-static {v0, v1, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->access$resumeWithExceptionContinuationOnly(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V

    .line 127
    :cond_0
    return-void
.end method
