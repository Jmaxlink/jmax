.class public final Lio/ktor/http/content/URIFileContent;
.super Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
.source "URIFileContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B#\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0018\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/ktor/http/content/URIFileContent;",
        "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;",
        "url",
        "Ljava/net/URL;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "(Ljava/net/URL;Lio/ktor/http/ContentType;)V",
        "uri",
        "Ljava/net/URI;",
        "contentLength",
        "",
        "(Ljava/net/URI;Lio/ktor/http/ContentType;Ljava/lang/Long;)V",
        "getContentLength",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getContentType",
        "()Lio/ktor/http/ContentType;",
        "getUri",
        "()Ljava/net/URI;",
        "readFrom",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "ktor-http"
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
.field private final contentLength:Ljava/lang/Long;

.field private final contentType:Lio/ktor/http/ContentType;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lio/ktor/http/ContentType;Ljava/lang/Long;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "contentType"    # Lio/ktor/http/ContentType;
    .param p3, "contentLength"    # Ljava/lang/Long;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;-><init>()V

    .line 18
    iput-object p1, p0, Lio/ktor/http/content/URIFileContent;->uri:Ljava/net/URI;

    .line 19
    iput-object p2, p0, Lio/ktor/http/content/URIFileContent;->contentType:Lio/ktor/http/ContentType;

    .line 20
    iput-object p3, p0, Lio/ktor/http/content/URIFileContent;->contentLength:Ljava/lang/Long;

    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/URI;Lio/ktor/http/ContentType;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 17
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 19
    sget-object p2, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p5

    const-string v0, "uri.path"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p5}, Lio/ktor/http/FileContentTypeKt;->defaultForFilePath(Lio/ktor/http/ContentType$Companion;Ljava/lang/String;)Lio/ktor/http/ContentType;

    move-result-object p2

    .line 17
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 20
    const/4 p3, 0x0

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/http/content/URIFileContent;-><init>(Ljava/net/URI;Lio/ktor/http/ContentType;Ljava/lang/Long;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lio/ktor/http/ContentType;)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "contentType"    # Lio/ktor/http/ContentType;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    nop

    .line 23
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    const-string v0, "url.toURI()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    nop

    .line 22
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/content/URIFileContent;-><init>(Ljava/net/URI;Lio/ktor/http/ContentType;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/URL;Lio/ktor/http/ContentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p3

    const-string p4, "url.path"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lio/ktor/http/FileContentTypeKt;->defaultForFilePath(Lio/ktor/http/ContentType$Companion;Ljava/lang/String;)Lio/ktor/http/ContentType;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/http/content/URIFileContent;-><init>(Ljava/net/URL;Lio/ktor/http/ContentType;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/ktor/http/content/URIFileContent;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/ktor/http/content/URIFileContent;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/ktor/http/content/URIFileContent;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public readFrom()Lio/ktor/utils/io/ByteReadChannel;
    .locals 4

    .line 28
    iget-object v0, p0, Lio/ktor/http/content/URIFileContent;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "uri.toURL().openStream()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lio/ktor/utils/io/jvm/javaio/ReadingKt;->toByteReadChannel$default(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/ObjectPool;ILjava/lang/Object;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method
