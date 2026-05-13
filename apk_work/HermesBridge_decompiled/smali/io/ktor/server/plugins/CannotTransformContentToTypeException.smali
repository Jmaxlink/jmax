.class public final Lio/ktor/server/plugins/CannotTransformContentToTypeException;
.super Lio/ktor/server/plugins/ContentTransformationException;
.source "Errors.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/server/plugins/ContentTransformationException;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/server/plugins/CannotTransformContentToTypeException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0000H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/ktor/server/plugins/CannotTransformContentToTypeException;",
        "Lio/ktor/server/plugins/ContentTransformationException;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "type",
        "Lkotlin/reflect/KType;",
        "(Lkotlin/reflect/KType;)V",
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
.field private final type:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KType;)V
    .locals 2
    .param p1, "type"    # Lkotlin/reflect/KType;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot transform this request\'s content to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/server/plugins/ContentTransformationException;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lio/ktor/server/plugins/CannotTransformContentToTypeException;->type:Lkotlin/reflect/KType;

    .line 70
    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/server/plugins/CannotTransformContentToTypeException;
    .locals 5

    .line 76
    new-instance v0, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    iget-object v1, p0, Lio/ktor/server/plugins/CannotTransformContentToTypeException;->type:Lkotlin/reflect/KType;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    move-object v1, v0

    .local v1, "it":Lio/ktor/server/plugins/CannotTransformContentToTypeException;
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$a$-also-CannotTransformContentToTypeException$createCopy$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Lio/ktor/util/internal/ExceptionUtilsJvmKt;->initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 78
    nop

    .line 76
    .end local v1    # "it":Lio/ktor/server/plugins/CannotTransformContentToTypeException;
    .end local v2    # "$i$a$-also-CannotTransformContentToTypeException$createCopy$1":I
    nop

    .line 78
    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;->createCopy()Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method
