.class public final Lio/ktor/websocket/FrameCommonKt;
.super Ljava/lang/Object;
.source "FrameCommon.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameCommon.kt\nio/ktor/websocket/FrameCommonKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,173:1\n1#2:174\n12#3,11:175\n12#3,11:186\n*S KotlinDebug\n*F\n+ 1 FrameCommon.kt\nio/ktor/websocket/FrameCommonKt\n*L\n142#1:175,11\n161#1:186,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u000c\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "readBytes",
        "",
        "Lio/ktor/websocket/Frame;",
        "readReason",
        "Lio/ktor/websocket/CloseReason;",
        "Lio/ktor/websocket/Frame$Close;",
        "readText",
        "",
        "Lio/ktor/websocket/Frame$Text;",
        "ktor-websockets"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final readBytes(Lio/ktor/websocket/Frame;)[B
    .locals 2
    .param p0, "$this$readBytes"    # Lio/ktor/websocket/Frame;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(this, size)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final readReason(Lio/ktor/websocket/Frame$Close;)Lio/ktor/websocket/CloseReason;
    .locals 11
    .param p0, "$this$readReason"    # Lio/ktor/websocket/Frame$Close;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lio/ktor/websocket/Frame$Close;->getData()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 158
    return-object v2

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 186
    .local v0, "$i$f$buildPacket":I
    nop

    .line 190
    new-instance v1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 192
    move-object v3, v1

    .local v3, "$this$readReason_u24lambda_u242":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v4, 0x0

    .line 161
    .local v4, "$i$a$-buildPacket-FrameCommonKt$readReason$packet$1":I
    :try_start_0
    move-object v5, v3

    check-cast v5, Lio/ktor/utils/io/core/Output;

    invoke-virtual {p0}, Lio/ktor/websocket/Frame$Close;->getData()[B

    move-result-object v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    .line 192
    .end local v3    # "$this$readReason_u24lambda_u242":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v4    # "$i$a$-buildPacket-FrameCommonKt$readReason$packet$1":I
    nop

    .line 193
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    move-object v0, v3

    .line 163
    .local v0, "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Input;

    invoke-static {v1}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result v1

    .line 164
    .local v1, "code":S
    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Input;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v5, v5, v4, v2}, Lio/ktor/utils/io/core/Input;->readText$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lio/ktor/websocket/CloseReason;

    invoke-direct {v3, v1, v2}, Lio/ktor/websocket/CloseReason;-><init>(SLjava/lang/String;)V

    return-object v3

    .line 194
    .end local v2    # "message":Ljava/lang/String;
    .local v0, "$i$f$buildPacket":I
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_0
    move-exception v2

    .line 195
    .local v2, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 196
    throw v2
.end method

.method public static final readText(Lio/ktor/websocket/Frame$Text;)Ljava/lang/String;
    .locals 12
    .param p0, "$this$readText"    # Lio/ktor/websocket/Frame$Text;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lio/ktor/websocket/Frame$Text;->getFin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "UTF_8.newDecoder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 175
    .local v1, "$i$f$buildPacket":I
    nop

    .line 179
    new-instance v2, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    .local v2, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 181
    move-object v3, v2

    .local v3, "$this$readText_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v5, 0x0

    .line 142
    .local v5, "$i$a$-buildPacket-FrameCommonKt$readText$2":I
    :try_start_0
    move-object v6, v3

    check-cast v6, Lio/ktor/utils/io/core/Output;

    invoke-virtual {p0}, Lio/ktor/websocket/Frame$Text;->getData()[B

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    .line 181
    .end local v3    # "$this$readText_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v5    # "$i$a$-buildPacket-FrameCommonKt$readText$2":I
    nop

    .line 182
    invoke-virtual {v2}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v1    # "$i$f$buildPacket":I
    .end local v2    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    check-cast v3, Lio/ktor/utils/io/core/Input;

    .line 142
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v3, v1, v2, v4}, Lio/ktor/utils/io/charsets/EncodingKt;->decode$default(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    .restart local v1    # "$i$f$buildPacket":I
    .restart local v2    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_0
    move-exception v0

    .line 184
    .local v0, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 185
    throw v0

    .line 174
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    .end local v1    # "$i$f$buildPacket":I
    .end local v2    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :cond_0
    const/4 v0, 0x0

    .line 141
    .local v0, "$i$a$-require-FrameCommonKt$readText$1":I
    nop

    .end local v0    # "$i$a$-require-FrameCommonKt$readText$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text could be only extracted from non-fragmented frame"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
