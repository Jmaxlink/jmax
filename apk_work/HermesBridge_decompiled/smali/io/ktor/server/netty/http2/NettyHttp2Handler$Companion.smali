.class public final Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;
.super Ljava/lang/Object;
.source "NettyHttp2Handler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/netty/http2/NettyHttp2Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R2\u0010\u0003\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0008\u001a\u0004\u0018\u00010\u0005*\u00020\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00058B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;",
        "",
        "()V",
        "ApplicationCallKey",
        "Lio/netty/util/AttributeKey;",
        "Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;",
        "kotlin.jvm.PlatformType",
        "newValue",
        "applicationCall",
        "Lio/netty/channel/ChannelHandlerContext;",
        "getApplicationCall",
        "(Lio/netty/channel/ChannelHandlerContext;)Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;",
        "setApplicationCall",
        "(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApplicationCall(Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;Lio/netty/channel/ChannelHandlerContext;)Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;
    .param p1, "$receiver"    # Lio/netty/channel/ChannelHandlerContext;

    .line 215
    invoke-direct {p0, p1}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;->getApplicationCall(Lio/netty/channel/ChannelHandlerContext;)Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setApplicationCall(Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;
    .param p1, "$receiver"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "newValue"    # Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;

    .line 215
    invoke-direct {p0, p1, p2}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;->setApplicationCall(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;)V

    return-void
.end method

.method private final getApplicationCall(Lio/netty/channel/ChannelHandlerContext;)Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;
    .locals 2
    .param p1, "$this$applicationCall"    # Lio/netty/channel/ChannelHandlerContext;

    .line 219
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-static {}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->access$getApplicationCallKey$cp()Lio/netty/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;

    return-object v0
.end method

.method private final setApplicationCall(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;)V
    .locals 2
    .param p1, "$this$applicationCall"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "newValue"    # Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;

    .line 221
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-static {}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->access$getApplicationCallKey$cp()Lio/netty/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 222
    return-void
.end method
