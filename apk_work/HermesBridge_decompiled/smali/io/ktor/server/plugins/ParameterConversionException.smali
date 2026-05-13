.class public final Lio/ktor/server/plugins/ParameterConversionException;
.super Lio/ktor/server/plugins/BadRequestException;
.source "Errors.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/server/plugins/BadRequestException;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/server/plugins/ParameterConversionException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\u0000H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lio/ktor/server/plugins/ParameterConversionException;",
        "Lio/ktor/server/plugins/BadRequestException;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "parameterName",
        "",
        "type",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V",
        "getParameterName",
        "()Ljava/lang/String;",
        "getType",
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

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    const-string v0, "parameterName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " couldn\'t be parsed/converted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    iput-object p1, p0, Lio/ktor/server/plugins/ParameterConversionException;->parameterName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lio/ktor/server/plugins/ParameterConversionException;->type:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 49
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 52
    const/4 p3, 0x0

    .line 49
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/server/plugins/ParameterConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/server/plugins/ParameterConversionException;
    .locals 5

    .line 57
    new-instance v0, Lio/ktor/server/plugins/ParameterConversionException;

    iget-object v1, p0, Lio/ktor/server/plugins/ParameterConversionException;->parameterName:Ljava/lang/String;

    iget-object v2, p0, Lio/ktor/server/plugins/ParameterConversionException;->type:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/server/plugins/ParameterConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .local v1, "it":Lio/ktor/server/plugins/ParameterConversionException;
    const/4 v2, 0x0

    .line 58
    .local v2, "$i$a$-also-ParameterConversionException$createCopy$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Lio/ktor/util/internal/ExceptionUtilsJvmKt;->initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 59
    nop

    .line 57
    .end local v1    # "it":Lio/ktor/server/plugins/ParameterConversionException;
    .end local v2    # "$i$a$-also-ParameterConversionException$createCopy$1":I
    nop

    .line 59
    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/ktor/server/plugins/ParameterConversionException;->createCopy()Lio/ktor/server/plugins/ParameterConversionException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getParameterName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/ktor/server/plugins/ParameterConversionException;->parameterName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/ktor/server/plugins/ParameterConversionException;->type:Ljava/lang/String;

    return-object v0
.end method
