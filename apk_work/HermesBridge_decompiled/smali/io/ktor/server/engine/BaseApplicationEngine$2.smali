.class final Lio/ktor/server/engine/BaseApplicationEngine$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseApplicationEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/BaseApplicationEngine;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/ktor/server/engine/EnginePipeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/application/Application;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/ktor/server/application/Application;",
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


# instance fields
.field final synthetic $environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

.field final synthetic $info:Lio/ktor/server/engine/StartupInfo;


# direct methods
.method constructor <init>(Lio/ktor/server/engine/StartupInfo;Lio/ktor/server/engine/ApplicationEngineEnvironment;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationEngine$2;->$info:Lio/ktor/server/engine/StartupInfo;

    iput-object p2, p0, Lio/ktor/server/engine/BaseApplicationEngine$2;->$environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 61
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/Application;

    invoke-virtual {p0, v0}, Lio/ktor/server/engine/BaseApplicationEngine$2;->invoke(Lio/ktor/server/application/Application;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/application/Application;)V
    .locals 8
    .param p1, "it"    # Lio/ktor/server/application/Application;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lio/ktor/util/date/DateJvmKt;->getTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "finishedAt":J
    iget-object v2, p0, Lio/ktor/server/engine/BaseApplicationEngine$2;->$info:Lio/ktor/server/engine/StartupInfo;

    invoke-virtual {v2}, Lio/ktor/server/engine/StartupInfo;->getInitializedStartAt()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 64
    .local v2, "elapsedTimeInSeconds":D
    iget-object v4, p0, Lio/ktor/server/engine/BaseApplicationEngine$2;->$info:Lio/ktor/server/engine/StartupInfo;

    invoke-virtual {v4}, Lio/ktor/server/engine/StartupInfo;->isFirstLoading()Z

    move-result v4

    const-string v5, " seconds."

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lio/ktor/server/engine/BaseApplicationEngine$2;->$environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    invoke-interface {v4}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application started in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 66
    iget-object v4, p0, Lio/ktor/server/engine/BaseApplicationEngine$2;->$info:Lio/ktor/server/engine/StartupInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lio/ktor/server/engine/StartupInfo;->setFirstLoading(Z)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v4, p0, Lio/ktor/server/engine/BaseApplicationEngine$2;->$environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    invoke-interface {v4}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application auto-reloaded in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void
.end method
