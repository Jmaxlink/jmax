.class final Lio/ktor/events/Events$HandlerRegistration;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "Events.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/events/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerRegistration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00050\u0004j\u0006\u0012\u0002\u0008\u0003`\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u0005H\u0016R#\u0010\u0003\u001a\u0014\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00050\u0004j\u0006\u0012\u0002\u0008\u0003`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/ktor/events/Events$HandlerRegistration;",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "handler",
        "Lkotlin/Function1;",
        "",
        "Lio/ktor/events/EventHandler;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getHandler",
        "()Lkotlin/jvm/functions/Function1;",
        "dispose",
        "ktor-events"
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
.field private final handler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "*",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "*",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    iput-object p1, p0, Lio/ktor/events/Events$HandlerRegistration;->handler:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lio/ktor/events/Events$HandlerRegistration;->remove()Z

    .line 61
    return-void
.end method

.method public final getHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "*",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lio/ktor/events/Events$HandlerRegistration;->handler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
