.class public final Lio/ktor/server/application/DefaultApplicationEventsKt;
.super Ljava/lang/Object;
.source "DefaultApplicationEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\"\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0004\"\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0004\"\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0004\"\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0004\"\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "ApplicationStarted",
        "Lio/ktor/events/EventDefinition;",
        "Lio/ktor/server/application/Application;",
        "getApplicationStarted",
        "()Lio/ktor/events/EventDefinition;",
        "ApplicationStarting",
        "getApplicationStarting",
        "ApplicationStopPreparing",
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "getApplicationStopPreparing",
        "ApplicationStopped",
        "getApplicationStopped",
        "ApplicationStopping",
        "getApplicationStopping",
        "ServerReady",
        "getServerReady",
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


# static fields
.field private static final ApplicationStarted:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static final ApplicationStarting:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static final ApplicationStopPreparing:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/ApplicationEnvironment;",
            ">;"
        }
    .end annotation
.end field

.field private static final ApplicationStopped:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static final ApplicationStopping:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static final ServerReady:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/ApplicationEnvironment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStarting:Lio/ktor/events/EventDefinition;

    .line 23
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStarted:Lio/ktor/events/EventDefinition;

    .line 28
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ServerReady:Lio/ktor/events/EventDefinition;

    .line 33
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStopPreparing:Lio/ktor/events/EventDefinition;

    .line 38
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStopping:Lio/ktor/events/EventDefinition;

    .line 43
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStopped:Lio/ktor/events/EventDefinition;

    return-void
.end method

.method public static final getApplicationStarted()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStarted:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getApplicationStarting()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStarting:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getApplicationStopPreparing()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/ApplicationEnvironment;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStopPreparing:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getApplicationStopped()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStopped:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getApplicationStopping()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ApplicationStopping:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getServerReady()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/ApplicationEnvironment;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lio/ktor/server/application/DefaultApplicationEventsKt;->ServerReady:Lio/ktor/events/EventDefinition;

    return-object v0
.end method
