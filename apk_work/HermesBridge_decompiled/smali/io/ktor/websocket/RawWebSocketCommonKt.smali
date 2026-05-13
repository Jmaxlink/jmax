.class public final Lio/ktor/websocket/RawWebSocketCommonKt;
.super Ljava/lang/Object;
.source "RawWebSocketCommon.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRawWebSocketCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RawWebSocketCommon.kt\nio/ktor/websocket/RawWebSocketCommonKt\n+ 2 MemoryFactory.kt\nio/ktor/utils/io/bits/MemoryFactoryKt\n+ 3 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n+ 4 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 5 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 6 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 7 Utils.kt\nio/ktor/websocket/UtilsKt__UtilsKt\n+ 8 ByteReadPacket.kt\nio/ktor/utils/io/core/ByteReadPacketKt\n+ 9 ByteReadPacketExtensions.kt\nio/ktor/utils/io/core/ByteReadPacketExtensionsKt\n*L\n1#1,264:1\n33#2,5:265\n48#2,8:270\n57#2,2:293\n51#3,2:278\n12#4,7:280\n19#4,4:289\n84#5:287\n26#6:288\n14#7:295\n14#7:296\n14#7:297\n14#7:298\n14#7:299\n59#8,2:300\n15#9:302\n*S KotlinDebug\n*F\n+ 1 RawWebSocketCommon.kt\nio/ktor/websocket/RawWebSocketCommonKt\n*L\n151#1:265,5\n151#1:270,8\n151#1:293,2\n152#1:278,2\n153#1:280,7\n153#1:289,4\n155#1:287\n155#1:288\n168#1:295\n169#1:296\n170#1:297\n171#1:298\n182#1:299\n191#1:300,2\n191#1:302\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a%\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0003H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a%\u0010\u000b\u001a\u00020\u000c*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "mask",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "maskKey",
        "",
        "readFrame",
        "Lio/ktor/websocket/Frame;",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "maxFrameSize",
        "",
        "lastOpcode",
        "(Lio/ktor/utils/io/ByteReadChannel;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeFrame",
        "",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "frame",
        "masking",
        "",
        "(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/websocket/Frame;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method private static final mask(Lio/ktor/utils/io/core/ByteReadPacket;I)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 24
    .param p0, "$this$mask"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p1, "maskKey"    # I

    .line 151
    const/4 v1, 0x4

    .local v1, "size$iv":I
    const/4 v2, 0x0

    .line 265
    .local v2, "$i$f$withMemory":I
    nop

    .line 269
    int-to-long v3, v1

    .local v3, "size$iv$iv":J
    const/4 v5, 0x0

    .line 270
    .local v5, "$i$f$withMemory":I
    nop

    .line 274
    sget-object v6, Lio/ktor/utils/io/bits/DefaultAllocator;->INSTANCE:Lio/ktor/utils/io/bits/DefaultAllocator;

    .line 275
    .local v6, "allocator$iv$iv":Lio/ktor/utils/io/bits/DefaultAllocator;
    invoke-virtual {v6, v3, v4}, Lio/ktor/utils/io/bits/DefaultAllocator;->alloc-gFv-Zug(J)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 276
    .local v7, "memory$iv$iv":Ljava/nio/ByteBuffer;
    nop

    .line 277
    move-object v8, v7

    .local v8, "maskMemory":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 152
    .local v9, "$i$a$-withMemory-RawWebSocketCommonKt$mask$1":I
    const/4 v0, 0x0

    .local v0, "offset$iv":I
    move-object v10, v8

    .local v10, "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .line 278
    .local v11, "$i$f$storeIntAt-62zg_DM":I
    move/from16 v12, p1

    :try_start_0
    invoke-virtual {v10, v0, v12}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 279
    nop

    .line 153
    .end local v0    # "offset$iv":I
    .end local v10    # "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "$i$f$storeIntAt-62zg_DM":I
    const/4 v10, 0x0

    .line 280
    .local v10, "$i$f$buildPacket":I
    nop

    .line 284
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-direct {v0, v13, v11, v13}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v11, v0

    .line 285
    .local v11, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 286
    move-object v0, v11

    .local v0, "$this$mask_u24lambda_u242_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v13, 0x0

    .line 154
    .local v13, "$i$a$-buildPacket-RawWebSocketCommonKt$mask$1$1":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v14

    long-to-int v14, v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_0

    move/from16 v16, v15

    .local v16, "i":I
    const/16 v17, 0x0

    .line 155
    .local v17, "$i$a$-repeat-RawWebSocketCommonKt$mask$1$1$1":I
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/ByteReadPacket;->readByte()B

    move-result v18

    rem-int/lit8 v19, v16, 0x4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v19, "index$iv":I
    move-object/from16 v20, v8

    .local v20, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    move/from16 v21, v19

    .end local v19    # "index$iv":I
    .local v21, "index$iv":I
    const/16 v19, 0x0

    .line 287
    .local v19, "$i$f$get-eY85DW0":I
    const/16 v22, 0x0

    .line 288
    .local v22, "$i$f$loadAt-impl":I
    move/from16 v23, v1

    move-object/from16 v1, v20

    move/from16 v20, v2

    move/from16 v2, v21

    .end local v21    # "index$iv":I
    .local v1, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .local v2, "index$iv":I
    .local v20, "$i$f$withMemory":I
    .local v23, "size$iv":I
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v21

    .line 287
    .end local v22    # "$i$f$loadAt-impl":I
    nop

    .line 155
    .end local v1    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "index$iv":I
    .end local v19    # "$i$f$get-eY85DW0":I
    xor-int v1, v18, v21

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 156
    nop

    .line 154
    .end local v16    # "i":I
    .end local v17    # "$i$a$-repeat-RawWebSocketCommonKt$mask$1$1$1":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v20

    move/from16 v1, v23

    goto :goto_0

    .line 157
    .end local v20    # "$i$f$withMemory":I
    .end local v23    # "size$iv":I
    .local v1, "size$iv":I
    .local v2, "$i$f$withMemory":I
    :cond_0
    move/from16 v23, v1

    move/from16 v20, v2

    .line 286
    .end local v0    # "$this$mask_u24lambda_u242_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v1    # "size$iv":I
    .end local v2    # "$i$f$withMemory":I
    .end local v13    # "$i$a$-buildPacket-RawWebSocketCommonKt$mask$1$1":I
    .restart local v20    # "$i$f$withMemory":I
    .restart local v23    # "size$iv":I
    nop

    .line 289
    invoke-virtual {v11}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .end local v10    # "$i$f$buildPacket":I
    .end local v11    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 277
    .end local v8    # "maskMemory":Ljava/nio/ByteBuffer;
    .end local v9    # "$i$a$-withMemory-RawWebSocketCommonKt$mask$1":I
    nop

    .line 293
    invoke-virtual {v6, v7}, Lio/ktor/utils/io/bits/DefaultAllocator;->free-3GNKZMM(Ljava/nio/ByteBuffer;)V

    .line 294
    nop

    .line 276
    nop

    .line 269
    .end local v3    # "size$iv$iv":J
    .end local v5    # "$i$f$withMemory":I
    .end local v6    # "allocator$iv$iv":Lio/ktor/utils/io/bits/DefaultAllocator;
    .end local v7    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    nop

    .line 158
    .end local v20    # "$i$f$withMemory":I
    .end local v23    # "size$iv":I
    return-object v0

    .line 290
    .restart local v3    # "size$iv$iv":J
    .restart local v5    # "$i$f$withMemory":I
    .restart local v6    # "allocator$iv$iv":Lio/ktor/utils/io/bits/DefaultAllocator;
    .restart local v7    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "maskMemory":Ljava/nio/ByteBuffer;
    .restart local v9    # "$i$a$-withMemory-RawWebSocketCommonKt$mask$1":I
    .restart local v10    # "$i$f$buildPacket":I
    .restart local v11    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v20    # "$i$f$withMemory":I
    .restart local v23    # "size$iv":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v20    # "$i$f$withMemory":I
    .end local v23    # "size$iv":I
    .restart local v1    # "size$iv":I
    .restart local v2    # "$i$f$withMemory":I
    :catchall_1
    move-exception v0

    move/from16 v23, v1

    move/from16 v20, v2

    .line 291
    .end local v1    # "size$iv":I
    .end local v2    # "$i$f$withMemory":I
    .local v0, "t$iv":Ljava/lang/Throwable;
    .restart local v20    # "$i$f$withMemory":I
    .restart local v23    # "size$iv":I
    :goto_1
    :try_start_3
    invoke-virtual {v11}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 292
    nop

    .end local v3    # "size$iv$iv":J
    .end local v5    # "$i$f$withMemory":I
    .end local v6    # "allocator$iv$iv":Lio/ktor/utils/io/bits/DefaultAllocator;
    .end local v7    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .end local v20    # "$i$f$withMemory":I
    .end local v23    # "size$iv":I
    .end local p0    # "$this$mask":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local p1    # "maskKey":I
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 293
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    .end local v8    # "maskMemory":Ljava/nio/ByteBuffer;
    .end local v9    # "$i$a$-withMemory-RawWebSocketCommonKt$mask$1":I
    .end local v10    # "$i$f$buildPacket":I
    .end local v11    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v3    # "size$iv$iv":J
    .restart local v5    # "$i$f$withMemory":I
    .restart local v6    # "allocator$iv$iv":Lio/ktor/utils/io/bits/DefaultAllocator;
    .restart local v7    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v20    # "$i$f$withMemory":I
    .restart local v23    # "size$iv":I
    .restart local p0    # "$this$mask":Lio/ktor/utils/io/core/ByteReadPacket;
    .restart local p1    # "maskKey":I
    :catchall_2
    move-exception v0

    goto :goto_2

    .end local v20    # "$i$f$withMemory":I
    .end local v23    # "size$iv":I
    .restart local v1    # "size$iv":I
    .restart local v2    # "$i$f$withMemory":I
    :catchall_3
    move-exception v0

    move/from16 v23, v1

    move/from16 v20, v2

    .end local v1    # "size$iv":I
    .end local v2    # "$i$f$withMemory":I
    .restart local v20    # "$i$f$withMemory":I
    .restart local v23    # "size$iv":I
    :goto_2
    invoke-virtual {v6, v7}, Lio/ktor/utils/io/bits/DefaultAllocator;->free-3GNKZMM(Ljava/nio/ByteBuffer;)V

    throw v0
.end method

.method public static final readFrame(Lio/ktor/utils/io/ByteReadChannel;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "JI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/Frame;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;

    iget v2, v1, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;

    invoke-direct {v1, v0}, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 211
    iget v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    const/4 v4, 0x0

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$1:I

    .local v2, "maskKey":I
    iget v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    .local v3, "fin":Z
    iget-byte v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    .local v8, "flagsAndOpcode":I
    iget-object v9, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/websocket/FrameType;

    .local v9, "frameType":Lio/ktor/websocket/FrameType;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    move-object/from16 v18, v9

    goto/16 :goto_f

    .end local v2    # "maskKey":I
    .end local v3    # "fin":Z
    .end local v8    # "flagsAndOpcode":I
    .end local v9    # "frameType":Lio/ktor/websocket/FrameType;
    :pswitch_1
    iget-wide v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$1:J

    .local v8, "length":J
    iget v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    .restart local v3    # "fin":Z
    iget-byte v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    .local v10, "flagsAndOpcode":I
    iget-wide v11, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    .local v11, "maxFrameSize":J
    iget-object v13, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/ktor/websocket/FrameType;

    .local v13, "frameType":Lio/ktor/websocket/FrameType;
    iget-object v14, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/ByteReadChannel;

    .local v14, "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v5, v8

    move v8, v3

    move-object v3, v1

    goto/16 :goto_d

    .end local v3    # "fin":Z
    .end local v8    # "length":J
    .end local v10    # "flagsAndOpcode":I
    .end local v11    # "maxFrameSize":J
    .end local v13    # "frameType":Lio/ktor/websocket/FrameType;
    .end local v14    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_2
    iget v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    .restart local v3    # "fin":Z
    iget-byte v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$1:B

    .local v8, "maskAndLength":I
    iget-byte v9, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    .local v9, "flagsAndOpcode":I
    iget-wide v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    .local v10, "maxFrameSize":J
    iget-object v12, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/websocket/FrameType;

    .local v12, "frameType":Lio/ktor/websocket/FrameType;
    iget-object v13, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteReadChannel;

    .local v13, "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v12

    move-object v12, v1

    goto/16 :goto_8

    .end local v3    # "fin":Z
    .end local v8    # "maskAndLength":I
    .end local v9    # "flagsAndOpcode":I
    .end local v10    # "maxFrameSize":J
    .end local v12    # "frameType":Lio/ktor/websocket/FrameType;
    .end local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_3
    iget v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    .restart local v3    # "fin":Z
    iget-byte v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$1:B

    .restart local v8    # "maskAndLength":I
    iget-byte v9, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    .restart local v9    # "flagsAndOpcode":I
    iget-wide v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    .restart local v10    # "maxFrameSize":J
    iget-object v12, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/websocket/FrameType;

    .restart local v12    # "frameType":Lio/ktor/websocket/FrameType;
    iget-object v13, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteReadChannel;

    .restart local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v12

    move-object v12, v1

    goto/16 :goto_9

    .end local v3    # "fin":Z
    .end local v8    # "maskAndLength":I
    .end local v9    # "flagsAndOpcode":I
    .end local v10    # "maxFrameSize":J
    .end local v12    # "frameType":Lio/ktor/websocket/FrameType;
    .end local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_4
    iget-byte v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    .local v3, "flagsAndOpcode":I
    iget v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    .local v8, "lastOpcode":I
    iget-wide v9, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    .local v9, "maxFrameSize":J
    iget-object v11, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteReadChannel;

    .local v11, "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v1

    move-object v13, v11

    move-wide v10, v9

    move v9, v3

    goto :goto_2

    .end local v3    # "flagsAndOpcode":I
    .end local v8    # "lastOpcode":I
    .end local v9    # "maxFrameSize":J
    .end local v11    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_5
    iget v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    .local v3, "lastOpcode":I
    iget-wide v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    .local v8, "maxFrameSize":J
    iget-object v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteReadChannel;

    .local v10, "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v1

    goto :goto_1

    .end local v3    # "lastOpcode":I
    .end local v8    # "maxFrameSize":J
    .end local v10    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p0

    .restart local v10    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    move-wide/from16 v8, p1

    .restart local v8    # "maxFrameSize":J
    move/from16 v3, p3

    .line 212
    .restart local v3    # "lastOpcode":I
    iput-object v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    iput-wide v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    iput v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    iput v7, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    invoke-interface {v10, v0}, Lio/ktor/utils/io/ByteReadChannel;->readByte(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v2, :cond_1

    .line 211
    return-object v2

    .line 212
    :cond_1
    :goto_1
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->byteValue()B

    move-result v11

    .line 213
    .local v11, "flagsAndOpcode":I
    iput-object v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    iput-wide v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    iput v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    iput-byte v11, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    const/4 v12, 0x2

    iput v12, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    invoke-interface {v10, v0}, Lio/ktor/utils/io/ByteReadChannel;->readByte(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_2

    .line 211
    return-object v2

    .line 213
    :cond_2
    move-object v13, v10

    move-wide/from16 v23, v8

    move v8, v3

    move v9, v11

    move-wide/from16 v10, v23

    .end local v3    # "lastOpcode":I
    .end local v11    # "flagsAndOpcode":I
    .local v8, "lastOpcode":I
    .local v9, "flagsAndOpcode":I
    .local v10, "maxFrameSize":J
    .restart local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :goto_2
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->byteValue()B

    move-result v3

    .line 215
    .local v3, "maskAndLength":I
    and-int/lit8 v12, v9, 0xf

    .line 216
    .local v12, "rawOpcode":I
    if-nez v12, :cond_4

    if-eqz v8, :cond_3

    goto :goto_3

    .line 217
    .end local v3    # "maskAndLength":I
    .end local v8    # "lastOpcode":I
    .end local v9    # "flagsAndOpcode":I
    .end local v10    # "maxFrameSize":J
    .end local v12    # "rawOpcode":I
    .end local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :cond_3
    new-instance v2, Lio/ktor/websocket/ProtocolViolationException;

    const-string v3, "Can\'t continue finished frames"

    invoke-direct {v2, v3}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .restart local v3    # "maskAndLength":I
    .restart local v8    # "lastOpcode":I
    .restart local v9    # "flagsAndOpcode":I
    .restart local v10    # "maxFrameSize":J
    .restart local v12    # "rawOpcode":I
    .restart local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :cond_4
    :goto_3
    if-nez v12, :cond_5

    move v14, v8

    goto :goto_4

    :cond_5
    move v14, v12

    .line 220
    .local v14, "opcode":I
    :goto_4
    sget-object v15, Lio/ktor/websocket/FrameType;->Companion:Lio/ktor/websocket/FrameType$Companion;

    invoke-virtual {v15, v14}, Lio/ktor/websocket/FrameType$Companion;->get(I)Lio/ktor/websocket/FrameType;

    move-result-object v15

    if-eqz v15, :cond_1a

    .end local v14    # "opcode":I
    move-object v14, v15

    .line 221
    .local v14, "frameType":Lio/ktor/websocket/FrameType;
    if-eqz v12, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v14}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_5

    .line 223
    .end local v3    # "maskAndLength":I
    .end local v8    # "lastOpcode":I
    .end local v9    # "flagsAndOpcode":I
    .end local v10    # "maxFrameSize":J
    .end local v12    # "rawOpcode":I
    .end local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    .end local v14    # "frameType":Lio/ktor/websocket/FrameType;
    :cond_6
    new-instance v2, Lio/ktor/websocket/ProtocolViolationException;

    const-string v3, "Can\'t start new data frame before finishing previous one"

    invoke-direct {v2, v3}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    .restart local v3    # "maskAndLength":I
    .restart local v9    # "flagsAndOpcode":I
    .restart local v10    # "maxFrameSize":J
    .restart local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v14    # "frameType":Lio/ktor/websocket/FrameType;
    :cond_7
    :goto_5
    and-int/lit16 v8, v9, 0x80

    if-eqz v8, :cond_8

    move v8, v7

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    .line 227
    .local v8, "fin":Z
    :goto_6
    invoke-virtual {v14}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v12

    if-eqz v12, :cond_a

    if-eqz v8, :cond_9

    goto :goto_7

    .line 228
    .end local v3    # "maskAndLength":I
    .end local v8    # "fin":Z
    .end local v9    # "flagsAndOpcode":I
    .end local v10    # "maxFrameSize":J
    .end local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    .end local v14    # "frameType":Lio/ktor/websocket/FrameType;
    :cond_9
    new-instance v2, Lio/ktor/websocket/ProtocolViolationException;

    const-string v3, "control frames can\'t be fragmented"

    invoke-direct {v2, v3}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    .restart local v3    # "maskAndLength":I
    .restart local v8    # "fin":Z
    .restart local v9    # "flagsAndOpcode":I
    .restart local v10    # "maxFrameSize":J
    .restart local v13    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v14    # "frameType":Lio/ktor/websocket/FrameType;
    :cond_a
    :goto_7
    and-int/lit8 v12, v3, 0x7f

    .local v12, "length":I
    packed-switch v12, :pswitch_data_1

    .line 234
    int-to-long v5, v12

    move-wide v11, v10

    move v10, v9

    move-object/from16 v23, v14

    move-object v14, v13

    move-object/from16 v13, v23

    goto/16 :goto_a

    .line 233
    .end local v12    # "length":I
    :pswitch_7
    iput-object v13, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$1:Ljava/lang/Object;

    iput-wide v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    iput-byte v9, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    iput-byte v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$1:B

    iput v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    const/4 v12, 0x4

    iput v12, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    invoke-interface {v13, v0}, Lio/ktor/utils/io/ByteReadChannel;->readLong(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_b

    .line 211
    return-object v2

    .line 233
    :cond_b
    move/from16 v23, v8

    move v8, v3

    move/from16 v3, v23

    .local v3, "fin":Z
    .local v8, "maskAndLength":I
    :goto_8
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    move-wide v11, v10

    move-wide v5, v15

    move v10, v9

    move/from16 v23, v8

    move v8, v3

    move/from16 v3, v23

    move-object/from16 v24, v14

    move-object v14, v13

    move-object/from16 v13, v24

    goto :goto_a

    .line 232
    .local v3, "maskAndLength":I
    .local v8, "fin":Z
    :pswitch_8
    iput-object v13, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$1:Ljava/lang/Object;

    iput-wide v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    iput-byte v9, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    iput-byte v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$1:B

    iput v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    const/4 v12, 0x3

    iput v12, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    invoke-interface {v13, v0}, Lio/ktor/utils/io/ByteReadChannel;->readShort(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_c

    .line 211
    return-object v2

    .line 232
    :cond_c
    move/from16 v23, v8

    move v8, v3

    move/from16 v3, v23

    .local v3, "fin":Z
    .local v8, "maskAndLength":I
    :goto_9
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->shortValue()S

    move-result v12

    int-to-long v5, v12

    const-wide/32 v16, 0xffff

    and-long v5, v5, v16

    move-wide v11, v10

    move v10, v9

    move/from16 v23, v8

    move v8, v3

    move/from16 v3, v23

    move-object/from16 v24, v14

    move-object v14, v13

    move-object/from16 v13, v24

    .line 231
    .end local v9    # "flagsAndOpcode":I
    .local v3, "maskAndLength":I
    .local v8, "fin":Z
    .local v10, "flagsAndOpcode":I
    .local v11, "maxFrameSize":J
    .local v13, "frameType":Lio/ktor/websocket/FrameType;
    .local v14, "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :goto_a
    nop

    .line 236
    .local v5, "length":J
    invoke-virtual {v13}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v9

    if-eqz v9, :cond_e

    const-wide/16 v16, 0x7d

    cmp-long v9, v5, v16

    if-gtz v9, :cond_d

    goto :goto_b

    .line 237
    .end local v3    # "maskAndLength":I
    .end local v5    # "length":J
    .end local v8    # "fin":Z
    .end local v10    # "flagsAndOpcode":I
    .end local v11    # "maxFrameSize":J
    .end local v13    # "frameType":Lio/ktor/websocket/FrameType;
    .end local v14    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :cond_d
    new-instance v2, Lio/ktor/websocket/ProtocolViolationException;

    const-string v3, "control frames can\'t be larger than 125 bytes"

    invoke-direct {v2, v3}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .restart local v3    # "maskAndLength":I
    .restart local v5    # "length":J
    .restart local v8    # "fin":Z
    .restart local v10    # "flagsAndOpcode":I
    .restart local v11    # "maxFrameSize":J
    .restart local v13    # "frameType":Lio/ktor/websocket/FrameType;
    .restart local v14    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    :cond_e
    :goto_b
    and-int/lit16 v9, v3, 0x80

    if-eqz v9, :cond_f

    move v3, v7

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    .line 241
    .end local v3    # "maskAndLength":I
    :goto_c
    if-ne v3, v7, :cond_11

    iput-object v14, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$1:Ljava/lang/Object;

    iput-wide v11, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$0:J

    iput-byte v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    iput v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    iput-wide v5, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->J$1:J

    const/4 v3, 0x5

    iput v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    invoke-interface {v14, v0}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_10

    .line 211
    return-object v2

    .line 241
    :cond_10
    :goto_d
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object v9, v13

    goto :goto_e

    .line 242
    :cond_11
    if-nez v3, :cond_19

    move-object v9, v13

    const/4 v3, -0x1

    .line 240
    .end local v13    # "frameType":Lio/ktor/websocket/FrameType;
    .local v9, "frameType":Lio/ktor/websocket/FrameType;
    :goto_e
    nop

    .line 245
    .local v3, "maskKey":I
    const-wide/32 v16, 0x7fffffff

    cmp-long v13, v5, v16

    if-gtz v13, :cond_18

    cmp-long v13, v5, v11

    if-gtz v13, :cond_18

    .line 249
    .end local v11    # "maxFrameSize":J
    long-to-int v11, v5

    iput-object v9, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->L$1:Ljava/lang/Object;

    iput-byte v10, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->B$0:B

    iput v8, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$0:I

    iput v3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->I$1:I

    const/4 v12, 0x6

    iput v12, v0, Lio/ktor/websocket/RawWebSocketCommonKt$readFrame$1;->label:I

    invoke-interface {v14, v11, v0}, Lio/ktor/utils/io/ByteReadChannel;->readPacket(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "length":J
    .end local v14    # "$this$readFrame":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v5, v2, :cond_12

    .line 211
    return-object v2

    .line 249
    :cond_12
    move v2, v3

    move v3, v8

    move-object/from16 v18, v9

    move v8, v10

    .line 211
    .end local v9    # "frameType":Lio/ktor/websocket/FrameType;
    .end local v10    # "flagsAndOpcode":I
    .restart local v2    # "maskKey":I
    .local v3, "fin":Z
    .local v8, "flagsAndOpcode":I
    .local v18, "frameType":Lio/ktor/websocket/FrameType;
    :goto_f
    check-cast v5, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 250
    .local v5, "data":Lio/ktor/utils/io/core/ByteReadPacket;
    nop

    .line 251
    const/4 v6, -0x1

    if-ne v2, v6, :cond_13

    goto :goto_10

    .line 252
    :cond_13
    invoke-static {v5, v2}, Lio/ktor/websocket/RawWebSocketCommonKt;->mask(Lio/ktor/utils/io/core/ByteReadPacket;I)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v6

    move-object v5, v6

    .line 250
    .end local v2    # "maskKey":I
    .end local v5    # "data":Lio/ktor/utils/io/core/ByteReadPacket;
    :goto_10
    move-object v2, v5

    .line 255
    .local v2, "maskedData":Lio/ktor/utils/io/core/ByteReadPacket;
    sget-object v16, Lio/ktor/websocket/Frame;->Companion:Lio/ktor/websocket/Frame$Companion;

    .line 256
    if-eqz v3, :cond_14

    move/from16 v17, v7

    goto :goto_11

    :cond_14
    const/16 v17, 0x0

    .line 257
    .end local v3    # "fin":Z
    :goto_11
    nop

    .line 258
    .end local v18    # "frameType":Lio/ktor/websocket/FrameType;
    const/4 v3, 0x0

    invoke-static {v2, v3, v7, v4}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v19

    .line 259
    .end local v2    # "maskedData":Lio/ktor/utils/io/core/ByteReadPacket;
    and-int/lit8 v2, v8, 0x40

    if-eqz v2, :cond_15

    move/from16 v20, v7

    goto :goto_12

    :cond_15
    move/from16 v20, v3

    .line 260
    :goto_12
    and-int/lit8 v2, v8, 0x20

    if-eqz v2, :cond_16

    move/from16 v21, v7

    goto :goto_13

    :cond_16
    move/from16 v21, v3

    .line 261
    :goto_13
    and-int/lit8 v2, v8, 0x10

    if-eqz v2, :cond_17

    move/from16 v22, v7

    goto :goto_14

    :cond_17
    move/from16 v22, v3

    .line 255
    .end local v8    # "flagsAndOpcode":I
    :goto_14
    invoke-virtual/range {v16 .. v22}, Lio/ktor/websocket/Frame$Companion;->byType(ZLio/ktor/websocket/FrameType;[BZZZ)Lio/ktor/websocket/Frame;

    move-result-object v2

    return-object v2

    .line 246
    .local v5, "length":J
    :cond_18
    new-instance v2, Lio/ktor/websocket/FrameTooBigException;

    invoke-direct {v2, v5, v6}, Lio/ktor/websocket/FrameTooBigException;-><init>(J)V

    throw v2

    .line 242
    .end local v5    # "length":J
    :cond_19
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .line 220
    .local v14, "opcode":I
    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported opcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static final writeFrame(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/websocket/Frame;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/websocket/Frame;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    instance-of v0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;

    iget v1, v0, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;

    invoke-direct {v0, p3}, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 165
    iget v2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_1
    iget p0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->I$0:I

    .local p0, "maskKey":I
    iget-object p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/ByteReadPacket;

    .local p1, "data":Lio/ktor/utils/io/core/ByteReadPacket;
    iget-object p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteWriteChannel;

    .local p2, "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    .end local p0    # "maskKey":I
    .end local p1    # "data":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local p2    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_2
    iget-boolean p0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->Z$0:Z

    .local p0, "masking":Z
    iget-object p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/websocket/Frame;

    .local p1, "frame":Lio/ktor/websocket/Frame;
    iget-object p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local p2    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    .end local p0    # "masking":Z
    .end local p1    # "frame":Lio/ktor/websocket/Frame;
    .end local p2    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_3
    iget-boolean p0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->Z$0:Z

    .restart local p0    # "masking":Z
    iget-object p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/websocket/Frame;

    .restart local p1    # "frame":Lio/ktor/websocket/Frame;
    iget-object p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local p2    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    .end local p0    # "masking":Z
    .end local p1    # "frame":Lio/ktor/websocket/Frame;
    .end local p2    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_4
    iget p0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->I$1:I

    .local p0, "formattedLength":I
    iget p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->I$0:I

    .local p1, "length":I
    iget-boolean p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->Z$0:Z

    .local p2, "masking":Z
    iget-object v2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/websocket/Frame;

    .local v2, "frame":Lio/ktor/websocket/Frame;
    iget-object v3, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    .local v3, "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .end local v2    # "frame":Lio/ktor/websocket/Frame;
    .end local v3    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "formattedLength":I
    .end local p1    # "length":I
    .end local p2    # "masking":Z
    :pswitch_5
    iget p0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->I$0:I

    .local p0, "length":I
    iget-boolean p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->Z$0:Z

    .local p1, "masking":Z
    iget-object p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/websocket/Frame;

    .local p2, "frame":Lio/ktor/websocket/Frame;
    iget-object v2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteWriteChannel;

    .local v2, "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v10, p1

    move p1, p0

    move p0, v10

    goto :goto_5

    .end local v2    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "length":I
    .end local p1    # "masking":Z
    .end local p2    # "frame":Lio/ktor/websocket/Frame;
    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .restart local v2    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    move p0, p2

    .local p0, "masking":Z
    move-object p2, p1

    .line 166
    .restart local p2    # "frame":Lio/ktor/websocket/Frame;
    invoke-virtual {p2}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object p1

    array-length p1, p1

    .line 168
    .local p1, "length":I
    invoke-virtual {p2}, Lio/ktor/websocket/Frame;->getFin()Z

    move-result v5

    .local v5, "$this$flagAt$iv":Z
    const/4 v6, 0x7

    .local v6, "at$iv":I
    const/4 v7, 0x0

    .line 295
    .local v7, "$i$f$flagAt":I
    if-eqz v5, :cond_1

    shl-int v8, v4, v6

    goto :goto_1

    :cond_1
    move v8, v3

    .line 169
    .end local v5    # "$this$flagAt$iv":Z
    .end local v6    # "at$iv":I
    .end local v7    # "$i$f$flagAt":I
    :goto_1
    invoke-virtual {p2}, Lio/ktor/websocket/Frame;->getRsv1()Z

    move-result v5

    .restart local v5    # "$this$flagAt$iv":Z
    const/4 v6, 0x6

    .restart local v6    # "at$iv":I
    const/4 v7, 0x0

    .line 296
    .restart local v7    # "$i$f$flagAt":I
    if-eqz v5, :cond_2

    shl-int v9, v4, v6

    goto :goto_2

    :cond_2
    move v9, v3

    .line 168
    .end local v5    # "$this$flagAt$iv":Z
    .end local v6    # "at$iv":I
    .end local v7    # "$i$f$flagAt":I
    :goto_2
    or-int v5, v8, v9

    .line 170
    invoke-virtual {p2}, Lio/ktor/websocket/Frame;->getRsv2()Z

    move-result v6

    .local v6, "$this$flagAt$iv":Z
    const/4 v7, 0x5

    .local v7, "at$iv":I
    const/4 v8, 0x0

    .line 297
    .local v8, "$i$f$flagAt":I
    if-eqz v6, :cond_3

    shl-int v9, v4, v7

    goto :goto_3

    :cond_3
    move v9, v3

    .line 168
    .end local v6    # "$this$flagAt$iv":Z
    .end local v7    # "at$iv":I
    .end local v8    # "$i$f$flagAt":I
    :goto_3
    or-int/2addr v5, v9

    .line 171
    invoke-virtual {p2}, Lio/ktor/websocket/Frame;->getRsv3()Z

    move-result v6

    .restart local v6    # "$this$flagAt$iv":Z
    const/4 v7, 0x4

    .restart local v7    # "at$iv":I
    const/4 v8, 0x0

    .line 298
    .restart local v8    # "$i$f$flagAt":I
    if-eqz v6, :cond_4

    shl-int v9, v4, v7

    goto :goto_4

    :cond_4
    move v9, v3

    .line 168
    .end local v6    # "$this$flagAt$iv":Z
    .end local v7    # "at$iv":I
    .end local v8    # "$i$f$flagAt":I
    :goto_4
    or-int/2addr v5, v9

    .line 172
    invoke-virtual {p2}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v6

    invoke-virtual {v6}, Lio/ktor/websocket/FrameType;->getOpcode()I

    move-result v6

    .line 168
    or-int/2addr v5, v6

    .line 174
    .local v5, "flagsAndOpcode":I
    int-to-byte v6, v5

    iput-object v2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    iput-boolean p0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->Z$0:Z

    iput p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->I$0:I

    iput v4, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    invoke-interface {v2, v6, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeByte(BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "flagsAndOpcode":I
    if-ne v5, v1, :cond_5

    .line 165
    return-object v1

    .line 176
    :cond_5
    :goto_5
    nop

    .line 177
    const/16 v5, 0x7e

    if-ge p1, v5, :cond_6

    move v5, p1

    goto :goto_6

    .line 178
    :cond_6
    const v6, 0xffff

    if-gt p1, v6, :cond_7

    goto :goto_6

    .line 179
    :cond_7
    const/16 v5, 0x7f

    .line 176
    :goto_6
    nop

    .line 182
    .local v5, "formattedLength":I
    const/4 v6, 0x7

    .local v6, "at$iv":I
    move v7, p0

    .local v7, "$this$flagAt$iv":Z
    const/4 v8, 0x0

    .line 299
    .restart local v8    # "$i$f$flagAt":I
    if-eqz v7, :cond_8

    shl-int v3, v4, v6

    nop

    .line 182
    .end local v6    # "at$iv":I
    .end local v7    # "$this$flagAt$iv":Z
    .end local v8    # "$i$f$flagAt":I
    :cond_8
    or-int/2addr v3, v5

    .line 184
    .local v3, "maskAndLength":I
    int-to-byte v6, v3

    iput-object v2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    iput-boolean p0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->Z$0:Z

    iput p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->I$0:I

    iput v5, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->I$1:I

    const/4 v7, 0x2

    iput v7, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    invoke-interface {v2, v6, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeByte(BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "maskAndLength":I
    if-ne v3, v1, :cond_9

    .line 165
    return-object v1

    .line 184
    :cond_9
    move-object v3, v2

    move-object v2, p2

    move p2, p0

    move p0, v5

    .line 186
    .end local v5    # "formattedLength":I
    .local v2, "frame":Lio/ktor/websocket/Frame;
    .local v3, "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "formattedLength":I
    .local p2, "masking":Z
    :goto_7
    nop

    .end local p0    # "formattedLength":I
    packed-switch p0, :pswitch_data_1

    goto :goto_a

    .line 188
    :pswitch_7
    int-to-long v5, p1

    iput-object v3, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    iput-object v2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->Z$0:Z

    const/4 p0, 0x4

    iput p0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    invoke-interface {v3, v5, v6, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeLong(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p1    # "length":I
    if-ne p0, v1, :cond_a

    .line 165
    return-object v1

    .line 188
    :cond_a
    move p0, p2

    move-object p1, v2

    move-object p2, v3

    .end local v2    # "frame":Lio/ktor/websocket/Frame;
    .end local v3    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "masking":Z
    .local p1, "frame":Lio/ktor/websocket/Frame;
    .local p2, "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_8
    move-object v2, p1

    move-object v3, p2

    move p2, p0

    goto :goto_a

    .line 187
    .end local p0    # "masking":Z
    .restart local v2    # "frame":Lio/ktor/websocket/Frame;
    .restart local v3    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .local p1, "length":I
    .local p2, "masking":Z
    :pswitch_8
    int-to-short p0, p1

    iput-object v3, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    iput-object v2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->Z$0:Z

    const/4 v5, 0x3

    iput v5, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    invoke-interface {v3, p0, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeShort(SLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p1    # "length":I
    if-ne p0, v1, :cond_b

    .line 165
    return-object v1

    .line 187
    :cond_b
    move p0, p2

    move-object p1, v2

    move-object p2, v3

    .end local v2    # "frame":Lio/ktor/websocket/Frame;
    .end local v3    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local p0    # "masking":Z
    .local p1, "frame":Lio/ktor/websocket/Frame;
    .local p2, "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_9
    move-object v2, p1

    move-object v3, p2

    move p2, p0

    .line 191
    .end local p0    # "masking":Z
    .end local p1    # "frame":Lio/ktor/websocket/Frame;
    .restart local v2    # "frame":Lio/ktor/websocket/Frame;
    .restart local v3    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .local p2, "masking":Z
    :goto_a
    invoke-virtual {v2}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object p0

    .line 300
    .end local v2    # "frame":Lio/ktor/websocket/Frame;
    .local p0, "array$iv":[B
    const/4 p1, 0x0

    .local p1, "offset$iv":I
    array-length v2, p0

    .local v2, "length$iv":I
    const/4 v5, 0x0

    .line 301
    .local v5, "$i$f$ByteReadPacket":I
    const/4 v6, 0x0

    .line 302
    .local v6, "$i$f$ByteReadPacket":I
    invoke-static {p0, p1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    const-string v8, "wrap(array, offset, length)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$$inlined$ByteReadPacket$default$1;

    invoke-direct {v8, p0}, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$$inlined$ByteReadPacket$default$1;-><init>([B)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v8}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v6

    .line 301
    .end local v6    # "$i$f$ByteReadPacket":I
    nop

    .line 191
    .end local v2    # "length$iv":I
    .end local v5    # "$i$f$ByteReadPacket":I
    .end local p0    # "array$iv":[B
    .end local p1    # "offset$iv":I
    move-object p1, v6

    .line 193
    .local p1, "data":Lio/ktor/utils/io/core/ByteReadPacket;
    nop

    .line 194
    .end local p2    # "masking":Z
    if-ne p2, v4, :cond_d

    .line 195
    sget-object p0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result p0

    .line 196
    .local p0, "maskKey":I
    iput-object v3, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    iput p0, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->I$0:I

    const/4 p2, 0x5

    iput p2, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    invoke-interface {v3, p0, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_c

    .line 165
    return-object v1

    .line 196
    :cond_c
    move-object p2, v3

    .line 197
    .end local v3    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .local p2, "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_b
    invoke-static {p1, p0}, Lio/ktor/websocket/RawWebSocketCommonKt;->mask(Lio/ktor/utils/io/core/ByteReadPacket;I)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    move-object v3, p2

    .end local p0    # "maskKey":I
    .end local p1    # "data":Lio/ktor/utils/io/core/ByteReadPacket;
    goto :goto_c

    .line 199
    .end local p2    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v3    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local p1    # "data":Lio/ktor/utils/io/core/ByteReadPacket;
    :cond_d
    if-nez p2, :cond_f

    .line 193
    .end local p1    # "data":Lio/ktor/utils/io/core/ByteReadPacket;
    :goto_c
    move-object p0, p1

    .line 201
    .local p0, "maskedData":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 p1, 0x0

    iput-object p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p3, Lio/ktor/websocket/RawWebSocketCommonKt$writeFrame$1;->label:I

    invoke-interface {v3, p0, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v3    # "$this$writeFrame":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "maskedData":Lio/ktor/utils/io/core/ByteReadPacket;
    if-ne p0, v1, :cond_e

    .line 165
    return-object v1

    .line 202
    :cond_e
    :goto_d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 199
    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
