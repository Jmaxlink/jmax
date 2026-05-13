.class public final Lio/ktor/server/http/content/DefaultTransformJvmKt;
.super Ljava/lang/Object;
.source "DefaultTransformJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "platformTransformDefaultContent",
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
.method public static final platformTransformDefaultContent(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;
    .locals 4
    .param p0, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "value"    # Ljava/lang/Object;

    const-string v0, "call"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    nop

    .line 20
    instance-of v0, p1, Lio/ktor/http/content/URIFileContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 21
    move-object v0, p1

    check-cast v0, Lio/ktor/http/content/URIFileContent;

    invoke-virtual {v0}, Lio/ktor/http/content/URIFileContent;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v2, "file"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/ktor/server/http/content/LocalFileContent;

    new-instance v2, Ljava/io/File;

    move-object v3, p1

    check-cast v3, Lio/ktor/http/content/URIFileContent;

    invoke-virtual {v3}, Lio/ktor/http/content/URIFileContent;->getUri()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lio/ktor/server/http/content/LocalFileContent;-><init>(Ljava/io/File;Lio/ktor/http/ContentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    goto :goto_0

    .line 23
    :cond_0
    nop

    :goto_0
    check-cast v1, Lio/ktor/http/content/OutgoingContent;

    goto :goto_1

    .line 26
    :cond_1
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_2

    new-instance v0, Lio/ktor/server/http/content/DefaultTransformJvmKt$platformTransformDefaultContent$1;

    invoke-direct {v0, p1}, Lio/ktor/server/http/content/DefaultTransformJvmKt$platformTransformDefaultContent$1;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lio/ktor/http/content/OutgoingContent;

    goto :goto_1

    .line 29
    :cond_2
    nop

    .line 30
    :goto_1
    return-object v1
.end method
