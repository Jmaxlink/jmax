.class final Lio/ktor/server/netty/NettyApplicationRequest$rawQueryParameters$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyApplicationRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/NettyApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/http/Parameters;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyApplicationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyApplicationRequest.kt\nio/ktor/server/netty/NettyApplicationRequest$rawQueryParameters$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1#2:50\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/http/Parameters;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/server/netty/NettyApplicationRequest;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/NettyApplicationRequest;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationRequest$rawQueryParameters$2;->this$0:Lio/ktor/server/netty/NettyApplicationRequest;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/http/Parameters;
    .locals 8

    .line 37
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest$rawQueryParameters$2;->this$0:Lio/ktor/server/netty/NettyApplicationRequest;

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationRequest;->getUri()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 50
    .local v1, "it":I
    const/4 v2, 0x0

    .line 37
    .local v2, "$i$a$-takeIf-NettyApplicationRequest$rawQueryParameters$2$queryStartIndex$1":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .end local v1    # "it":I
    .end local v2    # "$i$a$-takeIf-NettyApplicationRequest$rawQueryParameters$2$queryStartIndex$1":I
    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    .local v0, "queryStartIndex":I
    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationRequest$rawQueryParameters$2;->this$0:Lio/ktor/server/netty/NettyApplicationRequest;

    invoke-virtual {v1}, Lio/ktor/server/netty/NettyApplicationRequest;->getUri()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lio/ktor/http/QueryKt;->parseQueryString$default(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/Parameters;

    move-result-object v1

    return-object v1

    .line 37
    .end local v0    # "queryStartIndex":I
    :cond_2
    sget-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    invoke-virtual {v0}, Lio/ktor/http/Parameters$Companion;->getEmpty()Lio/ktor/http/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationRequest$rawQueryParameters$2;->invoke()Lio/ktor/http/Parameters;

    move-result-object v0

    return-object v0
.end method
