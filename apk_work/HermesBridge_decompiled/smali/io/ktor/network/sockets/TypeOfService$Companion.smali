.class public final Lio/ktor/network/sockets/TypeOfService$Companion;
.super Ljava/lang/Object;
.source "TypeOfService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/TypeOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u000b\u0010\u0006R\u001c\u0010\u000c\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\r\u0010\u0006R\u001c\u0010\u000e\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u000f\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/network/sockets/TypeOfService$Companion;",
        "",
        "()V",
        "IPTOS_LOWCOST",
        "Lio/ktor/network/sockets/TypeOfService;",
        "getIPTOS_LOWCOST-zieKYfw",
        "()B",
        "B",
        "IPTOS_LOWDELAY",
        "getIPTOS_LOWDELAY-zieKYfw",
        "IPTOS_RELIABILITY",
        "getIPTOS_RELIABILITY-zieKYfw",
        "IPTOS_THROUGHPUT",
        "getIPTOS_THROUGHPUT-zieKYfw",
        "UNDEFINED",
        "getUNDEFINED-zieKYfw",
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/network/sockets/TypeOfService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIPTOS_LOWCOST-zieKYfw()B
    .locals 1

    .line 28
    invoke-static {}, Lio/ktor/network/sockets/TypeOfService;->access$getIPTOS_LOWCOST$cp()B

    move-result v0

    return v0
.end method

.method public final getIPTOS_LOWDELAY-zieKYfw()B
    .locals 1

    .line 31
    invoke-static {}, Lio/ktor/network/sockets/TypeOfService;->access$getIPTOS_LOWDELAY$cp()B

    move-result v0

    return v0
.end method

.method public final getIPTOS_RELIABILITY-zieKYfw()B
    .locals 1

    .line 29
    invoke-static {}, Lio/ktor/network/sockets/TypeOfService;->access$getIPTOS_RELIABILITY$cp()B

    move-result v0

    return v0
.end method

.method public final getIPTOS_THROUGHPUT-zieKYfw()B
    .locals 1

    .line 30
    invoke-static {}, Lio/ktor/network/sockets/TypeOfService;->access$getIPTOS_THROUGHPUT$cp()B

    move-result v0

    return v0
.end method

.method public final getUNDEFINED-zieKYfw()B
    .locals 1

    .line 27
    invoke-static {}, Lio/ktor/network/sockets/TypeOfService;->access$getUNDEFINED$cp()B

    move-result v0

    return v0
.end method
