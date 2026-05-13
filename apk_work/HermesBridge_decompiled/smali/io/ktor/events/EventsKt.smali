.class public final Lio/ktor/events/EventsKt;
.super Ljava/lang/Object;
.source "Events.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a=\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00022\u0010\u0008\u0002\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u00a2\u0006\u0002\u0010\n*(\u0010\u000b\u001a\u0004\u0008\u0000\u0010\u0002\"\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u000c2\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "raiseCatching",
        "",
        "T",
        "Lio/ktor/events/Events;",
        "definition",
        "Lio/ktor/events/EventDefinition;",
        "value",
        "logger",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "(Lio/ktor/events/Events;Lio/ktor/events/EventDefinition;Ljava/lang/Object;Lorg/slf4j/Logger;)V",
        "EventHandler",
        "Lkotlin/Function1;",
        "ktor-events"
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
.method public static final raiseCatching(Lio/ktor/events/Events;Lio/ktor/events/EventDefinition;Ljava/lang/Object;Lorg/slf4j/Logger;)V
    .locals 2
    .param p0, "$this$raiseCatching"    # Lio/ktor/events/Events;
    .param p1, "definition"    # Lio/ktor/events/EventDefinition;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "logger"    # Lorg/slf4j/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/events/Events;",
            "Lio/ktor/events/EventDefinition<",
            "TT;>;TT;",
            "Lorg/slf4j/Logger;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    nop

    .line 70
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/events/Events;->raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz p3, :cond_0

    const-string v1, "Some handlers have thrown an exception"

    invoke-interface {p3, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic raiseCatching$default(Lio/ktor/events/Events;Lio/ktor/events/EventDefinition;Ljava/lang/Object;Lorg/slf4j/Logger;ILjava/lang/Object;)V
    .locals 0

    .line 68
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/events/EventsKt;->raiseCatching(Lio/ktor/events/Events;Lio/ktor/events/EventDefinition;Ljava/lang/Object;Lorg/slf4j/Logger;)V

    return-void
.end method
