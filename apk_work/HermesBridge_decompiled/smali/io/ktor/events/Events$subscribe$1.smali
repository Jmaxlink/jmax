.class final Lio/ktor/events/Events$subscribe$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Events.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/events/Events;->subscribe(Lio/ktor/events/EventDefinition;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/events/EventDefinition<",
        "*>;",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "T",
        "it",
        "Lio/ktor/events/EventDefinition;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/events/Events$subscribe$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/events/Events$subscribe$1;

    invoke-direct {v0}, Lio/ktor/events/Events$subscribe$1;-><init>()V

    sput-object v0, Lio/ktor/events/Events$subscribe$1;->INSTANCE:Lio/ktor/events/Events$subscribe$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 24
    move-object v0, p1

    check-cast v0, Lio/ktor/events/EventDefinition;

    invoke-virtual {p0, v0}, Lio/ktor/events/Events$subscribe$1;->invoke(Lio/ktor/events/EventDefinition;)Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lio/ktor/events/EventDefinition;)Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .locals 1
    .param p1, "it"    # Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/events/EventDefinition<",
            "*>;)",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;-><init>()V

    return-object v0
.end method
