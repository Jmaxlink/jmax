.class public final Lio/ktor/utils/io/jvm/javaio/PollersKt;
.super Ljava/lang/Object;
.source "Pollers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a\u0008\u0010\u0007\u001a\u00020\u0008H\u0001\u001a\u0008\u0010\t\u001a\u00020\nH\u0001\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018AX\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001c\u0010\u0005\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "parkingImpl",
        "Lio/ktor/utils/io/jvm/javaio/Parking;",
        "Ljava/lang/Thread;",
        "getParkingImpl",
        "()Lio/ktor/utils/io/jvm/javaio/Parking;",
        "parkingImplLocal",
        "Ljava/lang/ThreadLocal;",
        "isParkingAllowed",
        "",
        "prohibitParking",
        "",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final parkingImplLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/ktor/utils/io/jvm/javaio/Parking<",
            "Ljava/lang/Thread;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/PollersKt;->parkingImplLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/jvm/javaio/Parking<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/PollersKt;->parkingImplLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/jvm/javaio/Parking;

    if-nez v0, :cond_0

    sget-object v0, Lio/ktor/utils/io/jvm/javaio/DefaultParking;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/DefaultParking;

    check-cast v0, Lio/ktor/utils/io/jvm/javaio/Parking;

    :cond_0
    return-object v0
.end method

.method public static final isParkingAllowed()Z
    .locals 2

    .line 28
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;

    move-result-object v0

    sget-object v1, Lio/ktor/utils/io/jvm/javaio/ProhibitParking;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/ProhibitParking;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final prohibitParking()V
    .locals 2

    .line 23
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/PollersKt;->parkingImplLocal:Ljava/lang/ThreadLocal;

    sget-object v1, Lio/ktor/utils/io/jvm/javaio/ProhibitParking;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/ProhibitParking;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 24
    return-void
.end method
