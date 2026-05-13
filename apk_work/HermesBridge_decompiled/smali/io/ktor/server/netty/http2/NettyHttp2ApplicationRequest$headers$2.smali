.class final Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$headers$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyHttp2ApplicationRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/utils/io/ByteChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/http/Headers;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyHttp2ApplicationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyHttp2ApplicationRequest.kt\nio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$headers$2\n+ 2 Headers.kt\nio/ktor/http/Headers$Companion\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n24#2:80\n1855#3,2:81\n*S KotlinDebug\n*F\n+ 1 NettyHttp2ApplicationRequest.kt\nio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$headers$2\n*L\n41#1:80\n42#1:81,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/http/Headers;",
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
.field final synthetic this$0:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$headers$2;->this$0:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/http/Headers;
    .locals 16

    .line 41
    sget-object v0, Lio/ktor/http/Headers;->Companion:Lio/ktor/http/Headers$Companion;

    move-object/from16 v1, p0

    .local v0, "this_$iv":Lio/ktor/http/Headers$Companion;
    iget-object v2, v1, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$headers$2;->this$0:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    const/4 v3, 0x0

    .line 80
    .local v3, "$i$f$build":I
    new-instance v4, Lio/ktor/http/HeadersBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7, v5}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v4

    .local v5, "$this$invoke_u24lambda_u241":Lio/ktor/http/HeadersBuilder;
    const/4 v8, 0x0

    .line 42
    .local v8, "$i$a$-build-NettyHttp2ApplicationRequest$headers$2$1":I
    invoke-virtual {v2}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->getNettyHeaders()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 81
    .local v9, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/util/Map$Entry;

    const/4 v13, 0x0

    .line 42
    .local v13, "$i$a$-forEach-NettyHttp2ApplicationRequest$headers$2$1$1":I
    const-string v14, "(name, value)"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .local v14, "name":Ljava/lang/CharSequence;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 43
    .local v12, "value":Ljava/lang/CharSequence;
    const-string v15, "name"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_0

    move v15, v7

    goto :goto_1

    :cond_0
    move v15, v6

    :goto_1
    if-eqz v15, :cond_1

    invoke-interface {v14, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v6, 0x3a

    if-eq v15, v6, :cond_1

    .line 44
    nop

    .line 45
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 44
    invoke-virtual {v5, v6, v15}, Lio/ktor/http/HeadersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    nop

    .line 81
    .end local v12    # "value":Ljava/lang/CharSequence;
    .end local v13    # "$i$a$-forEach-NettyHttp2ApplicationRequest$headers$2$1$1":I
    .end local v14    # "name":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .end local v11    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 82
    :cond_2
    nop

    .line 50
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    nop

    .line 80
    .end local v5    # "$this$invoke_u24lambda_u241":Lio/ktor/http/HeadersBuilder;
    .end local v8    # "$i$a$-build-NettyHttp2ApplicationRequest$headers$2$1":I
    invoke-virtual {v4}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v0

    .line 41
    .end local v0    # "this_$iv":Lio/ktor/http/Headers$Companion;
    .end local v3    # "$i$f$build":I
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$headers$2;->invoke()Lio/ktor/http/Headers;

    move-result-object v0

    return-object v0
.end method
