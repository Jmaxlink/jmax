.class public final Lio/ktor/network/sockets/TypeOfService;
.super Ljava/lang/Object;
.source "TypeOfService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/sockets/TypeOfService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0014\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0007J\u001a\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\nJ\u0010\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0012\u0010\u0008\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u0002\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000c\u0088\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ktor/network/sockets/TypeOfService;",
        "",
        "value",
        "",
        "constructor-impl",
        "(I)B",
        "Lkotlin/UByte;",
        "(B)B",
        "intValue",
        "getIntValue-impl",
        "(B)I",
        "getValue-w2LRezQ",
        "()B",
        "B",
        "equals",
        "",
        "other",
        "equals-impl",
        "(BLjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "toString",
        "",
        "toString-impl",
        "(B)Ljava/lang/String;",
        "Companion",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

.field private static final IPTOS_LOWCOST:B

.field private static final IPTOS_LOWDELAY:B

.field private static final IPTOS_RELIABILITY:B

.field private static final IPTOS_THROUGHPUT:B

.field private static final UNDEFINED:B


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/network/sockets/TypeOfService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/TypeOfService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/sockets/TypeOfService;->Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->UNDEFINED:B

    .line 28
    const/4 v0, 0x2

    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_LOWCOST:B

    .line 29
    const/4 v0, 0x4

    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_RELIABILITY:B

    .line 30
    const/16 v0, 0x8

    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_THROUGHPUT:B

    .line 31
    const/16 v0, 0x10

    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    sput-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_LOWDELAY:B

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0
    .param p1, "value"    # B

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lio/ktor/network/sockets/TypeOfService;->value:B

    return-void
.end method

.method public static final synthetic access$getIPTOS_LOWCOST$cp()B
    .locals 1

    .line 13
    sget-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_LOWCOST:B

    return v0
.end method

.method public static final synthetic access$getIPTOS_LOWDELAY$cp()B
    .locals 1

    .line 13
    sget-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_LOWDELAY:B

    return v0
.end method

.method public static final synthetic access$getIPTOS_RELIABILITY$cp()B
    .locals 1

    .line 13
    sget-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_RELIABILITY:B

    return v0
.end method

.method public static final synthetic access$getIPTOS_THROUGHPUT$cp()B
    .locals 1

    .line 13
    sget-byte v0, Lio/ktor/network/sockets/TypeOfService;->IPTOS_THROUGHPUT:B

    return v0
.end method

.method public static final synthetic access$getUNDEFINED$cp()B
    .locals 1

    .line 13
    sget-byte v0, Lio/ktor/network/sockets/TypeOfService;->UNDEFINED:B

    return v0
.end method

.method public static final synthetic box-impl(B)Lio/ktor/network/sockets/TypeOfService;
    .locals 1

    new-instance v0, Lio/ktor/network/sockets/TypeOfService;

    invoke-direct {v0, p0}, Lio/ktor/network/sockets/TypeOfService;-><init>(B)V

    return-object v0
.end method

.method public static constructor-impl(B)B
    .locals 0

    return p0
.end method

.method public static constructor-impl(I)B
    .locals 1
    .param p0, "value"    # I

    .line 18
    int-to-byte v0, p0

    invoke-static {v0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v0

    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->constructor-impl(B)B

    move-result v0

    return v0
.end method

.method public static equals-impl(BLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/ktor/network/sockets/TypeOfService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/TypeOfService;

    invoke-virtual {v0}, Lio/ktor/network/sockets/TypeOfService;->unbox-impl()B

    move-result v0

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(BB)Z
    .locals 1

    invoke-static {p0, p1}, Lkotlin/UByte;->equals-impl0(BB)Z

    move-result v0

    return v0
.end method

.method public static final getIntValue-impl(B)I
    .locals 2
    .param p0, "arg0"    # B

    const/4 v0, 0x0

    .line 23
    .local v0, "$i$f$getIntValue-impl":I
    and-int/lit16 v1, p0, 0xff

    return v1
.end method

.method public static hashCode-impl(B)I
    .locals 1

    invoke-static {p0}, Lkotlin/UByte;->hashCode-impl(B)I

    move-result v0

    return v0
.end method

.method public static toString-impl(B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeOfService(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lkotlin/UByte;->toString-impl(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-byte v0, p0, Lio/ktor/network/sockets/TypeOfService;->value:B

    invoke-static {v0, p1}, Lio/ktor/network/sockets/TypeOfService;->equals-impl(BLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getValue-w2LRezQ()B
    .locals 1

    .line 14
    iget-byte v0, p0, Lio/ktor/network/sockets/TypeOfService;->value:B

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-byte v0, p0, Lio/ktor/network/sockets/TypeOfService;->value:B

    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->hashCode-impl(B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lio/ktor/network/sockets/TypeOfService;->value:B

    invoke-static {v0}, Lio/ktor/network/sockets/TypeOfService;->toString-impl(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()B
    .locals 1

    iget-byte v0, p0, Lio/ktor/network/sockets/TypeOfService;->value:B

    return v0
.end method
