.class public final Lio/ktor/http/content/ByteArrayContent;
.super Lio/ktor/http/content/OutgoingContent$ByteArrayContent;
.source "ByteArrayContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/ktor/http/content/ByteArrayContent;",
        "Lio/ktor/http/content/OutgoingContent$ByteArrayContent;",
        "bytes",
        "",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "status",
        "Lio/ktor/http/HttpStatusCode;",
        "([BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;)V",
        "contentLength",
        "",
        "getContentLength",
        "()Ljava/lang/Long;",
        "getContentType",
        "()Lio/ktor/http/ContentType;",
        "getStatus",
        "()Lio/ktor/http/HttpStatusCode;",
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
.field private final bytes:[B

.field private final contentType:Lio/ktor/http/ContentType;

.field private final status:Lio/ktor/http/HttpStatusCode;


# direct methods
.method public constructor <init>([BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "contentType"    # Lio/ktor/http/ContentType;
    .param p3, "status"    # Lio/ktor/http/HttpStatusCode;

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;-><init>()V

    .line 13
    iput-object p1, p0, Lio/ktor/http/content/ByteArrayContent;->bytes:[B

    .line 14
    iput-object p2, p0, Lio/ktor/http/content/ByteArrayContent;->contentType:Lio/ktor/http/ContentType;

    .line 15
    iput-object p3, p0, Lio/ktor/http/content/ByteArrayContent;->status:Lio/ktor/http/HttpStatusCode;

    .line 12
    return-void
.end method

.method public synthetic constructor <init>([BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 12
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 14
    move-object p2, v0

    .line 12
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 15
    move-object p3, v0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/http/content/ByteArrayContent;-><init>([BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bytes()[B
    .locals 1

    .line 19
    iget-object v0, p0, Lio/ktor/http/content/ByteArrayContent;->bytes:[B

    return-object v0
.end method

.method public getContentLength()Ljava/lang/Long;
    .locals 2

    .line 17
    iget-object v0, p0, Lio/ktor/http/content/ByteArrayContent;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/ktor/http/content/ByteArrayContent;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/ktor/http/content/ByteArrayContent;->status:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method
