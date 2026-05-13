.class public final Lio/ktor/server/plugins/MissingRequestParameterException;
.super Lio/ktor/server/plugins/BadRequestException;
.source "Errors.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/server/plugins/BadRequestException;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/server/plugins/MissingRequestParameterException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0000H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lio/ktor/server/plugins/MissingRequestParameterException;",
        "Lio/ktor/server/plugins/BadRequestException;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "parameterName",
        "",
        "(Ljava/lang/String;)V",
        "getParameterName",
        "()Ljava/lang/String;",
        "createCopy",
        "ktor-server-core"
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
.field private final parameterName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    const-string v0, "parameterName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    iput-object p1, p0, Lio/ktor/server/plugins/MissingRequestParameterException;->parameterName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/server/plugins/MissingRequestParameterException;
    .locals 5

    .line 38
    new-instance v0, Lio/ktor/server/plugins/MissingRequestParameterException;

    iget-object v1, p0, Lio/ktor/server/plugins/MissingRequestParameterException;->parameterName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/MissingRequestParameterException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "it":Lio/ktor/server/plugins/MissingRequestParameterException;
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$a$-also-MissingRequestParameterException$createCopy$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Lio/ktor/util/internal/ExceptionUtilsJvmKt;->initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 40
    nop

    .line 38
    .end local v1    # "it":Lio/ktor/server/plugins/MissingRequestParameterException;
    .end local v2    # "$i$a$-also-MissingRequestParameterException$createCopy$1":I
    nop

    .line 40
    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/ktor/server/plugins/MissingRequestParameterException;->createCopy()Lio/ktor/server/plugins/MissingRequestParameterException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getParameterName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/ktor/server/plugins/MissingRequestParameterException;->parameterName:Ljava/lang/String;

    return-object v0
.end method
