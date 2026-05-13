.class public final Lio/ktor/server/engine/ApplicationEngine$DefaultImpls;
.super Ljava/lang/Object;
.source "ApplicationEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/engine/ApplicationEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getApplication(Lio/ktor/server/engine/ApplicationEngine;)Lio/ktor/server/application/Application;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/engine/ApplicationEngine;

    .line 68
    invoke-interface {p0}, Lio/ktor/server/engine/ApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic start$default(Lio/ktor/server/engine/ApplicationEngine;ZILjava/lang/Object;)Lio/ktor/server/engine/ApplicationEngine;
    .locals 0

    .line 78
    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lio/ktor/server/engine/ApplicationEngine;->start(Z)Lio/ktor/server/engine/ApplicationEngine;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: start"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic stop$default(Lio/ktor/server/engine/ApplicationEngine;JJILjava/lang/Object;)V
    .locals 2

    .line 86
    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x1

    const-wide/16 v0, 0x1f4

    if-eqz p6, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move-wide p3, v0

    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lio/ktor/server/engine/ApplicationEngine;->stop(JJ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
