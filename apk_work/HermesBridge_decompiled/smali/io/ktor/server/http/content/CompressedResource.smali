.class public final Lio/ktor/server/http/content/CompressedResource;
.super Ljava/lang/Object;
.source "PreCompressed.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/server/http/content/CompressedResource;",
        "",
        "url",
        "Ljava/net/URL;",
        "content",
        "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;",
        "compression",
        "Lio/ktor/server/http/content/CompressedFileType;",
        "(Ljava/net/URL;Lio/ktor/http/content/OutgoingContent$ReadChannelContent;Lio/ktor/server/http/content/CompressedFileType;)V",
        "getCompression",
        "()Lio/ktor/server/http/content/CompressedFileType;",
        "getContent",
        "()Lio/ktor/http/content/OutgoingContent$ReadChannelContent;",
        "getUrl",
        "()Ljava/net/URL;",
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
.field private final compression:Lio/ktor/server/http/content/CompressedFileType;

.field private final content:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lio/ktor/http/content/OutgoingContent$ReadChannelContent;Lio/ktor/server/http/content/CompressedFileType;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "content"    # Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    .param p3, "compression"    # Lio/ktor/server/http/content/CompressedFileType;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compression"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lio/ktor/server/http/content/CompressedResource;->url:Ljava/net/URL;

    .line 72
    iput-object p2, p0, Lio/ktor/server/http/content/CompressedResource;->content:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    .line 73
    iput-object p3, p0, Lio/ktor/server/http/content/CompressedResource;->compression:Lio/ktor/server/http/content/CompressedFileType;

    .line 70
    return-void
.end method


# virtual methods
.method public final getCompression()Lio/ktor/server/http/content/CompressedFileType;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/ktor/server/http/content/CompressedResource;->compression:Lio/ktor/server/http/content/CompressedFileType;

    return-object v0
.end method

.method public final getContent()Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/ktor/server/http/content/CompressedResource;->content:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    return-object v0
.end method

.method public final getUrl()Ljava/net/URL;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/ktor/server/http/content/CompressedResource;->url:Ljava/net/URL;

    return-object v0
.end method
