.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;
.source "ReferenceCountedOpenSslEngine.java"

# interfaces
.implements Lio/netty/handler/ssl/AsyncRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsyncTaskDecorator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator<",
        "Lio/netty/internal/tcnative/AsyncTask;",
        ">;",
        "Lio/netty/handler/ssl/AsyncRunnable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/internal/tcnative/AsyncTask;)V
    .locals 0
    .param p2, "task"    # Lio/netty/internal/tcnative/AsyncTask;

    .line 1514
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 1515
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V

    .line 1516
    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1520
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;->task:Ljava/lang/Runnable;

    check-cast v0, Lio/netty/internal/tcnative/AsyncTask;

    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {v1, v2, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lio/netty/internal/tcnative/AsyncTask;->runAsync(Ljava/lang/Runnable;)V

    .line 1525
    return-void
.end method
