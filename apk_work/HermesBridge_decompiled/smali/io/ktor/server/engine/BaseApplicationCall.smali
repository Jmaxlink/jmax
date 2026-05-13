.class public abstract Lio/ktor/server/engine/BaseApplicationCall;
.super Ljava/lang/Object;
.source "BaseApplicationCall.kt"

# interfaces
.implements Lio/ktor/server/application/ApplicationCall;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/ktor/server/engine/BaseApplicationCall;",
        "Lio/ktor/server/application/ApplicationCall;",
        "application",
        "Lio/ktor/server/application/Application;",
        "(Lio/ktor/server/application/Application;)V",
        "getApplication",
        "()Lio/ktor/server/application/Application;",
        "attributes",
        "Lio/ktor/util/Attributes;",
        "getAttributes",
        "()Lio/ktor/util/Attributes;",
        "parameters",
        "Lio/ktor/http/Parameters;",
        "getParameters",
        "()Lio/ktor/http/Parameters;",
        "request",
        "Lio/ktor/server/engine/BaseApplicationRequest;",
        "getRequest",
        "()Lio/ktor/server/engine/BaseApplicationRequest;",
        "response",
        "Lio/ktor/server/engine/BaseApplicationResponse;",
        "getResponse",
        "()Lio/ktor/server/engine/BaseApplicationResponse;",
        "putResponseAttribute",
        "",
        "ktor-server-host-common"
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
.field private final application:Lio/ktor/server/application/Application;

.field private final attributes:Lio/ktor/util/Attributes;


# direct methods
.method public constructor <init>(Lio/ktor/server/application/Application;)V
    .locals 3
    .param p1, "application"    # Lio/ktor/server/application/Application;

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationCall;->application:Lio/ktor/server/application/Application;

    .line 15
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lio/ktor/util/AttributesJvmKt;->Attributes$default(ZILjava/lang/Object;)Lio/ktor/util/Attributes;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/engine/BaseApplicationCall;->attributes:Lio/ktor/util/Attributes;

    .line 14
    return-void
.end method

.method public static synthetic putResponseAttribute$default(Lio/ktor/server/engine/BaseApplicationCall;Lio/ktor/server/engine/BaseApplicationResponse;ILjava/lang/Object;)V
    .locals 0

    .line 24
    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationCall;->getResponse()Lio/ktor/server/engine/BaseApplicationResponse;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/server/engine/BaseApplicationCall;->putResponseAttribute(Lio/ktor/server/engine/BaseApplicationResponse;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: putResponseAttribute"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getApplication()Lio/ktor/server/application/Application;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationCall;->application:Lio/ktor/server/application/Application;

    return-object v0
.end method

.method public final getAttributes()Lio/ktor/util/Attributes;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationCall;->attributes:Lio/ktor/util/Attributes;

    return-object v0
.end method

.method public getParameters()Lio/ktor/http/Parameters;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationCall;->getRequest()Lio/ktor/server/engine/BaseApplicationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/engine/BaseApplicationRequest;->getQueryParameters()Lio/ktor/http/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRequest()Lio/ktor/server/engine/BaseApplicationRequest;
.end method

.method public abstract getResponse()Lio/ktor/server/engine/BaseApplicationResponse;
.end method

.method protected final putResponseAttribute(Lio/ktor/server/engine/BaseApplicationResponse;)V
    .locals 2
    .param p1, "response"    # Lio/ktor/server/engine/BaseApplicationResponse;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationCall;->attributes:Lio/ktor/util/Attributes;

    sget-object v1, Lio/ktor/server/engine/BaseApplicationResponse;->Companion:Lio/ktor/server/engine/BaseApplicationResponse$Companion;

    invoke-virtual {v1}, Lio/ktor/server/engine/BaseApplicationResponse$Companion;->getEngineResponseAttributeKey()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
