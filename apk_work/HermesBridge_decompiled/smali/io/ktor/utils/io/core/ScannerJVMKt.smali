.class public final Lio/ktor/utils/io/core/ScannerJVMKt;
.super Ljava/lang/Object;
.source "ScannerJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScannerJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScannerJVM.kt\nio/ktor/utils/io/core/ScannerJVMKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 Scanner.kt\nio/ktor/utils/io/core/ScannerKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 6 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 7 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,257:1\n211#1,14:277\n211#1,14:308\n229#1,7:336\n236#1,2:347\n239#1,13:350\n254#1,2:370\n229#1,7:386\n236#1,2:397\n239#1,13:400\n254#1,2:420\n69#2:258\n69#2:259\n69#2:276\n69#2:307\n74#2:349\n74#2:399\n74#2:426\n191#3,5:260\n196#3,7:266\n203#3:275\n191#3,5:291\n196#3,7:297\n203#3:306\n208#3,5:322\n213#3,8:328\n208#3,5:372\n213#3,8:378\n26#4:265\n26#4:296\n26#4:327\n26#4:377\n15#5,2:273\n15#5,2:304\n488#6,4:343\n492#6,6:364\n488#6,4:393\n492#6,6:414\n488#6,4:422\n492#6,6:428\n361#7:363\n361#7:413\n361#7:427\n*S KotlinDebug\n*F\n+ 1 ScannerJVM.kt\nio/ktor/utils/io/core/ScannerJVMKt\n*L\n82#1:277,14\n134#1:308,14\n161#1:336,7\n161#1:347,2\n161#1:350,13\n161#1:370,2\n182#1:386,7\n182#1:397,2\n182#1:400,13\n182#1:420,2\n20#1:258\n47#1:259\n87#1:276\n139#1:307\n161#1:349\n182#1:399\n237#1:426\n75#1:260,5\n75#1:266,7\n75#1:275\n121#1:291,5\n121#1:297,7\n121#1:306\n156#1:322,5\n156#1:328,8\n177#1:372,5\n177#1:378,8\n75#1:265\n121#1:296\n156#1:327\n177#1:377\n75#1:273,2\n121#1:304,2\n161#1:343,4\n161#1:364,6\n182#1:393,4\n182#1:414,6\n235#1:422,4\n235#1:428,6\n161#1:363\n182#1:413\n251#1:427\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0002\u001a0\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a)\u0010\u000e\u001a\u00020\u0001*\u00020\u00032\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\n\u001a\u00020\u0012H\u0082\u0008\u001aA\u0010\u000e\u001a\u00020\u0001*\u00020\u00132\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0014\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0082\u0008\u001a9\u0010\u0015\u001a\u00020\u0001*\u00020\u00132\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0082\u0008\u001a\u0014\u0010\u0016\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u001c\u0010\u0017\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u001a\u001c\u0010\t\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a\u001c\u0010\u0018\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a,\u0010\u0018\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a\u001c\u0010\u0019\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a,\u0010\u0019\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0000\u001a$\u0010\u001a\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a4\u0010\u001a\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a$\u0010\u001b\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a4\u0010\u001b\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a$\u0010\u001c\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a4\u0010\u001c\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "discardUntilDelimiterImplArrays",
        "",
        "buffer",
        "Lio/ktor/utils/io/core/Buffer;",
        "delimiter",
        "",
        "discardUntilDelimitersImplArrays",
        "delimiter1",
        "delimiter2",
        "readUntilDelimiterArrays",
        "dst",
        "",
        "offset",
        "length",
        "copyUntilArrays",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "Lio/ktor/utils/io/core/Output;",
        "Ljava/nio/ByteBuffer;",
        "bufferOffset",
        "copyUntilDirect",
        "discardUntilDelimiterImpl",
        "discardUntilDelimitersImpl",
        "readUntilDelimiterDirect",
        "readUntilDelimiterImpl",
        "readUntilDelimitersArrays",
        "readUntilDelimitersDirect",
        "readUntilDelimitersImpl",
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
.method private static final copyUntilArrays(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;Lio/ktor/utils/io/core/Output;)I
    .locals 21
    .param p0, "$this$copyUntilArrays"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .param p2, "dst"    # Lio/ktor/utils/io/core/Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/ktor/utils/io/core/Output;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    .line 229
    .local v1, "$i$f$copyUntilArrays":I
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 230
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 231
    .local v3, "array":[B
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    add-int/2addr v4, v5

    .line 232
    .end local v0    # "i":I
    .local v4, "i":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    add-int/2addr v5, v0

    .line 233
    .local v5, "sourceEndPosition":I
    const/4 v0, 0x0

    .line 235
    .local v0, "copiedTotal":I
    move-object/from16 v6, p2

    .local v6, "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    const/4 v7, 0x0

    .line 422
    .local v7, "$i$f$writeWhile":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v9, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    .line 423
    .local v8, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v10, v8

    move v8, v4

    move v4, v0

    .line 424
    .end local v0    # "copiedTotal":I
    .local v4, "copiedTotal":I
    .local v8, "i":I
    .local v10, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 425
    :try_start_0
    move-object v0, v10

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "chunk":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 236
    .local v11, "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1":I
    move v12, v8

    .line 237
    .local v12, "start":I
    move-object v13, v0

    .local v13, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 426
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 237
    .end local v13    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    add-int/2addr v15, v8

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 239
    .local v13, "end":I
    array-length v14, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-gt v13, v14, :cond_1

    .line 240
    :goto_1
    if-ge v8, v13, :cond_0

    .line 241
    :try_start_1
    aget-byte v14, v3, v8

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v15, p1

    :try_start_2
    invoke-interface {v15, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v14, :cond_2

    .line 242
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 431
    .end local v0    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    :catchall_0
    move-exception v0

    move/from16 v19, v1

    move-object/from16 v1, p0

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v19, v1

    move-object/from16 v1, p0

    goto :goto_6

    .line 240
    .restart local v0    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .restart local v11    # "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1":I
    .restart local v12    # "start":I
    .restart local v13    # "end":I
    :cond_0
    move-object/from16 v15, p1

    goto :goto_2

    .line 239
    :cond_1
    move-object/from16 v15, p1

    .line 246
    :cond_2
    :goto_2
    sub-int v14, v8, v12

    .line 248
    .local v14, "size":I
    :try_start_3
    const-string v9, "array"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v12, v14}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 250
    add-int/2addr v4, v14

    .line 251
    move-object v9, v0

    .local v9, "$this$canWrite$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 427
    .local v17, "$i$f$canWrite":I
    move-object/from16 v18, v0

    .end local v0    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .local v18, "chunk":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v19, v1

    .end local v1    # "$i$f$copyUntilArrays":I
    .local v19, "$i$f$copyUntilArrays":I
    :try_start_4
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    const/16 v20, 0x0

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    move/from16 v0, v20

    .end local v9    # "$this$canWrite$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$f$canWrite":I
    :goto_3
    if-nez v0, :cond_4

    .line 251
    if-ge v8, v5, :cond_4

    const/16 v20, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 425
    .end local v11    # "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v14    # "size":I
    .end local v18    # "chunk":Lio/ktor/utils/io/core/Buffer;
    :goto_4
    if-eqz v20, :cond_5

    .line 428
    const/4 v1, 0x1

    invoke-static {v6, v1, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v10, v0

    move v9, v1

    move/from16 v1, v19

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 431
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 432
    nop

    .line 433
    nop

    .line 254
    .end local v6    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .end local v7    # "$i$f$writeWhile":I
    .end local v10    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object/from16 v1, p0

    invoke-virtual {v1, v8}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    .line 255
    return v4

    .line 431
    .restart local v6    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .restart local v7    # "$i$f$writeWhile":I
    .restart local v10    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    .end local v19    # "$i$f$copyUntilArrays":I
    .restart local v1    # "$i$f$copyUntilArrays":I
    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v15, p1

    :goto_5
    move/from16 v19, v1

    move-object/from16 v1, p0

    .end local v1    # "$i$f$copyUntilArrays":I
    .restart local v19    # "$i$f$copyUntilArrays":I
    :goto_6
    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method private static final copyUntilArrays(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;I[BII)I
    .locals 6
    .param p0, "$this$copyUntilArrays"    # Ljava/nio/ByteBuffer;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .param p2, "bufferOffset"    # I
    .param p3, "dst"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;I[BII)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    .local v0, "$i$f$copyUntilArrays":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 212
    .local v1, "array":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    .line 213
    .local v2, "start":I
    move v3, v2

    .line 214
    .local v3, "i":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v3

    .line 215
    .local v4, "end":I
    array-length v5, v1

    if-gt v4, v5, :cond_0

    .line 216
    :goto_0
    if-ge v3, v4, :cond_0

    .line 217
    aget-byte v5, v1, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_0
    sub-int v5, v3, v2

    .line 223
    .local v5, "copied":I
    invoke-static {v1, v2, p3, p4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    return v5
.end method

.method private static final copyUntilDirect(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;[BII)I
    .locals 5
    .param p0, "$this$copyUntilDirect"    # Ljava/nio/ByteBuffer;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;[BII)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    .local v0, "$i$f$copyUntilDirect":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 192
    .local v1, "start":I
    move v2, v1

    .line 193
    .local v2, "i":I
    add-int v3, v2, p4

    .line 194
    .local v3, "end":I
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-ge v2, v4, :cond_0

    if-ge v2, v3, :cond_0

    .line 195
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_0
    sub-int v4, v2, v1

    .line 200
    .local v4, "copied":I
    invoke-virtual {p0, p2, p3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 201
    return v4
.end method

.method public static final discardUntilDelimiterImpl(Lio/ktor/utils/io/core/Buffer;B)I
    .locals 1
    .param p0, "$this$discardUntilDelimiterImpl"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter"    # B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/ScannerJVMKt;->discardUntilDelimiterImplArrays(Lio/ktor/utils/io/core/Buffer;B)I

    move-result v0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/ScannerKt;->discardUntilDelimiterImplMemory(Lio/ktor/utils/io/core/Buffer;B)I

    move-result v0

    .line 7
    :goto_0
    return v0
.end method

.method private static final discardUntilDelimiterImplArrays(Lio/ktor/utils/io/core/Buffer;B)I
    .locals 8
    .param p0, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter"    # B

    .line 16
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 18
    .local v1, "array":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    add-int/2addr v2, v3

    .line 19
    .local v2, "start":I
    move v3, v2

    .line 20
    .local v3, "i":I
    move-object v4, p0

    .local v4, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 258
    .local v5, "$i$f$getReadRemaining":I
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v7

    sub-int/2addr v6, v7

    .line 20
    .end local v4    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getReadRemaining":I
    add-int/2addr v6, v3

    .line 21
    .local v6, "end":I
    array-length v4, v1

    if-gt v6, v4, :cond_0

    .line 22
    :goto_0
    if-ge v3, v6, :cond_0

    .line 23
    aget-byte v4, v1, v3

    if-eq v4, p1, :cond_0

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    .line 29
    sub-int v4, v3, v2

    return v4
.end method

.method public static final discardUntilDelimitersImpl(Lio/ktor/utils/io/core/Buffer;BB)I
    .locals 1
    .param p0, "$this$discardUntilDelimitersImpl"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/ScannerJVMKt;->discardUntilDelimitersImplArrays(Lio/ktor/utils/io/core/Buffer;BB)I

    move-result v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/ScannerKt;->discardUntilDelimitersImplMemory(Lio/ktor/utils/io/core/Buffer;BB)I

    move-result v0

    .line 34
    :goto_0
    return v0
.end method

.method private static final discardUntilDelimitersImplArrays(Lio/ktor/utils/io/core/Buffer;BB)I
    .locals 8
    .param p0, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B

    .line 43
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 45
    .local v1, "array":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    add-int/2addr v2, v3

    .line 46
    .local v2, "start":I
    move v3, v2

    .line 47
    .local v3, "i":I
    move-object v4, p0

    .local v4, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 259
    .local v5, "$i$f$getReadRemaining":I
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v7

    sub-int/2addr v6, v7

    .line 47
    .end local v4    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getReadRemaining":I
    add-int/2addr v6, v3

    .line 48
    .local v6, "end":I
    array-length v4, v1

    if-gt v6, v4, :cond_1

    .line 49
    :goto_0
    if-ge v3, v6, :cond_1

    .line 50
    aget-byte v4, v1, v3

    .line 51
    .local v4, "v":B
    if-eq v4, p1, :cond_1

    if-ne v4, p2, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    nop

    .end local v4    # "v":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    .line 57
    sub-int v4, v3, v2

    return v4
.end method

.method public static final readUntilDelimiterArrays(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I
    .locals 21
    .param p0, "$this$readUntilDelimiterArrays"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter"    # B
    .param p2, "dst"    # Lio/ktor/utils/io/core/Output;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    move-object/from16 v3, p0

    .local v3, "$this$copyUntilArrays$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 336
    .local v4, "$i$f$copyUntilArrays":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 337
    .local v5, "bb$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 338
    .local v6, "array$iv":[B
    const/4 v0, 0x0

    .local v0, "i$iv":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    add-int/2addr v7, v8

    .line 339
    .end local v0    # "i$iv":I
    .local v7, "i$iv":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    add-int/2addr v0, v8

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    add-int/2addr v8, v0

    .line 340
    .local v8, "sourceEndPosition$iv":I
    const/4 v0, 0x0

    .line 342
    .local v0, "copiedTotal$iv":I
    move-object/from16 v9, p2

    .local v9, "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v10, 0x0

    .line 343
    .local v10, "$i$f$writeWhile":I
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v9, v12, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    .line 344
    .local v11, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v13, v11

    move v11, v7

    move v7, v0

    .line 345
    .end local v0    # "copiedTotal$iv":I
    .local v7, "copiedTotal$iv":I
    .local v11, "i$iv":I
    .local v13, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 346
    :try_start_0
    move-object v0, v13

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 347
    .local v14, "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1$iv":I
    move v15, v11

    .line 348
    .local v15, "start$iv":I
    move-object/from16 v16, v0

    .local v16, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 349
    .local v17, "$i$f$getWriteRemaining":I
    invoke-virtual/range {v16 .. v16}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    sub-int v18, v18, v19

    .line 348
    .end local v16    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$f$getWriteRemaining":I
    add-int v12, v11, v18

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 350
    .local v12, "end$iv":I
    array-length v1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v17, 0x0

    if-gt v12, v1, :cond_2

    .line 351
    :goto_1
    if-ge v11, v12, :cond_1

    .line 352
    :try_start_1
    aget-byte v1, v6, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "it":B
    const/16 v18, 0x0

    .line 161
    .local v18, "$i$a$-copyUntilArrays-ScannerJVMKt$readUntilDelimiterArrays$1":I
    move/from16 v2, p1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    move/from16 v1, v17

    .line 352
    .end local v1    # "it":B
    .end local v18    # "$i$a$-copyUntilArrays-ScannerJVMKt$readUntilDelimiterArrays$1":I
    :goto_2
    if-nez v1, :cond_3

    .line 353
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    goto :goto_1

    .line 367
    .end local v0    # "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "end$iv":I
    .end local v14    # "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1$iv":I
    .end local v15    # "start$iv":I
    :catchall_0
    move-exception v0

    move/from16 v2, p1

    goto :goto_6

    .line 351
    .restart local v0    # "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v12    # "end$iv":I
    .restart local v14    # "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1$iv":I
    .restart local v15    # "start$iv":I
    :cond_1
    move/from16 v2, p1

    goto :goto_3

    .line 350
    :cond_2
    move/from16 v2, p1

    .line 357
    :cond_3
    :goto_3
    sub-int v1, v11, v15

    .line 359
    .local v1, "size$iv":I
    :try_start_2
    const-string v2, "array"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6, v15, v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 361
    add-int/2addr v7, v1

    .line 362
    move-object v2, v0

    .local v2, "$this$canWrite$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 363
    .local v18, "$i$f$canWrite":I
    move-object/from16 v19, v0

    .end local v0    # "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    .local v19, "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0

    move/from16 v20, v1

    .end local v1    # "size$iv":I
    .local v20, "size$iv":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    if-le v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move/from16 v0, v17

    .end local v2    # "$this$canWrite$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$canWrite":I
    :goto_4
    if-nez v0, :cond_5

    .line 362
    if-ge v11, v8, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    nop

    .line 346
    .end local v12    # "end$iv":I
    .end local v14    # "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1$iv":I
    .end local v15    # "start$iv":I
    .end local v19    # "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v20    # "size$iv":I
    :goto_5
    if-eqz v17, :cond_6

    .line 364
    const/4 v0, 0x1

    invoke-static {v9, v0, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v12, v0

    goto :goto_0

    .line 367
    :cond_6
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 368
    nop

    .line 369
    nop

    .line 370
    .end local v9    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v10    # "$i$f$writeWhile":I
    .end local v13    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v3, v11}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    .line 371
    nop

    .line 161
    .end local v3    # "$this$copyUntilArrays$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$copyUntilArrays":I
    .end local v5    # "bb$iv":Ljava/nio/ByteBuffer;
    .end local v6    # "array$iv":[B
    .end local v7    # "copiedTotal$iv":I
    .end local v8    # "sourceEndPosition$iv":I
    .end local v11    # "i$iv":I
    return v7

    .line 367
    .restart local v3    # "$this$copyUntilArrays$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$copyUntilArrays":I
    .restart local v5    # "bb$iv":Ljava/nio/ByteBuffer;
    .restart local v6    # "array$iv":[B
    .restart local v7    # "copiedTotal$iv":I
    .restart local v8    # "sourceEndPosition$iv":I
    .restart local v9    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v10    # "$i$f$writeWhile":I
    .restart local v11    # "i$iv":I
    .restart local v13    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_1
    move-exception v0

    :goto_6
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method private static final readUntilDelimiterArrays(Lio/ktor/utils/io/core/Buffer;B[BII)I
    .locals 11
    .param p0, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter"    # B
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 82
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    .line 87
    move-object v2, p0

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 276
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 87
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 82
    nop

    .local v0, "$this$copyUntilArrays$iv":Ljava/nio/ByteBuffer;
    .local v1, "bufferOffset$iv":I
    .local v2, "length$iv":I
    const/4 v3, 0x0

    .line 277
    .local v3, "$i$f$copyUntilArrays":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 278
    .local v4, "array$iv":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v5, v6

    .line 279
    .local v5, "start$iv":I
    move v6, v5

    .line 280
    .local v6, "i$iv":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v6

    .line 281
    .local v7, "end$iv":I
    array-length v8, v4

    if-gt v7, v8, :cond_1

    .line 282
    :goto_0
    if-ge v6, v7, :cond_1

    .line 283
    aget-byte v8, v4, v6

    .local v8, "it":B
    const/4 v9, 0x0

    .line 83
    .local v9, "$i$a$-copyUntilArrays-ScannerJVMKt$readUntilDelimiterArrays$copied$1":I
    if-ne v8, p1, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 283
    .end local v8    # "it":B
    .end local v9    # "$i$a$-copyUntilArrays-ScannerJVMKt$readUntilDelimiterArrays$copied$1":I
    :goto_1
    if-nez v10, :cond_1

    .line 284
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 288
    :cond_1
    sub-int v8, v6, v5

    .line 289
    .local v8, "copied$iv":I
    invoke-static {v4, v5, p2, p3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    nop

    .line 82
    .end local v0    # "$this$copyUntilArrays$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "bufferOffset$iv":I
    .end local v2    # "length$iv":I
    .end local v3    # "$i$f$copyUntilArrays":I
    .end local v4    # "array$iv":[B
    .end local v5    # "start$iv":I
    .end local v6    # "i$iv":I
    .end local v7    # "end$iv":I
    .end local v8    # "copied$iv":I
    move v0, v8

    .line 89
    .local v0, "copied":I
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 90
    return v0
.end method

.method public static final readUntilDelimiterDirect(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I
    .locals 8
    .param p0, "$this$readUntilDelimiterDirect"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter"    # B
    .param p2, "dst"    # Lio/ktor/utils/io/core/Output;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    move-object v0, p0

    .local v0, "$this$copyUntil$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 322
    .local v1, "$i$f$copyUntil":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    .line 323
    .local v2, "index$iv":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    .line 324
    .local v3, "end$iv":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 326
    .local v4, "memory$iv":Ljava/nio/ByteBuffer;
    :goto_0
    if-eq v2, v3, :cond_2

    const/4 v5, 0x0

    .line 327
    .local v5, "$i$f$loadAt-impl":I
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 326
    .end local v5    # "$i$f$loadAt-impl":I
    nop

    .local v5, "it":B
    const/4 v6, 0x0

    .line 156
    .local v6, "$i$a$-copyUntil-ScannerJVMKt$readUntilDelimiterDirect$1":I
    if-ne v5, p1, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 326
    .end local v5    # "it":B
    .end local v6    # "$i$a$-copyUntil-ScannerJVMKt$readUntilDelimiterDirect$1":I
    :goto_1
    if-eqz v7, :cond_1

    goto :goto_2

    .line 330
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 331
    goto :goto_0

    .line 328
    :cond_2
    :goto_2
    nop

    .line 333
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int v5, v2, v5

    .line 334
    .local v5, "size$iv":I
    invoke-static {p2, v0, v5}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V

    .line 335
    nop

    .line 156
    .end local v0    # "$this$copyUntil$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$copyUntil":I
    .end local v2    # "index$iv":I
    .end local v3    # "end$iv":I
    .end local v4    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "size$iv":I
    return v5
.end method

.method private static final readUntilDelimiterDirect(Lio/ktor/utils/io/core/Buffer;B[BII)I
    .locals 9
    .param p0, "$this$readUntilDelimiterDirect"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter"    # B
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 75
    move-object v0, p0

    .local v0, "$this$copyUntil$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 260
    .local v1, "$i$f$copyUntil":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    .line 261
    .local v2, "readPosition$iv":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    add-int v4, v2, p4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 262
    .local v3, "end$iv":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 263
    .local v4, "memory$iv":Ljava/nio/ByteBuffer;
    move v5, v2

    .local v5, "index$iv":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 264
    const/4 v6, 0x0

    .line 265
    .local v6, "$i$f$loadAt-impl":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    .line 264
    .end local v6    # "$i$f$loadAt-impl":I
    nop

    .local v6, "it":B
    const/4 v7, 0x0

    .line 75
    .local v7, "$i$a$-copyUntil-ScannerJVMKt$readUntilDelimiterDirect$copied$1":I
    if-ne v6, p1, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 264
    .end local v6    # "it":B
    .end local v7    # "$i$a$-copyUntil-ScannerJVMKt$readUntilDelimiterDirect$copied$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 266
    move v3, v5

    .line 267
    goto :goto_2

    .line 263
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 271
    .end local v5    # "index$iv":I
    :cond_2
    :goto_2
    sub-int v5, v3, v2

    .line 272
    .local v5, "copySize$iv":I
    move-object v6, v4

    .local v6, "$this$loadByteArray_u2d9zorpBc$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 273
    .local v7, "$i$f$loadByteArray-9zorpBc":I
    invoke-static {v6, p2, v2, v5, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 274
    nop

    .line 275
    .end local v6    # "$this$loadByteArray_u2d9zorpBc$iv$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "$i$f$loadByteArray-9zorpBc":I
    nop

    .line 75
    .end local v0    # "$this$copyUntil$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$copyUntil":I
    .end local v2    # "readPosition$iv":I
    .end local v3    # "end$iv":I
    .end local v4    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "copySize$iv":I
    move v0, v5

    .line 76
    .local v0, "copied":I
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 77
    return v0
.end method

.method public static final readUntilDelimiterImpl(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I
    .locals 1
    .param p0, "$this$readUntilDelimiterImpl"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter"    # B
    .param p2, "dst"    # Lio/ktor/utils/io/core/Output;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterArrays(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I

    move-result v0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterDirect(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I

    move-result v0

    .line 147
    :goto_0
    return v0
.end method

.method public static final readUntilDelimiterImpl(Lio/ktor/utils/io/core/Buffer;B[BII)I
    .locals 5
    .param p0, "$this$readUntilDelimiterImpl"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter"    # B
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Assertion failed"

    if-eqz v2, :cond_6

    .line 63
    if-ltz p4, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 64
    add-int v2, p3, p4

    array-length v4, p2

    if-gt v2, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 66
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterArrays(Lio/ktor/utils/io/core/Buffer;B[BII)I

    move-result v0

    goto :goto_3

    .line 69
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterDirect(Lio/ktor/utils/io/core/Buffer;B[BII)I

    move-result v0

    .line 66
    :goto_3
    return v0

    .line 64
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 63
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 62
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final readUntilDelimitersArrays(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I
    .locals 21
    .param p0, "$this$readUntilDelimitersArrays"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B
    .param p3, "dst"    # Lio/ktor/utils/io/core/Output;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    move-object/from16 v3, p0

    .local v3, "$this$copyUntilArrays$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 386
    .local v4, "$i$f$copyUntilArrays":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 387
    .local v5, "bb$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 388
    .local v6, "array$iv":[B
    const/4 v0, 0x0

    .local v0, "i$iv":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    add-int/2addr v7, v8

    .line 389
    .end local v0    # "i$iv":I
    .local v7, "i$iv":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    add-int/2addr v0, v8

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    add-int/2addr v8, v0

    .line 390
    .local v8, "sourceEndPosition$iv":I
    const/4 v0, 0x0

    .line 392
    .local v0, "copiedTotal$iv":I
    move-object/from16 v9, p3

    .local v9, "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v10, 0x0

    .line 393
    .local v10, "$i$f$writeWhile":I
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v9, v12, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    .line 394
    .local v11, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v13, v11

    move v11, v7

    move v7, v0

    .line 395
    .end local v0    # "copiedTotal$iv":I
    .local v7, "copiedTotal$iv":I
    .local v11, "i$iv":I
    .local v13, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 396
    :try_start_0
    move-object v0, v13

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 397
    .local v14, "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1$iv":I
    move v15, v11

    .line 398
    .local v15, "start$iv":I
    move-object/from16 v16, v0

    .local v16, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 399
    .local v17, "$i$f$getWriteRemaining":I
    invoke-virtual/range {v16 .. v16}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    sub-int v18, v18, v19

    .line 398
    .end local v16    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$f$getWriteRemaining":I
    add-int v12, v11, v18

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 400
    .local v12, "end$iv":I
    array-length v1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v17, 0x0

    if-gt v12, v1, :cond_3

    .line 401
    :goto_1
    if-ge v11, v12, :cond_2

    .line 402
    :try_start_1
    aget-byte v1, v6, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "it":B
    const/16 v18, 0x0

    .line 182
    .local v18, "$i$a$-copyUntilArrays-ScannerJVMKt$readUntilDelimitersArrays$1":I
    move/from16 v2, p1

    if-eq v1, v2, :cond_1

    move/from16 v2, p2

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    move/from16 v1, v17

    goto :goto_3

    :cond_1
    move/from16 v2, p2

    :goto_2
    const/4 v1, 0x1

    .line 402
    .end local v1    # "it":B
    .end local v18    # "$i$a$-copyUntilArrays-ScannerJVMKt$readUntilDelimitersArrays$1":I
    :goto_3
    if-nez v1, :cond_4

    .line 403
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p3

    goto :goto_1

    .line 417
    .end local v0    # "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "end$iv":I
    .end local v14    # "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1$iv":I
    .end local v15    # "start$iv":I
    :catchall_0
    move-exception v0

    move/from16 v2, p2

    goto :goto_7

    .line 401
    .restart local v0    # "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v12    # "end$iv":I
    .restart local v14    # "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1$iv":I
    .restart local v15    # "start$iv":I
    :cond_2
    move/from16 v2, p2

    goto :goto_4

    .line 400
    :cond_3
    move/from16 v2, p2

    .line 407
    :cond_4
    :goto_4
    sub-int v1, v11, v15

    .line 409
    .local v1, "size$iv":I
    :try_start_2
    const-string v2, "array"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6, v15, v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 411
    add-int/2addr v7, v1

    .line 412
    move-object v2, v0

    .local v2, "$this$canWrite$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 413
    .local v18, "$i$f$canWrite":I
    move-object/from16 v19, v0

    .end local v0    # "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    .local v19, "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0

    move/from16 v20, v1

    .end local v1    # "size$iv":I
    .local v20, "size$iv":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    if-le v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    move/from16 v0, v17

    .end local v2    # "$this$canWrite$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$canWrite":I
    :goto_5
    if-nez v0, :cond_6

    .line 412
    if-ge v11, v8, :cond_6

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    nop

    .line 396
    .end local v12    # "end$iv":I
    .end local v14    # "$i$a$-writeWhile-ScannerJVMKt$copyUntilArrays$1$iv":I
    .end local v15    # "start$iv":I
    .end local v19    # "chunk$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v20    # "size$iv":I
    :goto_6
    if-eqz v17, :cond_7

    .line 414
    const/4 v0, 0x1

    invoke-static {v9, v0, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v12, v0

    goto :goto_0

    .line 417
    :cond_7
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 418
    nop

    .line 419
    nop

    .line 420
    .end local v9    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v10    # "$i$f$writeWhile":I
    .end local v13    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v3, v11}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    .line 421
    nop

    .line 182
    .end local v3    # "$this$copyUntilArrays$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$copyUntilArrays":I
    .end local v5    # "bb$iv":Ljava/nio/ByteBuffer;
    .end local v6    # "array$iv":[B
    .end local v7    # "copiedTotal$iv":I
    .end local v8    # "sourceEndPosition$iv":I
    .end local v11    # "i$iv":I
    return v7

    .line 417
    .restart local v3    # "$this$copyUntilArrays$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$copyUntilArrays":I
    .restart local v5    # "bb$iv":Ljava/nio/ByteBuffer;
    .restart local v6    # "array$iv":[B
    .restart local v7    # "copiedTotal$iv":I
    .restart local v8    # "sourceEndPosition$iv":I
    .restart local v9    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v10    # "$i$f$writeWhile":I
    .restart local v11    # "i$iv":I
    .restart local v13    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_1
    move-exception v0

    :goto_7
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method private static final readUntilDelimitersArrays(Lio/ktor/utils/io/core/Buffer;BB[BII)I
    .locals 14
    .param p0, "$this$readUntilDelimitersArrays"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B
    .param p3, "dst"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .line 134
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    .line 139
    move-object v2, p0

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 307
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 139
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move/from16 v2, p5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 134
    nop

    .local v0, "$this$copyUntilArrays$iv":Ljava/nio/ByteBuffer;
    .local v1, "bufferOffset$iv":I
    .local v3, "length$iv":I
    const/4 v4, 0x0

    .line 308
    .local v4, "$i$f$copyUntilArrays":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 309
    .local v5, "array$iv":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    add-int/2addr v6, v7

    .line 310
    .local v6, "start$iv":I
    move v7, v6

    .line 311
    .local v7, "i$iv":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v7

    .line 312
    .local v8, "end$iv":I
    array-length v9, v5

    if-gt v8, v9, :cond_3

    .line 313
    :goto_0
    if-ge v7, v8, :cond_2

    .line 314
    aget-byte v9, v5, v7

    .local v9, "it":B
    const/4 v10, 0x0

    .line 135
    .local v10, "$i$a$-copyUntilArrays-ScannerJVMKt$readUntilDelimitersArrays$copied$1":I
    move v11, p1

    if-eq v9, v11, :cond_1

    move/from16 v12, p2

    if-ne v9, v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    goto :goto_2

    :cond_1
    move/from16 v12, p2

    :goto_1
    const/4 v13, 0x1

    .line 314
    .end local v9    # "it":B
    .end local v10    # "$i$a$-copyUntilArrays-ScannerJVMKt$readUntilDelimitersArrays$copied$1":I
    :goto_2
    if-nez v13, :cond_4

    .line 315
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 313
    :cond_2
    move v11, p1

    move/from16 v12, p2

    goto :goto_3

    .line 312
    :cond_3
    move v11, p1

    move/from16 v12, p2

    .line 319
    :cond_4
    :goto_3
    sub-int v9, v7, v6

    .line 320
    .local v9, "copied$iv":I
    move-object/from16 v10, p3

    move/from16 v13, p4

    invoke-static {v5, v6, v10, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    nop

    .line 134
    .end local v0    # "$this$copyUntilArrays$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "bufferOffset$iv":I
    .end local v3    # "length$iv":I
    .end local v4    # "$i$f$copyUntilArrays":I
    .end local v5    # "array$iv":[B
    .end local v6    # "start$iv":I
    .end local v7    # "i$iv":I
    .end local v8    # "end$iv":I
    .end local v9    # "copied$iv":I
    move v0, v9

    .line 141
    .local v0, "copied":I
    move-object v1, p0

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 142
    return v0
.end method

.method public static final readUntilDelimitersDirect(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I
    .locals 8
    .param p0, "$this$readUntilDelimitersDirect"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B
    .param p3, "dst"    # Lio/ktor/utils/io/core/Output;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    move-object v0, p0

    .local v0, "$this$copyUntil$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 372
    .local v1, "$i$f$copyUntil":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    .line 373
    .local v2, "index$iv":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    .line 374
    .local v3, "end$iv":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 376
    .local v4, "memory$iv":Ljava/nio/ByteBuffer;
    :goto_0
    if-eq v2, v3, :cond_3

    const/4 v5, 0x0

    .line 377
    .local v5, "$i$f$loadAt-impl":I
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 376
    .end local v5    # "$i$f$loadAt-impl":I
    nop

    .local v5, "it":B
    const/4 v6, 0x0

    .line 177
    .local v6, "$i$a$-copyUntil-ScannerJVMKt$readUntilDelimitersDirect$1":I
    if-eq v5, p1, :cond_1

    if-ne v5, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 376
    .end local v5    # "it":B
    .end local v6    # "$i$a$-copyUntil-ScannerJVMKt$readUntilDelimitersDirect$1":I
    :goto_2
    if-eqz v7, :cond_2

    goto :goto_3

    .line 380
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 381
    goto :goto_0

    .line 378
    :cond_3
    :goto_3
    nop

    .line 383
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int v5, v2, v5

    .line 384
    .local v5, "size$iv":I
    invoke-static {p3, v0, v5}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V

    .line 385
    nop

    .line 177
    .end local v0    # "$this$copyUntil$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$copyUntil":I
    .end local v2    # "index$iv":I
    .end local v3    # "end$iv":I
    .end local v4    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "size$iv":I
    return v5
.end method

.method private static final readUntilDelimitersDirect(Lio/ktor/utils/io/core/Buffer;BB[BII)I
    .locals 9
    .param p0, "$this$readUntilDelimitersDirect"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B
    .param p3, "dst"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .line 121
    move-object v0, p0

    .local v0, "$this$copyUntil$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 291
    .local v1, "$i$f$copyUntil":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    .line 292
    .local v2, "readPosition$iv":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    add-int v4, v2, p5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 293
    .local v3, "end$iv":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 294
    .local v4, "memory$iv":Ljava/nio/ByteBuffer;
    move v5, v2

    .local v5, "index$iv":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 295
    const/4 v6, 0x0

    .line 296
    .local v6, "$i$f$loadAt-impl":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    .line 295
    .end local v6    # "$i$f$loadAt-impl":I
    nop

    .local v6, "it":B
    const/4 v7, 0x0

    .line 121
    .local v7, "$i$a$-copyUntil-ScannerJVMKt$readUntilDelimitersDirect$copied$1":I
    if-eq v6, p1, :cond_1

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v8, 0x1

    .line 295
    .end local v6    # "it":B
    .end local v7    # "$i$a$-copyUntil-ScannerJVMKt$readUntilDelimitersDirect$copied$1":I
    :goto_2
    if-eqz v8, :cond_2

    .line 297
    move v3, v5

    .line 298
    goto :goto_3

    .line 294
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 302
    .end local v5    # "index$iv":I
    :cond_3
    :goto_3
    sub-int v5, v3, v2

    .line 303
    .local v5, "copySize$iv":I
    move-object v6, v4

    .local v6, "$this$loadByteArray_u2d9zorpBc$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 304
    .local v7, "$i$f$loadByteArray-9zorpBc":I
    invoke-static {v6, p3, v2, v5, p4}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 305
    nop

    .line 306
    .end local v6    # "$this$loadByteArray_u2d9zorpBc$iv$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "$i$f$loadByteArray-9zorpBc":I
    nop

    .line 121
    .end local v0    # "$this$copyUntil$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$copyUntil":I
    .end local v2    # "readPosition$iv":I
    .end local v3    # "end$iv":I
    .end local v4    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "copySize$iv":I
    move v0, v5

    .line 122
    .local v0, "copied":I
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 123
    return v0
.end method

.method public static final readUntilDelimitersImpl(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I
    .locals 2
    .param p0, "$this$readUntilDelimitersImpl"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B
    .param p3, "dst"    # Lio/ktor/utils/io/core/Output;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 168
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersArrays(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I

    move-result v0

    goto :goto_1

    .line 171
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersDirect(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I

    move-result v0

    .line 168
    :goto_1
    return v0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final readUntilDelimitersImpl(Lio/ktor/utils/io/core/Buffer;BB[BII)I
    .locals 5
    .param p0, "$this$readUntilDelimitersImpl"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B
    .param p3, "dst"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Assertion failed"

    if-eqz v2, :cond_8

    .line 102
    if-ltz p5, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_7

    .line 103
    add-int v2, p4, p5

    array-length v4, p3

    if-gt v2, v4, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_6

    .line 104
    if-eq p1, p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    .line 106
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersArrays(Lio/ktor/utils/io/core/Buffer;BB[BII)I

    move-result v0

    goto :goto_4

    .line 109
    :cond_4
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersDirect(Lio/ktor/utils/io/core/Buffer;BB[BII)I

    move-result v0

    .line 106
    :goto_4
    return v0

    .line 104
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 103
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 102
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 101
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
