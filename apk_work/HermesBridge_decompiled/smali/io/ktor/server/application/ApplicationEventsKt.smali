.class public final Lio/ktor/server/application/ApplicationEventsKt;
.super Ljava/lang/Object;
.source "ApplicationEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004*J\u0008\u0007\u0010\u0000\"\u00020\u00012\u00020\u0001B<\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0004\u0012\n\u0008\u0005\u0012\u0006\u0008\n0\u00068\u0007\u0012\"\u0008\u0008\u0012\u001e\u0008\u000bB\u001a\u0008\t\u0012\u000c\u0008\n\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r*\\\u0008\u0007\u0010\u000e\u001a\u0004\u0008\u0000\u0010\u000f\"\u0008\u0012\u0004\u0012\u0002H\u000f0\u00102\u0008\u0012\u0004\u0012\u0002H\u000f0\u0010B<\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0011\u0012\n\u0008\u0005\u0012\u0006\u0008\n0\u00068\u0007\u0012\"\u0008\u0008\u0012\u001e\u0008\u000bB\u001a\u0008\t\u0012\u000c\u0008\n\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u0012\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0013*b\u0008\u0007\u0010\u0014\u001a\u0004\u0008\u0000\u0010\u000f\"\u0008\u0012\u0004\u0012\u0002H\u000f`\u00152\u000e\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u00020\u00170\u0016B<\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0018\u0012\n\u0008\u0005\u0012\u0006\u0008\n0\u00068\u0007\u0012\"\u0008\u0008\u0012\u001e\u0008\u000bB\u001a\u0008\t\u0012\u000c\u0008\n\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u0019\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "ApplicationEvents",
        "Lio/ktor/events/Events;",
        "Lkotlin/Deprecated;",
        "message",
        "ApplicationEvents has been renamed to Events.",
        "level",
        "Lkotlin/DeprecationLevel;",
        "WARNING",
        "replaceWith",
        "Lkotlin/ReplaceWith;",
        "imports",
        "io.ktor.events.Events",
        "expression",
        "Events",
        "EventDefinition",
        "T",
        "Lio/ktor/events/EventDefinition;",
        "EventDefinition<T> has been moved to io.ktor.events",
        "io.ktor.events.EventDefinition",
        "EventDefinition<T>",
        "EventHandler",
        "Lio/ktor/events/EventHandler;",
        "Lkotlin/Function1;",
        "",
        "EventHandler has been moved to package io.ktor.events",
        "io.ktor.events.EventHandler",
        "EventHandler<T>",
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
.method public static synthetic ApplicationEvents$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "ApplicationEvents has been renamed to Events."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Events"
            imports = {
                "io.ktor.events.Events"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic EventDefinition$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "EventDefinition<T> has been moved to io.ktor.events"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "EventDefinition<T>"
            imports = {
                "io.ktor.events.EventDefinition"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic EventHandler$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "EventHandler has been moved to package io.ktor.events"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "EventHandler<T>"
            imports = {
                "io.ktor.events.EventHandler"
            }
        .end subannotation
    .end annotation

    return-void
.end method
