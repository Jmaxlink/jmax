.class public final Lio/ktor/network/sockets/DatagramSendChannelKt;
.super Ljava/lang/Object;
.source "DatagramSendChannel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a/\u0010\u0005\u001a\u00020\u00032%\u0010\u0006\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0001H\u0002\u001a\u0014\u0010\n\u001a\u00020\u0003*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002\"\u001c\u0010\u0000\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u001c\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "CLOSED",
        "Lkotlin/Function1;",
        "",
        "",
        "CLOSED_INVOKED",
        "failInvokeOnClose",
        "handler",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "writeMessageTo",
        "Lio/ktor/network/sockets/Datagram;",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "ktor-network"
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
.field private static final CLOSED:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLOSED_INVOKED:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget-object v0, Lio/ktor/network/sockets/DatagramSendChannelKt$CLOSED$1;->INSTANCE:Lio/ktor/network/sockets/DatagramSendChannelKt$CLOSED$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lio/ktor/network/sockets/DatagramSendChannelKt;->CLOSED:Lkotlin/jvm/functions/Function1;

    .line 21
    sget-object v0, Lio/ktor/network/sockets/DatagramSendChannelKt$CLOSED_INVOKED$1;->INSTANCE:Lio/ktor/network/sockets/DatagramSendChannelKt$CLOSED_INVOKED$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lio/ktor/network/sockets/DatagramSendChannelKt;->CLOSED_INVOKED:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$failInvokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "handler"    # Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-static {p0}, Lio/ktor/network/sockets/DatagramSendChannelKt;->failInvokeOnClose(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getCLOSED$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/network/sockets/DatagramSendChannelKt;->CLOSED:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getCLOSED_INVOKED$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/network/sockets/DatagramSendChannelKt;->CLOSED_INVOKED:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$writeMessageTo(Lio/ktor/network/sockets/Datagram;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "$receiver"    # Lio/ktor/network/sockets/Datagram;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/network/sockets/DatagramSendChannelKt;->writeMessageTo(Lio/ktor/network/sockets/Datagram;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static final failInvokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 141
    sget-object v0, Lio/ktor/network/sockets/DatagramSendChannelKt;->CLOSED_INVOKED:Lkotlin/jvm/functions/Function1;

    if-ne p0, v0, :cond_0

    .line 142
    const-string v0, "Another handler was already registered and successfully invoked"

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Another handler was already registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    nop

    .line 147
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final writeMessageTo(Lio/ktor/network/sockets/Datagram;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "$this$writeMessageTo"    # Lio/ktor/network/sockets/Datagram;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {p0}, Lio/ktor/network/sockets/Datagram;->getPacket()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    invoke-static {v0, p1}, Lio/ktor/utils/io/core/ByteBuffersKt;->readAvailable(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;)I

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 153
    return-void
.end method
