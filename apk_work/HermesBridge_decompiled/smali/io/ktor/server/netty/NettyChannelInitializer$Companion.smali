.class public final Lio/ktor/server/netty/NettyChannelInitializer$Companion;
.super Ljava/lang/Object;
.source "NettyChannelInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/netty/NettyChannelInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0002R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyChannelInitializer$Companion;",
        "",
        "()V",
        "alpnProvider",
        "Lio/netty/handler/ssl/SslProvider;",
        "getAlpnProvider$ktor_server_netty",
        "()Lio/netty/handler/ssl/SslProvider;",
        "alpnProvider$delegate",
        "Lkotlin/Lazy;",
        "findAlpnProvider",
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

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/server/netty/NettyChannelInitializer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$findAlpnProvider(Lio/ktor/server/netty/NettyChannelInitializer$Companion;)Lio/netty/handler/ssl/SslProvider;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyChannelInitializer$Companion;

    .line 182
    invoke-direct {p0}, Lio/ktor/server/netty/NettyChannelInitializer$Companion;->findAlpnProvider()Lio/netty/handler/ssl/SslProvider;

    move-result-object v0

    return-object v0
.end method

.method private final findAlpnProvider()Lio/netty/handler/ssl/SslProvider;
    .locals 1

    .line 186
    nop

    .line 187
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;

    invoke-static {v0}, Lio/netty/handler/ssl/SslProvider;->isAlpnSupported(Lio/netty/handler/ssl/SslProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    .line 193
    :cond_0
    nop

    .line 194
    :try_start_1
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    invoke-static {v0}, Lio/netty/handler/ssl/SslProvider;->isAlpnSupported(Lio/netty/handler/ssl/SslProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    .line 197
    :catchall_1
    move-exception v0

    .line 200
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final getAlpnProvider$ktor_server_netty()Lio/netty/handler/ssl/SslProvider;
    .locals 1

    .line 183
    invoke-static {}, Lio/ktor/server/netty/NettyChannelInitializer;->access$getAlpnProvider$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/SslProvider;

    return-object v0
.end method
