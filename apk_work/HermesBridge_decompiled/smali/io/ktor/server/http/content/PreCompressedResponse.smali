.class public final Lio/ktor/server/http/content/PreCompressedResponse;
.super Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
.source "PreCompressed.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\'\u0010\u0018\u001a\u0004\u0018\u0001H\u0019\"\u0008\u0008\u0000\u0010\u0019*\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\u001cH\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J/\u0010\"\u001a\u00020#\"\u0008\u0008\u0000\u0010\u0019*\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\u001c2\u0008\u0010$\u001a\u0004\u0018\u0001H\u0019H\u0016\u00a2\u0006\u0002\u0010%R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lio/ktor/server/http/content/PreCompressedResponse;",
        "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;",
        "original",
        "encoding",
        "",
        "(Lio/ktor/http/content/OutgoingContent$ReadChannelContent;Ljava/lang/String;)V",
        "contentLength",
        "",
        "getContentLength",
        "()Ljava/lang/Long;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "getContentType",
        "()Lio/ktor/http/ContentType;",
        "headers",
        "Lio/ktor/http/Headers;",
        "getHeaders",
        "()Lio/ktor/http/Headers;",
        "headers$delegate",
        "Lkotlin/Lazy;",
        "status",
        "Lio/ktor/http/HttpStatusCode;",
        "getStatus",
        "()Lio/ktor/http/HttpStatusCode;",
        "getProperty",
        "T",
        "",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;",
        "readFrom",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "range",
        "Lkotlin/ranges/LongRange;",
        "setProperty",
        "",
        "value",
        "(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V",
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
.field private final encoding:Ljava/lang/String;

.field private final headers$delegate:Lkotlin/Lazy;

.field private final original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;


# direct methods
.method public constructor <init>(Lio/ktor/http/content/OutgoingContent$ReadChannelContent;Ljava/lang/String;)V
    .locals 2
    .param p1, "original"    # Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    .param p2, "encoding"    # Ljava/lang/String;

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;-><init>()V

    .line 36
    iput-object p1, p0, Lio/ktor/server/http/content/PreCompressedResponse;->original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    .line 37
    iput-object p2, p0, Lio/ktor/server/http/content/PreCompressedResponse;->encoding:Ljava/lang/String;

    .line 44
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/ktor/server/http/content/PreCompressedResponse$headers$2;

    invoke-direct {v1, p0}, Lio/ktor/server/http/content/PreCompressedResponse$headers$2;-><init>(Lio/ktor/server/http/content/PreCompressedResponse;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->headers$delegate:Lkotlin/Lazy;

    .line 35
    return-void
.end method

.method public static final synthetic access$getEncoding$p(Lio/ktor/server/http/content/PreCompressedResponse;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/http/content/PreCompressedResponse;

    .line 35
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOriginal$p(Lio/ktor/server/http/content/PreCompressedResponse;)Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/http/content/PreCompressedResponse;

    .line 35
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    return-object v0
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->headers$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/Headers;

    return-object v0
.end method

.method public getProperty(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/util/AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v0, p1}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->getProperty(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public readFrom()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->readFrom()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lkotlin/ranges/LongRange;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 1
    .param p1, "range"    # Lkotlin/ranges/LongRange;

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v0, p1}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->readFrom(Lkotlin/ranges/LongRange;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/util/AttributeKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse;->original:Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v0, p1, p2}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->setProperty(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    return-void
.end method
