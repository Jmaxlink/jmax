.class final Lio/ktor/server/netty/NettyChannelInitializer$Companion$alpnProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyChannelInitializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/netty/NettyChannelInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/netty/handler/ssl/SslProvider;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/netty/handler/ssl/SslProvider;",
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


# static fields
.field public static final INSTANCE:Lio/ktor/server/netty/NettyChannelInitializer$Companion$alpnProvider$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/netty/NettyChannelInitializer$Companion$alpnProvider$2;

    invoke-direct {v0}, Lio/ktor/server/netty/NettyChannelInitializer$Companion$alpnProvider$2;-><init>()V

    sput-object v0, Lio/ktor/server/netty/NettyChannelInitializer$Companion$alpnProvider$2;->INSTANCE:Lio/ktor/server/netty/NettyChannelInitializer$Companion$alpnProvider$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/netty/handler/ssl/SslProvider;
    .locals 1

    .line 183
    sget-object v0, Lio/ktor/server/netty/NettyChannelInitializer;->Companion:Lio/ktor/server/netty/NettyChannelInitializer$Companion;

    invoke-static {v0}, Lio/ktor/server/netty/NettyChannelInitializer$Companion;->access$findAlpnProvider(Lio/ktor/server/netty/NettyChannelInitializer$Companion;)Lio/netty/handler/ssl/SslProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyChannelInitializer$Companion$alpnProvider$2;->invoke()Lio/netty/handler/ssl/SslProvider;

    move-result-object v0

    return-object v0
.end method
