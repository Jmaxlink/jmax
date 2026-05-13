.class public final Lio/ktor/server/netty/NettyApplicationRequest$queryParameters$1;
.super Ljava/lang/Object;
.source "NettyApplicationRequest.kt"

# interfaces
.implements Lio/ktor/http/Parameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/NettyApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\'\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0010 \n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JF\u0010\u0008\u001a@\u0012<\u0012:\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b\u0012(\u0012&\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b \u000c*\u0012\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b\u0018\u00010\u000e0\r0\n0\tH\u0016J6\u0010\u000f\u001a(\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b\u0018\u0001 \u000c*\u0012\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b\u0018\u00010\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\u0008\u0010\u0011\u001a\u00020\u0003H\u0016J\u0016\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b0\tH\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "io/ktor/server/netty/NettyApplicationRequest$queryParameters$1",
        "Lio/ktor/http/Parameters;",
        "caseInsensitiveName",
        "",
        "getCaseInsensitiveName",
        "()Z",
        "decoder",
        "Lio/netty/handler/codec/http/QueryStringDecoder;",
        "entries",
        "",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "",
        "",
        "getAll",
        "name",
        "isEmpty",
        "names",
        "ktor-server-netty"
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
.field private final decoder:Lio/netty/handler/codec/http/QueryStringDecoder;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/NettyApplicationRequest;)V
    .locals 7
    .param p1, "$receiver"    # Lio/ktor/server/netty/NettyApplicationRequest;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v6, Lio/netty/handler/codec/http/QueryStringDecoder;

    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationRequest;->getUri()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const/16 v4, 0x400

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZIZ)V

    iput-object v6, p0, Lio/ktor/server/netty/NettyApplicationRequest$queryParameters$1;->decoder:Lio/netty/handler/codec/http/QueryStringDecoder;

    .line 27
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 27
    invoke-static {p0, p1}, Lio/ktor/http/Parameters$DefaultImpls;->contains(Lio/ktor/http/Parameters;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    invoke-static {p0, p1, p2}, Lio/ktor/http/Parameters$DefaultImpls;->contains(Lio/ktor/http/Parameters;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest$queryParameters$1;->decoder:Lio/netty/handler/codec/http/QueryStringDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->parameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lio/ktor/http/Parameters$DefaultImpls;->forEach(Lio/ktor/http/Parameters;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 27
    invoke-static {p0, p1}, Lio/ktor/http/Parameters$DefaultImpls;->get(Lio/ktor/http/Parameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest$queryParameters$1;->decoder:Lio/netty/handler/codec/http/QueryStringDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->parameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getCaseInsensitiveName()Z
    .locals 1

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest$queryParameters$1;->decoder:Lio/netty/handler/codec/http/QueryStringDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->parameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public names()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest$queryParameters$1;->decoder:Lio/netty/handler/codec/http/QueryStringDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->parameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
