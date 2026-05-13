.class public final Lio/ktor/utils/io/nio/ChannelsKt;
.super Ljava/lang/Object;
.source "Channels.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nio/ktor/utils/io/nio/ChannelsKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n+ 4 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 8 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 9 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n1#1,165:1\n12#2,11:166\n8#3,9:177\n18#3,11:203\n95#4,5:186\n100#4,3:196\n104#4:200\n44#4:217\n45#4:219\n46#4,14:221\n372#5,5:191\n377#5,2:201\n390#5,7:236\n372#5,7:244\n1#6:199\n1#6:215\n1#6:220\n39#7:214\n74#8:216\n74#8:218\n74#8:235\n21#9:243\n21#9:251\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nio/ktor/utils/io/nio/ChannelsKt\n*L\n15#1:166,11\n35#1:177,9\n35#1:203,11\n36#1:186,5\n36#1:196,3\n36#1:200\n95#1:217\n95#1:219\n95#1:221,14\n36#1:191,5\n36#1:201,2\n124#1:236,7\n149#1:244,7\n36#1:199\n95#1:220\n41#1:214\n85#1:216\n95#1:218\n122#1:235\n137#1:243\n160#1:251\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0007\u001a\u0012\u0010\u000b\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e\u001a\u0012\u0010\u000f\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e\u001a\u0012\u0010\u0010\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e\u001a\u001c\u0010\u0011\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002\u001a3\u0010\u0014\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u0014\u0010\u0014\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\t\u001a\u00020\nH\u0007\u001a%\u0010\u001a\u001a\u0004\u0018\u00010\u000c*\u00020\u00152\u0017\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001c\u00a2\u0006\u0002\u0008\u001f\u001a\u0012\u0010\u001a\u001a\u00020 *\u00020\u00152\u0006\u0010!\u001a\u00020\u000c\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\""
    }
    d2 = {
        "read",
        "",
        "Ljava/nio/channels/ReadableByteChannel;",
        "destination",
        "Lio/ktor/utils/io/bits/Memory;",
        "destinationOffset",
        "maxLength",
        "read-UAd2zVI",
        "(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;II)I",
        "buffer",
        "Lio/ktor/utils/io/core/Buffer;",
        "readPacketAtLeast",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "n",
        "",
        "readPacketAtMost",
        "readPacketExact",
        "readPacketImpl",
        "min",
        "max",
        "write",
        "Ljava/nio/channels/WritableByteChannel;",
        "source",
        "sourceOffset",
        "write-UAd2zVI",
        "(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;II)I",
        "writePacket",
        "builder",
        "Lkotlin/Function1;",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "",
        "p",
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


# direct methods
.method public static final read(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/core/Buffer;)I
    .locals 8
    .param p0, "$this$read"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .annotation runtime Lkotlin/Deprecated;
        message = "Use read(Memory) instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p1

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 235
    .local v1, "$i$f$getWriteRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 122
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getWriteRemaining":I
    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    move-object v0, p1

    .local v0, "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 236
    .local v1, "$i$f$write":I
    nop

    .line 240
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    .local v3, "start":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    .local v4, "endExclusive":I
    const/4 v5, 0x0

    .line 125
    .local v5, "$i$a$-write-ChannelsKt$read$1":I
    sub-int v6, v4, v3

    invoke-static {v2, v3, v6}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 126
    .local v6, "rc":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    return v7

    .line 127
    :cond_1
    nop

    .line 240
    .end local v2    # "memory":Ljava/nio/ByteBuffer;
    .end local v3    # "start":I
    .end local v4    # "endExclusive":I
    .end local v5    # "$i$a$-write-ChannelsKt$read$1":I
    .end local v6    # "rc":I
    move v2, v6

    .line 241
    .local v2, "rc$iv":I
    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 242
    nop

    .line 124
    .end local v0    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$write":I
    .end local v2    # "rc$iv":I
    return v2
.end method

.method public static final read-UAd2zVI(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p0, "$this$read_u2dUAd2zVI"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "destinationOffset"    # I
    .param p3, "maxLength"    # I

    const-string v0, "$this$read"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {p1, p2, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    .local v0, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method

.method public static synthetic read-UAd2zVI$default(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;IIILjava/lang/Object;)I
    .locals 0

    .line 134
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 136
    const/4 p2, 0x0

    .line 134
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 137
    const/4 p3, 0x0

    .line 243
    .local p3, "$i$f$getSize32-impl":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    .line 137
    .end local p3    # "$i$f$getSize32-impl":I
    sub-int/2addr p3, p2

    .line 134
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/nio/ChannelsKt;->read-UAd2zVI(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static final readPacketAtLeast(Ljava/nio/channels/ReadableByteChannel;J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 2
    .param p0, "$this$readPacketAtLeast"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "n"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, p2, v0, v1}, Lio/ktor/utils/io/nio/ChannelsKt;->readPacketImpl(Ljava/nio/channels/ReadableByteChannel;JJ)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0
.end method

.method public static final readPacketAtMost(Ljava/nio/channels/ReadableByteChannel;J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 2
    .param p0, "$this$readPacketAtMost"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "n"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lio/ktor/utils/io/nio/ChannelsKt;->readPacketImpl(Ljava/nio/channels/ReadableByteChannel;JJ)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0
.end method

.method public static final readPacketExact(Ljava/nio/channels/ReadableByteChannel;J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 1
    .param p0, "$this$readPacketExact"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "n"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1, p2, p1, p2}, Lio/ktor/utils/io/nio/ChannelsKt;->readPacketImpl(Ljava/nio/channels/ReadableByteChannel;JJ)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0
.end method

.method private static final readPacketImpl(Ljava/nio/channels/ReadableByteChannel;JJ)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 29
    .param p0, "$this$readPacketImpl"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "min"    # J
    .param p3, "max"    # J

    .line 69
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_11

    .line 70
    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_10

    .line 72
    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    sget-object v0, Lio/ktor/utils/io/core/ByteReadPacket;->Companion:Lio/ktor/utils/io/core/ByteReadPacket$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket$Companion;->getEmpty()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0

    .line 74
    :cond_2
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v9

    .line 75
    .local v9, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v10

    .line 76
    .local v10, "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v0, 0x0

    .local v0, "head":Ljava/lang/Object;
    move-object v0, v10

    .line 77
    const/4 v11, 0x0

    .local v11, "tail":Ljava/lang/Object;
    move-object v11, v10

    .line 79
    const-wide/16 v12, 0x0

    .line 81
    .local v12, "read":J
    move-wide v13, v12

    move-object v12, v11

    move-object v11, v0

    .line 82
    .end local v0    # "head":Ljava/lang/Object;
    .local v11, "head":Ljava/lang/Object;
    .local v12, "tail":Ljava/lang/Object;
    .local v13, "read":J
    :goto_2
    cmp-long v0, v13, v1

    if-ltz v0, :cond_4

    cmp-long v0, v13, v1

    if-nez v0, :cond_3

    cmp-long v0, v1, v5

    if-nez v0, :cond_3

    goto :goto_3

    .line 113
    :cond_3
    new-instance v0, Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-direct {v0, v11, v9}, Lio/ktor/utils/io/core/ByteReadPacket;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    return-object v0

    .line 83
    :cond_4
    :goto_3
    sub-long v5, v3, v13

    const-wide/32 v7, 0x7fffffff

    :try_start_0
    invoke-static {v5, v6, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 85
    .local v5, "remInt":I
    move-object v6, v12

    .line 215
    .local v6, "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v7, 0x0

    .line 85
    .local v7, "$i$a$-takeIf-ChannelsKt$readPacketImpl$part$1":I
    move-object v8, v6

    check-cast v8, Lio/ktor/utils/io/core/Buffer;

    .local v8, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 216
    .local v18, "$i$f$getWriteRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v19

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    sub-int v19, v19, v20

    .line 85
    .end local v8    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getWriteRemaining":I
    move/from16 v8, v19

    .line 215
    .local v8, "it":I
    const/16 v18, 0x0

    .line 85
    .local v18, "$i$a$-let-ChannelsKt$readPacketImpl$part$1$1":I
    const/16 v0, 0xc8

    if-gt v8, v0, :cond_6

    if-lt v8, v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    .end local v6    # "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v7    # "$i$a$-takeIf-ChannelsKt$readPacketImpl$part$1":I
    .end local v8    # "it":I
    .end local v18    # "$i$a$-let-ChannelsKt$readPacketImpl$part$1$1":I
    :goto_5
    if-eqz v0, :cond_7

    move-object v0, v12

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_9

    :try_start_1
    invoke-interface {v9}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .restart local v6    # "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v7, 0x0

    .line 86
    .local v7, "$i$a$-also-ChannelsKt$readPacketImpl$part$2":I
    if-ne v11, v10, :cond_8

    .line 87
    move-object v11, v6

    move-object v12, v6

    .line 89
    :cond_8
    nop

    .line 85
    .end local v6    # "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v7    # "$i$a$-also-ChannelsKt$readPacketImpl$part$2":I
    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_7

    .line 108
    .end local v5    # "remInt":I
    :catchall_0
    move-exception v0

    move-object/from16 v25, v10

    goto/16 :goto_a

    .line 90
    .local v0, "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v5    # "remInt":I
    :cond_9
    :goto_7
    if-eq v12, v0, :cond_a

    .line 91
    invoke-virtual {v12, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    move-object v6, v0

    move-object v12, v6

    .line 95
    :cond_a
    const/4 v6, 0x1

    .local v6, "size$iv":I
    move-object v7, v0

    .local v7, "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v8, 0x0

    .line 217
    .local v8, "$i$f$writeDirect":I
    :try_start_2
    move-object/from16 v18, v7

    check-cast v18, Lio/ktor/utils/io/core/Buffer;

    .local v18, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v20, 0x0

    .line 218
    .local v20, "$i$f$getWriteRemaining":I
    invoke-virtual/range {v18 .. v18}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v21

    invoke-virtual/range {v18 .. v18}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v22

    sub-int v21, v21, v22

    .line 217
    .end local v18    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v20    # "$i$f$getWriteRemaining":I
    move/from16 v18, v21

    .line 219
    .local v18, "rem$iv":I
    move/from16 v15, v18

    .end local v18    # "rem$iv":I
    .local v15, "rem$iv":I
    if-gt v6, v15, :cond_b

    const/16 v16, 0x1

    goto :goto_8

    :cond_b
    const/16 v16, 0x0

    :goto_8
    if-eqz v16, :cond_f

    .line 221
    invoke-virtual {v7}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v18, v16

    .line 222
    .local v18, "buffer$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v16

    move/from16 v22, v16

    .line 223
    .local v22, "writePosition$iv":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getLimit()I

    move-result v16

    move/from16 v23, v16

    .line 224
    .local v23, "limit$iv":I
    move-object/from16 v16, v0

    move-object/from16 v0, v18

    move/from16 v18, v8

    move/from16 v8, v23

    .end local v23    # "limit$iv":I
    .local v0, "buffer$iv":Ljava/nio/ByteBuffer;
    .local v8, "limit$iv":I
    .local v16, "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v18, "$i$f$writeDirect":I
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 225
    move/from16 v23, v8

    move/from16 v8, v22

    .end local v22    # "writePosition$iv":I
    .local v8, "writePosition$iv":I
    .restart local v23    # "limit$iv":I
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    move-object/from16 v22, v0

    .local v22, "bb":Ljava/nio/ByteBuffer;
    const/16 v24, 0x0

    .line 96
    .local v24, "$i$a$-writeDirect-ChannelsKt$readPacketImpl$3":I
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->limit()I

    move-result v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move/from16 v26, v25

    .line 97
    .local v26, "l":I
    move-object/from16 v25, v10

    .end local v10    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v25, "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-le v10, v5, :cond_c

    .line 98
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v5

    move/from16 v27, v5

    move-object/from16 v5, v22

    .end local v22    # "bb":Ljava/nio/ByteBuffer;
    .local v5, "bb":Ljava/nio/ByteBuffer;
    .local v27, "remInt":I
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    .line 108
    .end local v0    # "buffer$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "size$iv":I
    .end local v7    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v8    # "writePosition$iv":I
    .end local v15    # "rem$iv":I
    .end local v16    # "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v18    # "$i$f$writeDirect":I
    .end local v23    # "limit$iv":I
    .end local v24    # "$i$a$-writeDirect-ChannelsKt$readPacketImpl$3":I
    .end local v26    # "l":I
    .end local v27    # "remInt":I
    :catchall_1
    move-exception v0

    goto/16 :goto_a

    .line 97
    .restart local v0    # "buffer$iv":Ljava/nio/ByteBuffer;
    .local v5, "remInt":I
    .restart local v6    # "size$iv":I
    .restart local v7    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v8    # "writePosition$iv":I
    .restart local v15    # "rem$iv":I
    .restart local v16    # "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v18    # "$i$f$writeDirect":I
    .restart local v22    # "bb":Ljava/nio/ByteBuffer;
    .restart local v23    # "limit$iv":I
    .restart local v24    # "$i$a$-writeDirect-ChannelsKt$readPacketImpl$3":I
    .restart local v26    # "l":I
    :cond_c
    move/from16 v27, v5

    move-object/from16 v5, v22

    .line 101
    .end local v22    # "bb":Ljava/nio/ByteBuffer;
    .local v5, "bb":Ljava/nio/ByteBuffer;
    .restart local v27    # "remInt":I
    :goto_9
    move-object/from16 v10, p0

    :try_start_5
    invoke-interface {v10, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v28, v22

    .line 102
    .local v28, "rc":I
    const/4 v10, -0x1

    move-object/from16 v22, v11

    move/from16 v11, v28

    .end local v28    # "rc":I
    .local v11, "rc":I
    .local v22, "head":Ljava/lang/Object;
    if-eq v11, v10, :cond_e

    .line 104
    move/from16 v10, v26

    .end local v26    # "l":I
    .local v10, "l":I
    :try_start_6
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 105
    int-to-long v3, v11

    add-long/2addr v13, v3

    .line 106
    nop

    .line 227
    .end local v5    # "bb":Ljava/nio/ByteBuffer;
    .end local v10    # "l":I
    .end local v11    # "rc":I
    .end local v24    # "$i$a$-writeDirect-ChannelsKt$readPacketImpl$3":I
    nop

    .line 229
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v8

    .line 230
    .local v3, "delta$iv":I
    if-ltz v3, :cond_d

    if-gt v3, v15, :cond_d

    .line 232
    invoke-virtual {v7, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWritten(I)V

    .line 234
    move-wide/from16 v3, p3

    move-object/from16 v11, v22

    move-object/from16 v10, v25

    const-wide/16 v5, 0x0

    .end local v0    # "buffer$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "delta$iv":I
    .end local v6    # "size$iv":I
    .end local v7    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v8    # "writePosition$iv":I
    .end local v15    # "rem$iv":I
    .end local v16    # "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v18    # "$i$f$writeDirect":I
    .end local v23    # "limit$iv":I
    .end local v27    # "remInt":I
    goto/16 :goto_2

    .line 230
    .restart local v0    # "buffer$iv":Ljava/nio/ByteBuffer;
    .restart local v3    # "delta$iv":I
    .restart local v6    # "size$iv":I
    .restart local v7    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v8    # "writePosition$iv":I
    .restart local v15    # "rem$iv":I
    .restart local v16    # "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v18    # "$i$f$writeDirect":I
    .restart local v23    # "limit$iv":I
    .restart local v27    # "remInt":I
    :cond_d
    invoke-static {v3, v6}, Lio/ktor/utils/io/internal/jvm/ErrorsKt;->wrongBufferPositionChangeError(II)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v9    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v12    # "tail":Ljava/lang/Object;
    .end local v13    # "read":J
    .end local v22    # "head":Ljava/lang/Object;
    .end local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p0    # "$this$readPacketImpl":Ljava/nio/channels/ReadableByteChannel;
    .end local p1    # "min":J
    .end local p3    # "max":J
    throw v4

    .line 102
    .end local v3    # "delta$iv":I
    .restart local v5    # "bb":Ljava/nio/ByteBuffer;
    .restart local v9    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .restart local v11    # "rc":I
    .restart local v12    # "tail":Ljava/lang/Object;
    .restart local v13    # "read":J
    .restart local v22    # "head":Ljava/lang/Object;
    .restart local v24    # "$i$a$-writeDirect-ChannelsKt$readPacketImpl$3":I
    .restart local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v26    # "l":I
    .restart local p0    # "$this$readPacketImpl":Ljava/nio/channels/ReadableByteChannel;
    .restart local p1    # "min":J
    .restart local p3    # "max":J
    :cond_e
    move/from16 v10, v26

    .end local v26    # "l":I
    .restart local v10    # "l":I
    new-instance v3, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "buffer$iv":Ljava/nio/ByteBuffer;
    .local v17, "buffer$iv":Ljava/nio/ByteBuffer;
    const-string v0, "Premature end of stream: was read "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " bytes of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v9    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v12    # "tail":Ljava/lang/Object;
    .end local v13    # "read":J
    .end local v22    # "head":Ljava/lang/Object;
    .end local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p0    # "$this$readPacketImpl":Ljava/nio/channels/ReadableByteChannel;
    .end local p1    # "min":J
    .end local p3    # "max":J
    throw v3

    .line 108
    .end local v5    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "size$iv":I
    .end local v7    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v8    # "writePosition$iv":I
    .end local v10    # "l":I
    .end local v15    # "rem$iv":I
    .end local v16    # "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v17    # "buffer$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "$i$f$writeDirect":I
    .end local v23    # "limit$iv":I
    .end local v24    # "$i$a$-writeDirect-ChannelsKt$readPacketImpl$3":I
    .end local v27    # "remInt":I
    .restart local v9    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .local v11, "head":Ljava/lang/Object;
    .restart local v12    # "tail":Ljava/lang/Object;
    .restart local v13    # "read":J
    .restart local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p0    # "$this$readPacketImpl":Ljava/nio/channels/ReadableByteChannel;
    .restart local p1    # "min":J
    .restart local p3    # "max":J
    :catchall_2
    move-exception v0

    move-object/from16 v22, v11

    .end local v11    # "head":Ljava/lang/Object;
    .restart local v22    # "head":Ljava/lang/Object;
    goto :goto_a

    .line 220
    .end local v22    # "head":Ljava/lang/Object;
    .end local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v5, "remInt":I
    .restart local v6    # "size$iv":I
    .restart local v7    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v8, "$i$f$writeDirect":I
    .local v10, "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "head":Ljava/lang/Object;
    .restart local v15    # "rem$iv":I
    :cond_f
    move-object/from16 v16, v0

    move/from16 v27, v5

    move/from16 v18, v8

    move-object/from16 v25, v10

    move-object/from16 v22, v11

    .end local v0    # "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v5    # "remInt":I
    .end local v8    # "$i$f$writeDirect":I
    .end local v10    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "head":Ljava/lang/Object;
    .restart local v16    # "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v18    # "$i$f$writeDirect":I
    .restart local v22    # "head":Ljava/lang/Object;
    .restart local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v27    # "remInt":I
    const/4 v0, 0x0

    .line 219
    .local v0, "$i$a$-require-BufferUtilsJvmKt$writeDirect$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is greater than buffer\'s remaining capacity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v0    # "$i$a$-require-BufferUtilsJvmKt$writeDirect$1$iv":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v9    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v12    # "tail":Ljava/lang/Object;
    .end local v13    # "read":J
    .end local v22    # "head":Ljava/lang/Object;
    .end local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p0    # "$this$readPacketImpl":Ljava/nio/channels/ReadableByteChannel;
    .end local p1    # "min":J
    .end local p3    # "max":J
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 108
    .end local v6    # "size$iv":I
    .end local v7    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v15    # "rem$iv":I
    .end local v16    # "part":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v18    # "$i$f$writeDirect":I
    .end local v27    # "remInt":I
    .restart local v9    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .restart local v12    # "tail":Ljava/lang/Object;
    .restart local v13    # "read":J
    .restart local v22    # "head":Ljava/lang/Object;
    .restart local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p0    # "$this$readPacketImpl":Ljava/nio/channels/ReadableByteChannel;
    .restart local p1    # "min":J
    .restart local p3    # "max":J
    :catchall_3
    move-exception v0

    move-object/from16 v11, v22

    goto :goto_a

    .end local v22    # "head":Ljava/lang/Object;
    .end local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "head":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v22, v11

    .end local v10    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "head":Ljava/lang/Object;
    .restart local v22    # "head":Ljava/lang/Object;
    .restart local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_a

    .end local v22    # "head":Ljava/lang/Object;
    .end local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "head":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move-object/from16 v25, v10

    .line 109
    .end local v10    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_a
    move-object v3, v11

    check-cast v3, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-static {v3, v9}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 110
    throw v0

    .line 215
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v9    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v11    # "head":Ljava/lang/Object;
    .end local v12    # "tail":Ljava/lang/Object;
    .end local v13    # "read":J
    .end local v25    # "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_10
    const/4 v0, 0x0

    .line 70
    .local v0, "$i$a$-require-ChannelsKt$readPacketImpl$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min shouldn\'t be greater than max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ChannelsKt$readPacketImpl$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_11
    move-wide v4, v3

    const/4 v0, 0x0

    .line 69
    .local v0, "$i$a$-require-ChannelsKt$readPacketImpl$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "min shouldn\'t be negative: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ChannelsKt$readPacketImpl$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final write(Ljava/nio/channels/WritableByteChannel;Lio/ktor/utils/io/core/Buffer;)I
    .locals 7
    .param p0, "$this$write"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .annotation runtime Lkotlin/Deprecated;
        message = "Use write(Memory) instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    move-object v0, p1

    .local v0, "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 244
    .local v1, "$i$f$read":I
    nop

    .line 248
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    .local v3, "start":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    .local v4, "endExclusive":I
    const/4 v5, 0x0

    .line 150
    .local v5, "$i$a$-read-ChannelsKt$write$1":I
    sub-int v6, v4, v3

    invoke-static {v2, v3, v6}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 248
    .end local v2    # "memory":Ljava/nio/ByteBuffer;
    .end local v3    # "start":I
    .end local v4    # "endExclusive":I
    .end local v5    # "$i$a$-read-ChannelsKt$write$1":I
    nop

    .line 249
    .local v2, "rc$iv":I
    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 250
    nop

    .line 149
    .end local v0    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$read":I
    .end local v2    # "rc$iv":I
    return v2
.end method

.method public static final write-UAd2zVI(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p0, "$this$write_u2dUAd2zVI"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .param p2, "sourceOffset"    # I
    .param p3, "maxLength"    # I

    const-string v0, "$this$write"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {p1, p2, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p0, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method

.method public static synthetic write-UAd2zVI$default(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;IIILjava/lang/Object;)I
    .locals 0

    .line 157
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 159
    const/4 p2, 0x0

    .line 157
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 160
    const/4 p3, 0x0

    .line 251
    .local p3, "$i$f$getSize32-impl":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    .line 160
    .end local p3    # "$i$f$getSize32-impl":I
    sub-int/2addr p3, p2

    .line 157
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/nio/ChannelsKt;->write-UAd2zVI(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static final writePacket(Ljava/nio/channels/WritableByteChannel;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 4
    .param p0, "$this$writePacket"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/WritableByteChannel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/utils/io/core/ByteReadPacket;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    .line 166
    .local v0, "$i$f$buildPacket":I
    nop

    .line 170
    new-instance v1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 171
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 172
    :try_start_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    move-object v0, v2

    .line 16
    .local v0, "p":Lio/ktor/utils/io/core/ByteReadPacket;
    nop

    .line 17
    :try_start_1
    invoke-static {p0, v0}, Lio/ktor/utils/io/nio/ChannelsKt;->writePacket(Ljava/nio/channels/WritableByteChannel;Lio/ktor/utils/io/core/ByteReadPacket;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 16
    :goto_0
    return-object v3

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 20
    throw v1

    .line 174
    .local v0, "$i$f$buildPacket":I
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_1
    move-exception v2

    .line 175
    .local v2, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 176
    throw v2
.end method

.method public static final writePacket(Ljava/nio/channels/WritableByteChannel;Lio/ktor/utils/io/core/ByteReadPacket;)Z
    .locals 22
    .param p0, "$this$writePacket"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "p"    # Lio/ktor/utils/io/core/ByteReadPacket;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Buffer\'s position shouldn\'t be rewinded"

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    :goto_0
    nop

    .line 32
    const/4 v4, 0x0

    .line 35
    .local v4, "rc":I
    :try_start_0
    move-object v0, v2

    check-cast v0, Lio/ktor/utils/io/core/Input;

    move-object v5, v0

    .line 177
    .local v5, "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    const/4 v6, 0x1

    .local v6, "n$iv":I
    const/4 v7, 0x0

    .line 178
    .local v7, "$i$f$read":I
    nop

    .line 182
    invoke-virtual {v5, v6}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v8, v0

    .line 183
    .local v8, "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v9, v0

    .line 184
    .local v9, "positionBefore$iv":I
    nop

    .line 185
    :try_start_1
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "node":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 36
    .local v10, "$i$a$-read$default-ChannelsKt$writePacket$1":I
    move-object v11, v0

    .local v11, "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 186
    .local v12, "$i$f$readDirect":I
    nop

    .line 190
    move-object v13, v11

    .local v13, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 191
    .local v14, "$i$f$read":I
    nop

    .line 195
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v17

    .local v15, "memory$iv":Ljava/nio/ByteBuffer;
    move/from16 v18, v16

    .local v18, "start$iv":I
    move/from16 v16, v17

    .local v16, "endExclusive$iv":I
    const/16 v17, 0x0

    .line 196
    .local v17, "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    move-object/from16 v19, v0

    move/from16 v0, v18

    .end local v18    # "start$iv":I
    .local v0, "start$iv":I
    .local v19, "node":Lio/ktor/utils/io/core/Buffer;
    sub-int v2, v16, v0

    invoke-static {v15, v0, v2}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 197
    .local v2, "nioBuffer$iv":Ljava/nio/ByteBuffer;
    move-object/from16 v18, v2

    .local v18, "it":Ljava/nio/ByteBuffer;
    const/16 v20, 0x0

    .line 37
    .local v20, "$i$a$-readDirect-ChannelsKt$writePacket$1$1":I
    move/from16 v21, v4

    move-object/from16 v4, v18

    .end local v18    # "it":Ljava/nio/ByteBuffer;
    .local v4, "it":Ljava/nio/ByteBuffer;
    .local v21, "rc":I
    :try_start_2
    invoke-interface {v1, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .end local v21    # "rc":I
    .local v18, "rc":I
    nop

    .line 197
    .end local v4    # "it":Ljava/nio/ByteBuffer;
    .end local v20    # "$i$a$-readDirect-ChannelsKt$writePacket$1$1":I
    nop

    .line 198
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int v1, v16, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-ne v4, v1, :cond_0

    move/from16 v1, v20

    goto :goto_1

    :cond_0
    move/from16 v1, v21

    :goto_1
    if-eqz v1, :cond_5

    .line 200
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 195
    .end local v0    # "start$iv":I
    .end local v2    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "endExclusive$iv":I
    .end local v17    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    move v0, v1

    .line 201
    .local v0, "rc$iv$iv":I
    invoke-virtual {v13, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    nop

    .line 190
    .end local v0    # "rc$iv$iv":I
    .end local v13    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$read":I
    nop

    .line 39
    .end local v11    # "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$f$readDirect":I
    nop

    .line 185
    .end local v10    # "$i$a$-read$default-ChannelsKt$writePacket$1":I
    .end local v19    # "node":Lio/ktor/utils/io/core/Buffer;
    nop

    .line 203
    :try_start_4
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0

    .line 204
    .local v0, "positionAfter$iv":I
    if-lt v0, v9, :cond_4

    .line 207
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 208
    invoke-virtual {v5, v8}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_2

    .line 210
    :cond_1
    invoke-virtual {v5, v0}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 212
    .end local v0    # "positionAfter$iv":I
    :goto_2
    nop

    .line 213
    nop

    .line 41
    .end local v5    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "n$iv":I
    .end local v7    # "$i$f$read":I
    .end local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "positionBefore$iv":I
    move-object/from16 v0, p1

    .local v0, "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v1, 0x0

    .line 214
    .local v1, "$i$f$isEmpty":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v2

    .line 41
    .end local v0    # "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v1    # "$i$f$isEmpty":I
    if-eqz v2, :cond_2

    return v20

    .line 42
    :cond_2
    if-nez v18, :cond_3

    return v21

    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 205
    .local v0, "positionAfter$iv":I
    .restart local v5    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "n$iv":I
    .restart local v7    # "$i$f$read":I
    .restart local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v9    # "positionBefore$iv":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .end local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 199
    .local v0, "start$iv":I
    .restart local v2    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "$i$a$-read$default-ChannelsKt$writePacket$1":I
    .restart local v11    # "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v12    # "$i$f$readDirect":I
    .restart local v13    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v14    # "$i$f$read":I
    .restart local v15    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v16    # "endExclusive$iv":I
    .restart local v17    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    .restart local v19    # "node":Lio/ktor/utils/io/core/Buffer;
    .restart local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .restart local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    :cond_5
    const/4 v1, 0x0

    .line 198
    .local v1, "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv":I
    :try_start_5
    const-string v4, "Buffer\'s limit change is not allowed"

    .end local v1    # "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "n$iv":I
    .end local v7    # "$i$f$read":I
    .end local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "positionBefore$iv":I
    .end local v18    # "rc":I
    .end local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .end local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 203
    .end local v0    # "start$iv":I
    .end local v2    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "$i$a$-read$default-ChannelsKt$writePacket$1":I
    .end local v11    # "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$f$readDirect":I
    .end local v13    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$read":I
    .end local v15    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "endExclusive$iv":I
    .end local v17    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    .end local v19    # "node":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "n$iv":I
    .restart local v7    # "$i$f$read":I
    .restart local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v9    # "positionBefore$iv":I
    .restart local v18    # "rc":I
    .restart local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .restart local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    :catchall_0
    move-exception v0

    move/from16 v4, v18

    goto :goto_3

    .end local v18    # "rc":I
    .restart local v21    # "rc":I
    :catchall_1
    move-exception v0

    move/from16 v4, v21

    goto :goto_3

    .end local v21    # "rc":I
    .local v4, "rc":I
    :catchall_2
    move-exception v0

    move/from16 v21, v4

    :goto_3
    :try_start_6
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v1

    .line 204
    .local v1, "positionAfter$iv":I
    if-lt v1, v9, :cond_7

    .line 207
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 208
    invoke-virtual {v5, v8}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_4

    .line 210
    :cond_6
    invoke-virtual {v5, v1}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .end local v1    # "positionAfter$iv":I
    :goto_4
    nop

    .end local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .end local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    throw v0

    .line 205
    .restart local v1    # "positionAfter$iv":I
    .restart local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .restart local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .end local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    throw v0

    .line 182
    .end local v1    # "positionAfter$iv":I
    .end local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "positionBefore$iv":I
    .restart local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .restart local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    :cond_8
    move/from16 v21, v4

    .end local v4    # "rc":I
    .restart local v21    # "rc":I
    invoke-static {v6}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .end local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 44
    .end local v5    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "n$iv":I
    .end local v7    # "$i$f$read":I
    .end local v21    # "rc":I
    .restart local p0    # "$this$writePacket":Ljava/nio/channels/WritableByteChannel;
    .restart local p1    # "p":Lio/ktor/utils/io/core/ByteReadPacket;
    :catchall_3
    move-exception v0

    .line 45
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 46
    throw v0
.end method
