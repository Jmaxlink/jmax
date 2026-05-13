.class public final Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;
.super Ljava/lang/IllegalStateException;
.source "BaseApplicationResponse.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/engine/BaseApplicationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BodyLengthIsTooSmall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/IllegalStateException;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0000H\u0016R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;",
        "Ljava/lang/IllegalStateException;",
        "Lkotlin/IllegalStateException;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "expected",
        "",
        "actual",
        "(JJ)V",
        "createCopy",
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
.field private final actual:J

.field private final expected:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Body.size is too small. Body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 270
    iput-wide p1, p0, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;->expected:J

    .line 271
    iput-wide p3, p0, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;->actual:J

    .line 269
    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;
    .locals 5

    .line 274
    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;

    iget-wide v1, p0, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;->expected:J

    iget-wide v3, p0, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;->actual:J

    invoke-direct {v0, v1, v2, v3, v4}, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;-><init>(JJ)V

    move-object v1, v0

    .local v1, "it":Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;
    const/4 v2, 0x0

    .line 275
    .local v2, "$i$a$-also-BaseApplicationResponse$BodyLengthIsTooSmall$createCopy$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Lio/ktor/util/internal/ExceptionUtilsJvmKt;->initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 276
    nop

    .line 274
    .end local v1    # "it":Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;
    .end local v2    # "$i$a$-also-BaseApplicationResponse$BodyLengthIsTooSmall$createCopy$1":I
    nop

    .line 276
    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;->createCopy()Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method
