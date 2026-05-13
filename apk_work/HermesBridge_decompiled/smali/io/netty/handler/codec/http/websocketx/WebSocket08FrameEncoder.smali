.class public Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "WebSocket08FrameEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
        ">;",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;"
    }
.end annotation


# static fields
.field private static final GATHERING_WRITE_THRESHOLD:I = 0x400

.field private static final OPCODE_BINARY:B = 0x2t

.field private static final OPCODE_CLOSE:B = 0x8t

.field private static final OPCODE_CONT:B = 0x0t

.field private static final OPCODE_PING:B = 0x9t

.field private static final OPCODE_PONG:B = 0xat

.field private static final OPCODE_TEXT:B = 0x1t

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final maskPayload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "maskPayload"    # Z

    .line 101
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 102
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    .line 103
    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V
    .locals 20
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 110
    .local v4, "data":Lio/netty/buffer/ByteBuf;
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    move v5, v0

    .local v0, "opcode":B
    goto :goto_0

    .line 112
    .end local v0    # "opcode":B
    :cond_0
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    if-eqz v0, :cond_1

    .line 113
    const/16 v0, 0x9

    move v5, v0

    .restart local v0    # "opcode":B
    goto :goto_0

    .line 114
    .end local v0    # "opcode":B
    :cond_1
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    if-eqz v0, :cond_2

    .line 115
    const/16 v0, 0xa

    move v5, v0

    .restart local v0    # "opcode":B
    goto :goto_0

    .line 116
    .end local v0    # "opcode":B
    :cond_2
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v0, :cond_3

    .line 117
    const/16 v0, 0x8

    move v5, v0

    .restart local v0    # "opcode":B
    goto :goto_0

    .line 118
    .end local v0    # "opcode":B
    :cond_3
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-eqz v0, :cond_4

    .line 119
    const/4 v0, 0x2

    move v5, v0

    .restart local v0    # "opcode":B
    goto :goto_0

    .line 120
    .end local v0    # "opcode":B
    :cond_4
    instance-of v0, v2, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    if-eqz v0, :cond_1c

    .line 121
    const/4 v0, 0x0

    move v5, v0

    .line 126
    .local v5, "opcode":B
    :goto_0
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    .line 128
    .local v6, "length":I
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Encoding WebSocket Frame opCode={} length={}"

    invoke-interface {v0, v9, v7, v8}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    :cond_5
    const/4 v0, 0x0

    .line 133
    .local v0, "b0":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->isFinalFragment()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 134
    or-int/lit16 v0, v0, 0x80

    .line 136
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv()I

    move-result v7

    rem-int/lit8 v7, v7, 0x8

    const/4 v8, 0x4

    shl-int/2addr v7, v8

    or-int/2addr v0, v7

    .line 137
    rem-int/lit16 v7, v5, 0x80

    or-int/2addr v7, v0

    .line 139
    .end local v0    # "b0":I
    .local v7, "b0":I
    const/16 v0, 0x9

    const/16 v9, 0x7d

    if-ne v5, v0, :cond_8

    if-gt v6, v9, :cond_7

    goto :goto_1

    .line 140
    :cond_7
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid payload for PING (payload length must be <= 125, was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_8
    :goto_1
    const/4 v10, 0x1

    .line 144
    .local v10, "release":Z
    const/4 v11, 0x0

    .line 146
    .local v11, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-boolean v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    :goto_2
    move v0, v8

    .line 147
    .local v0, "maskLength":I
    if-gt v6, v9, :cond_b

    .line 148
    add-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v6

    .line 149
    .local v8, "size":I
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v9

    invoke-interface {v9, v8}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v9

    move-object v11, v9

    .line 150
    invoke-virtual {v11, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 151
    iget-boolean v9, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v9, :cond_a

    int-to-byte v9, v6

    or-int/lit16 v9, v9, 0x80

    goto :goto_3

    :cond_a
    int-to-byte v9, v6

    :goto_3
    int-to-byte v9, v9

    .line 152
    .local v9, "b":B
    invoke-virtual {v11, v9}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 153
    nop

    .end local v8    # "size":I
    .end local v9    # "b":B
    goto :goto_6

    .line 227
    .end local v0    # "maskLength":I
    :catchall_0
    move-exception v0

    move/from16 v18, v5

    move/from16 v19, v6

    goto/16 :goto_b

    .line 153
    .restart local v0    # "maskLength":I
    :cond_b
    const v8, 0xffff

    const/16 v9, 0xff

    if-gt v6, v8, :cond_f

    .line 154
    add-int/lit8 v8, v0, 0x4

    .line 155
    .restart local v8    # "size":I
    iget-boolean v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-nez v12, :cond_c

    const/16 v12, 0x400

    if-gt v6, v12, :cond_d

    .line 156
    :cond_c
    add-int/2addr v8, v6

    .line 158
    :cond_d
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v12

    invoke-interface {v12, v8}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v12

    move-object v11, v12

    .line 159
    invoke-virtual {v11, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 160
    iget-boolean v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v12, :cond_e

    const/16 v12, 0xfe

    goto :goto_4

    :cond_e
    const/16 v12, 0x7e

    :goto_4
    invoke-virtual {v11, v12}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 161
    ushr-int/lit8 v12, v6, 0x8

    and-int/2addr v9, v12

    invoke-virtual {v11, v9}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 162
    and-int/lit16 v9, v6, 0xff

    invoke-virtual {v11, v9}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    nop

    .end local v8    # "size":I
    goto :goto_6

    .line 164
    :cond_f
    add-int/lit8 v8, v0, 0xa

    .line 165
    .restart local v8    # "size":I
    :try_start_2
    iget-boolean v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v12, :cond_10

    .line 166
    add-int/2addr v8, v6

    .line 168
    :cond_10
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v12

    invoke-interface {v12, v8}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v12

    move-object v11, v12

    .line 169
    invoke-virtual {v11, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 170
    iget-boolean v12, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v12, :cond_11

    goto :goto_5

    :cond_11
    const/16 v9, 0x7f

    :goto_5
    invoke-virtual {v11, v9}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 171
    int-to-long v12, v6

    invoke-virtual {v11, v12, v13}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 175
    .end local v8    # "size":I
    :goto_6
    iget-boolean v8, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v8, :cond_18

    .line 176
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v8

    const v9, 0x7fffffff

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 177
    .local v8, "mask":I
    invoke-virtual {v11, v8}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 179
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 181
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    .line 182
    .local v9, "srcOrder":Ljava/nio/ByteOrder;
    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v12

    .line 184
    .local v12, "dstOrder":Ljava/nio/ByteOrder;
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v13

    .line 185
    .local v13, "i":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v14

    .line 187
    .local v14, "end":I
    if-ne v9, v12, :cond_14

    .line 190
    move v15, v0

    .end local v0    # "maskLength":I
    .local v15, "maskLength":I
    int-to-long v0, v8

    const-wide v16, 0xffffffffL

    and-long v0, v0, v16

    .line 191
    .local v0, "longMask":J
    const/16 v16, 0x20

    shl-long v16, v0, v16

    or-long v0, v0, v16

    .line 195
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v9, v2, :cond_12

    .line 196
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v0, v16

    .line 199
    :cond_12
    add-int/lit8 v2, v14, -0x7

    .local v2, "lim":I
    :goto_7
    if-ge v13, v2, :cond_13

    .line 200
    :try_start_4
    invoke-virtual {v4, v13}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "opcode":B
    .end local v6    # "length":I
    .local v18, "opcode":B
    .local v19, "length":I
    xor-long v5, v16, v0

    :try_start_5
    invoke-virtual {v11, v5, v6}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 199
    add-int/lit8 v13, v13, 0x8

    move/from16 v5, v18

    move/from16 v6, v19

    goto :goto_7

    .end local v18    # "opcode":B
    .end local v19    # "length":I
    .restart local v5    # "opcode":B
    .restart local v6    # "length":I
    :cond_13
    move/from16 v18, v5

    move/from16 v19, v6

    .line 203
    .end local v2    # "lim":I
    .end local v5    # "opcode":B
    .end local v6    # "length":I
    .restart local v18    # "opcode":B
    .restart local v19    # "length":I
    add-int/lit8 v2, v14, -0x3

    if-ge v13, v2, :cond_15

    .line 204
    invoke-virtual {v4, v13}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v2

    long-to-int v5, v0

    xor-int/2addr v2, v5

    invoke-virtual {v11, v2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 205
    add-int/lit8 v13, v13, 0x4

    goto :goto_8

    .line 187
    .end local v15    # "maskLength":I
    .end local v18    # "opcode":B
    .end local v19    # "length":I
    .local v0, "maskLength":I
    .restart local v5    # "opcode":B
    .restart local v6    # "length":I
    :cond_14
    move v15, v0

    move/from16 v18, v5

    move/from16 v19, v6

    .line 208
    .end local v0    # "maskLength":I
    .end local v5    # "opcode":B
    .end local v6    # "length":I
    .restart local v15    # "maskLength":I
    .restart local v18    # "opcode":B
    .restart local v19    # "length":I
    :cond_15
    :goto_8
    const/4 v0, 0x0

    .line 209
    .local v0, "maskOffset":I
    :goto_9
    if-ge v13, v14, :cond_17

    .line 210
    invoke-virtual {v4, v13}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    .line 211
    .local v1, "byteData":B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "maskOffset":I
    .local v2, "maskOffset":I
    and-int/lit8 v0, v0, 0x3

    invoke-static {v8, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->byteAtIndex(II)I

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {v11, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 209
    nop

    .end local v1    # "byteData":B
    add-int/lit8 v13, v13, 0x1

    move v0, v2

    goto :goto_9

    .line 179
    .end local v2    # "maskOffset":I
    .end local v9    # "srcOrder":Ljava/nio/ByteOrder;
    .end local v12    # "dstOrder":Ljava/nio/ByteOrder;
    .end local v13    # "i":I
    .end local v14    # "end":I
    .end local v15    # "maskLength":I
    .end local v18    # "opcode":B
    .end local v19    # "length":I
    .local v0, "maskLength":I
    .restart local v5    # "opcode":B
    .restart local v6    # "length":I
    :cond_16
    move v15, v0

    move/from16 v18, v5

    move/from16 v19, v6

    .line 214
    .end local v0    # "maskLength":I
    .end local v5    # "opcode":B
    .end local v6    # "length":I
    .restart local v15    # "maskLength":I
    .restart local v18    # "opcode":B
    .restart local v19    # "length":I
    :cond_17
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    nop

    .end local v8    # "mask":I
    goto :goto_a

    .line 216
    .end local v15    # "maskLength":I
    .end local v18    # "opcode":B
    .end local v19    # "length":I
    .restart local v0    # "maskLength":I
    .restart local v5    # "opcode":B
    .restart local v6    # "length":I
    :cond_18
    move v15, v0

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v0    # "maskLength":I
    .end local v5    # "opcode":B
    .end local v6    # "length":I
    .restart local v15    # "maskLength":I
    .restart local v18    # "opcode":B
    .restart local v19    # "length":I
    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-lt v0, v1, :cond_19

    .line 218
    invoke-virtual {v11, v4}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 219
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 221
    :cond_19
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 225
    :goto_a
    const/4 v0, 0x0

    .line 227
    .end local v10    # "release":Z
    .end local v15    # "maskLength":I
    .local v0, "release":Z
    if-eqz v0, :cond_1a

    if-eqz v11, :cond_1a

    .line 228
    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 231
    :cond_1a
    return-void

    .line 227
    .end local v0    # "release":Z
    .restart local v10    # "release":Z
    :catchall_1
    move-exception v0

    goto :goto_b

    .end local v18    # "opcode":B
    .end local v19    # "length":I
    .restart local v5    # "opcode":B
    .restart local v6    # "length":I
    :catchall_2
    move-exception v0

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "opcode":B
    .end local v6    # "length":I
    .restart local v18    # "opcode":B
    .restart local v19    # "length":I
    :goto_b
    if-eqz v10, :cond_1b

    if-eqz v11, :cond_1b

    .line 228
    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 230
    :cond_1b
    throw v0

    .line 123
    .end local v7    # "b0":I
    .end local v10    # "release":Z
    .end local v11    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v18    # "opcode":B
    .end local v19    # "length":I
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot encode frame of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    check-cast p2, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V

    return-void
.end method
