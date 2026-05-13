.class public final Lio/ktor/server/http/content/HttpStatusCodeContent;
.super Lio/ktor/http/content/OutgoingContent$NoContent;
.source "HttpStatusCodeContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lio/ktor/server/http/content/HttpStatusCodeContent;",
        "Lio/ktor/http/content/OutgoingContent$NoContent;",
        "value",
        "Lio/ktor/http/HttpStatusCode;",
        "(Lio/ktor/http/HttpStatusCode;)V",
        "status",
        "getStatus",
        "()Lio/ktor/http/HttpStatusCode;",
        "toString",
        "",
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
.field private final value:Lio/ktor/http/HttpStatusCode;


# direct methods
.method public constructor <init>(Lio/ktor/http/HttpStatusCode;)V
    .locals 1
    .param p1, "value"    # Lio/ktor/http/HttpStatusCode;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$NoContent;-><init>()V

    iput-object p1, p0, Lio/ktor/server/http/content/HttpStatusCodeContent;->value:Lio/ktor/http/HttpStatusCode;

    return-void
.end method


# virtual methods
.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/ktor/server/http/content/HttpStatusCodeContent;->value:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpStatusCodeContent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/http/content/HttpStatusCodeContent;->value:Lio/ktor/http/HttpStatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
