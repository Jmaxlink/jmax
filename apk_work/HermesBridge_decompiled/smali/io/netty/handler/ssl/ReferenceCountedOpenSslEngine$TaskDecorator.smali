.class Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskDecorator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Ljava/lang/Runnable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected final task:Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1503
    .local p0, "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;, "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator<TR;>;"
    .local p2, "task":Ljava/lang/Runnable;, "TR;"
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1504
    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;->task:Ljava/lang/Runnable;

    .line 1505
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1509
    .local p0, "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;, "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator<TR;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;->task:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$700(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V

    .line 1510
    return-void
.end method
