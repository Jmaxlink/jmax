.class public final Lio/ktor/server/http/content/DefaultTransformKt;
.super Ljava/lang/Object;
.source "DefaultTransform.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a\u0018\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "transformDefaultContent",
        "Lio/ktor/http/content/OutgoingContent;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "value",
        "",
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
.method public static final transformDefaultContent(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;
    .locals 7
    .param p0, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "value"    # Ljava/lang/Object;

    const-string v0, "call"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    nop

    .line 18
    instance-of v0, p1, Lio/ktor/http/content/OutgoingContent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    goto :goto_0

    .line 19
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 20
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->defaultTextContentType(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;)Lio/ktor/http/ContentType;

    move-result-object v1

    .line 21
    .local v1, "contentType":Lio/ktor/http/ContentType;
    new-instance v2, Lio/ktor/http/content/TextContent;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lio/ktor/http/content/TextContent;-><init>(Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;)V

    .end local v1    # "contentType":Lio/ktor/http/ContentType;
    move-object v0, v2

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p1, [B

    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Lio/ktor/http/content/ByteArrayContent;

    move-object v2, p1

    check-cast v2, [B

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/content/ByteArrayContent;-><init>([BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    goto :goto_0

    .line 26
    :cond_2
    instance-of v0, p1, Lio/ktor/http/HttpStatusCode;

    if-eqz v0, :cond_3

    .line 27
    new-instance v0, Lio/ktor/server/http/content/HttpStatusCodeContent;

    move-object v1, p1

    check-cast v1, Lio/ktor/http/HttpStatusCode;

    invoke-direct {v0, v1}, Lio/ktor/server/http/content/HttpStatusCodeContent;-><init>(Lio/ktor/http/HttpStatusCode;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    goto :goto_0

    .line 29
    :cond_3
    instance-of v0, p1, Lio/ktor/utils/io/ByteReadChannel;

    if-eqz v0, :cond_4

    new-instance v0, Lio/ktor/server/http/content/DefaultTransformKt$transformDefaultContent$1;

    invoke-direct {v0, p1}, Lio/ktor/server/http/content/DefaultTransformKt$transformDefaultContent$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    goto :goto_0

    .line 32
    :cond_4
    invoke-static {p0, p1}, Lio/ktor/server/http/content/DefaultTransformJvmKt;->platformTransformDefaultContent(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0
.end method
