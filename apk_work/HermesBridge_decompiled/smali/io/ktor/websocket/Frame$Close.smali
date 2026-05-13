.class public final Lio/ktor/websocket/Frame$Close;
.super Lio/ktor/websocket/Frame;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Close"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrame.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Frame.kt\nio/ktor/websocket/Frame$Close\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,156:1\n12#2,11:157\n*S KotlinDebug\n*F\n+ 1 Frame.kt\nio/ktor/websocket/Frame$Close\n*L\n87#1:157,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0008B\u000f\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB\r\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/websocket/Frame$Close;",
        "Lio/ktor/websocket/Frame;",
        "reason",
        "Lio/ktor/websocket/CloseReason;",
        "(Lio/ktor/websocket/CloseReason;)V",
        "packet",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "(Lio/ktor/utils/io/core/ByteReadPacket;)V",
        "()V",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "(Ljava/nio/ByteBuffer;)V",
        "data",
        "",
        "([B)V",
        "ktor-websockets"
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
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-static {}, Lio/ktor/websocket/Frame;->access$getEmpty$cp()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/websocket/Frame$Close;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/core/ByteReadPacket;)V
    .locals 3
    .param p1, "packet"    # Lio/ktor/utils/io/core/ByteReadPacket;

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/websocket/Frame$Close;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/websocket/CloseReason;)V
    .locals 13
    .param p1, "reason"    # Lio/ktor/websocket/CloseReason;

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    const/4 v0, 0x0

    .line 157
    .local v0, "$i$f$buildPacket":I
    nop

    .line 161
    new-instance v1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 163
    move-object v2, v1

    .local v2, "$this$_init__u24lambda_u240":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v3, 0x0

    .line 88
    .local v3, "$i$a$-buildPacket-Frame$Close$1":I
    :try_start_0
    move-object v4, v2

    check-cast v4, Lio/ktor/utils/io/core/Output;

    invoke-virtual {p1}, Lio/ktor/websocket/CloseReason;->getCode()S

    move-result v5

    invoke-static {v4, v5}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Output;S)V

    .line 89
    move-object v6, v2

    check-cast v6, Lio/ktor/utils/io/core/Output;

    invoke-virtual {p1}, Lio/ktor/websocket/CloseReason;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    const/16 v11, 0xe

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 90
    nop

    .line 163
    .end local v2    # "$this$_init__u24lambda_u240":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v3    # "$i$a$-buildPacket-Frame$Close$1":I
    nop

    .line 164
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    invoke-direct {p0, v2}, Lio/ktor/websocket/Frame$Close;-><init>(Lio/ktor/utils/io/core/ByteReadPacket;)V

    .line 91
    return-void

    .line 165
    .restart local v0    # "$i$f$buildPacket":I
    .restart local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_0
    move-exception v2

    .line 166
    .local v2, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 167
    throw v2
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lio/ktor/util/NIOKt;->moveToByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/websocket/Frame$Close;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 10
    .param p1, "data"    # [B

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v3, Lio/ktor/websocket/FrameType;->CLOSE:Lio/ktor/websocket/FrameType;

    sget-object v0, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/DisposableHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v9}, Lio/ktor/websocket/Frame;-><init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    return-void
.end method
