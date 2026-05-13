.class final Lio/ktor/network/sockets/UnixSocketAddress$Companion;
.super Ljava/lang/Object;
.source "SocketAddressJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/UnixSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lio/ktor/network/sockets/UnixSocketAddress$Companion;",
        "",
        "()V",
        "unixDomainSocketAddressClass",
        "Ljava/lang/Class;",
        "checkSupportForUnixDomainSockets",
        "ktor-network"
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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/network/sockets/UnixSocketAddress$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkSupportForUnixDomainSockets(Lio/ktor/network/sockets/UnixSocketAddress$Companion;)Ljava/lang/Class;
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/sockets/UnixSocketAddress$Companion;

    .line 102
    invoke-direct {p0}, Lio/ktor/network/sockets/UnixSocketAddress$Companion;->checkSupportForUnixDomainSockets()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private final checkSupportForUnixDomainSockets()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lio/ktor/network/sockets/UnixSocketAddress;->access$getUnixDomainSocketAddressClass$cp()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 111
    const-string v1, "Unix domain sockets are unsupported before Java 16."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
