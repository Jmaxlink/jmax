.class public final Lio/ktor/websocket/internals/DeflaterUtilsKt;
.super Ljava/lang/Object;
.source "DeflaterUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeflaterUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeflaterUtils.kt\nio/ktor/websocket/internals/DeflaterUtilsKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 Pool.kt\nio/ktor/utils/io/pool/PoolKt\n*L\n1#1,85:1\n12#2,7:86\n19#2,4:98\n12#2,11:102\n12#2,7:113\n19#2,4:125\n159#3,5:93\n159#3,5:120\n*S KotlinDebug\n*F\n+ 1 DeflaterUtils.kt\nio/ktor/websocket/internals/DeflaterUtilsKt\n*L\n19#1:86,7\n19#1:98,4\n35#1:102,11\n45#1:113,7\n45#1:125,4\n20#1:93,5\n46#1:120,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0003\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a$\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u001a\u0014\u0010\u000e\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "EMPTY_CHUNK",
        "",
        "PADDED_EMPTY_CHUNK",
        "deflateFully",
        "Ljava/util/zip/Deflater;",
        "data",
        "deflateTo",
        "",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "deflater",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "flush",
        "",
        "inflateFully",
        "Ljava/util/zip/Inflater;",
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


# static fields
.field private static final EMPTY_CHUNK:[B

.field private static final PADDED_EMPTY_CHUNK:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/ktor/websocket/internals/DeflaterUtilsKt;->PADDED_EMPTY_CHUNK:[B

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lio/ktor/websocket/internals/DeflaterUtilsKt;->EMPTY_CHUNK:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static final deflateFully(Ljava/util/zip/Deflater;[B)[B
    .locals 13
    .param p0, "$this$deflateFully"    # Ljava/util/zip/Deflater;
    .param p1, "data"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 19
    const/4 v0, 0x0

    .line 86
    .local v0, "$i$f$buildPacket":I
    nop

    .line 90
    new-instance v1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 92
    move-object v4, v1

    .local v4, "$this$deflateFully_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v5, 0x0

    .line 20
    .local v5, "$i$a$-buildPacket-DeflaterUtilsKt$deflateFully$deflatedBytes$1":I
    :try_start_0
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v6

    .local v6, "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    const/4 v7, 0x0

    .line 93
    .local v7, "$i$f$useInstance":I
    invoke-interface {v6}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 94
    .local v8, "instance$iv":Ljava/lang/Object;
    nop

    .line 95
    :try_start_1
    move-object v9, v8

    check-cast v9, Ljava/nio/ByteBuffer;

    .local v9, "buffer":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    .line 21
    .local v10, "$i$a$-useInstance-DeflaterUtilsKt$deflateFully$deflatedBytes$1$1":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_0

    .line 22
    invoke-static {v4, p0, v9, v12}, Lio/ktor/websocket/internals/DeflaterUtilsKt;->deflateTo(Lio/ktor/utils/io/core/BytePacketBuilder;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Z)I

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v4, p0, v9, v3}, Lio/ktor/websocket/internals/DeflaterUtilsKt;->deflateTo(Lio/ktor/utils/io/core/BytePacketBuilder;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Z)I

    move-result v11

    if-nez v11, :cond_0

    .line 26
    nop

    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    .end local v10    # "$i$a$-useInstance-DeflaterUtilsKt$deflateFully$deflatedBytes$1$1":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    nop

    .line 97
    :try_start_2
    invoke-interface {v6, v8}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 95
    nop

    .line 27
    .end local v6    # "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v7    # "$i$f$useInstance":I
    .end local v8    # "instance$iv":Ljava/lang/Object;
    nop

    .line 92
    .end local v4    # "$this$deflateFully_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v5    # "$i$a$-buildPacket-DeflaterUtilsKt$deflateFully$deflatedBytes$1":I
    nop

    .line 98
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    move-object v0, v4

    .line 29
    .local v0, "deflatedBytes":Lio/ktor/utils/io/core/ByteReadPacket;
    sget-object v1, Lio/ktor/websocket/internals/DeflaterUtilsKt;->PADDED_EMPTY_CHUNK:[B

    invoke-static {v0, v1}, Lio/ktor/websocket/internals/BytePacketUtilsKt;->endsWith(Lio/ktor/utils/io/core/ByteReadPacket;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v1

    long-to-int v1, v1

    sget-object v2, Lio/ktor/websocket/internals/DeflaterUtilsKt;->EMPTY_CHUNK:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object v1

    move-object v2, v1

    .local v2, "it":[B
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-also-DeflaterUtilsKt$deflateFully$1":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 32
    nop

    .line 30
    .end local v2    # "it":[B
    .end local v3    # "$i$a$-also-DeflaterUtilsKt$deflateFully$1":I
    return-object v1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 102
    .local v1, "$i$f$buildPacket":I
    nop

    .line 106
    new-instance v4, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {v4, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    .local v4, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 108
    move-object v5, v4

    .local v5, "$this$deflateFully_u24lambda_u243":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v6, 0x0

    .line 36
    .local v6, "$i$a$-buildPacket-DeflaterUtilsKt$deflateFully$2":I
    :try_start_3
    invoke-virtual {v5, v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;)V

    .line 37
    invoke-virtual {v5, v12}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 38
    nop

    .line 108
    .end local v5    # "$this$deflateFully_u24lambda_u243":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v6    # "$i$a$-buildPacket-DeflaterUtilsKt$deflateFully$2":I
    nop

    .line 109
    invoke-virtual {v4}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    .end local v1    # "$i$f$buildPacket":I
    .end local v4    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    invoke-static {v5, v12, v3, v2}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v1

    .line 35
    return-object v1

    .line 110
    .restart local v1    # "$i$f$buildPacket":I
    .restart local v4    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_0
    move-exception v2

    .line 111
    .local v2, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v4}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 112
    throw v2

    .line 97
    .end local v2    # "t$iv":Ljava/lang/Throwable;
    .local v0, "$i$f$buildPacket":I
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .local v4, "$this$deflateFully_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    .local v5, "$i$a$-buildPacket-DeflaterUtilsKt$deflateFully$deflatedBytes$1":I
    .local v6, "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    .restart local v7    # "$i$f$useInstance":I
    .restart local v8    # "instance$iv":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-interface {v6, v8}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local p0    # "$this$deflateFully":Ljava/util/zip/Deflater;
    .end local p1    # "data":[B
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 99
    .end local v4    # "$this$deflateFully_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v5    # "$i$a$-buildPacket-DeflaterUtilsKt$deflateFully$deflatedBytes$1":I
    .end local v6    # "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v7    # "$i$f$useInstance":I
    .end local v8    # "instance$iv":Ljava/lang/Object;
    .restart local v0    # "$i$f$buildPacket":I
    .restart local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local p0    # "$this$deflateFully":Ljava/util/zip/Deflater;
    .restart local p1    # "data":[B
    :catchall_2
    move-exception v2

    .line 100
    .restart local v2    # "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 101
    throw v2
.end method

.method private static final deflateTo(Lio/ktor/utils/io/core/BytePacketBuilder;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Z)I
    .locals 4
    .param p0, "$this$deflateTo"    # Lio/ktor/utils/io/core/BytePacketBuilder;
    .param p1, "deflater"    # Ljava/util/zip/Deflater;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flush"    # Z

    .line 67
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    if-eqz p3, :cond_0

    .line 70
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 69
    :goto_0
    nop

    .line 75
    .local v0, "deflated":I
    if-nez v0, :cond_1

    .line 76
    const/4 v1, 0x0

    return v1

    .line 79
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Output;

    invoke-static {v1, p2}, Lio/ktor/utils/io/core/OutputArraysJVMKt;->writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V

    .line 83
    return v0
.end method

.method public static final inflateFully(Ljava/util/zip/Inflater;[B)[B
    .locals 18
    .param p0, "$this$inflateFully"    # Ljava/util/zip/Inflater;
    .param p1, "data"    # [B

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lio/ktor/websocket/internals/DeflaterUtilsKt;->EMPTY_CHUNK:[B

    invoke-static {v2, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v3

    .line 43
    .local v3, "dataToInflate":[B
    invoke-virtual {v1, v3}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 45
    const/4 v4, 0x0

    .line 113
    .local v4, "$i$f$buildPacket":I
    nop

    .line 117
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6, v5}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v0

    .line 118
    .local v7, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 119
    move-object v8, v7

    .local v8, "$this$inflateFully_u24lambda_u245":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v9, 0x0

    .line 46
    .local v9, "$i$a$-buildPacket-DeflaterUtilsKt$inflateFully$packet$1":I
    :try_start_0
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    move-object v10, v0

    .local v10, "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    const/4 v11, 0x0

    .line 120
    .local v11, "$i$f$useInstance":I
    invoke-interface {v10}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, v0

    .line 121
    .local v12, "instance$iv":Ljava/lang/Object;
    nop

    .line 122
    :try_start_1
    move-object v0, v12

    check-cast v0, Ljava/nio/ByteBuffer;

    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 47
    .local v13, "$i$a$-useInstance-DeflaterUtilsKt$inflateFully$packet$1$1":I
    array-length v14, v3

    int-to-long v14, v14

    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v16

    add-long v14, v14, v16

    .line 48
    .local v14, "limit":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v16

    cmp-long v16, v16, v14

    if-gez v16, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v5, v6, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 51
    .local v2, "inflated":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 54
    move-object v5, v8

    check-cast v5, Lio/ktor/utils/io/core/Output;

    invoke-static {v5, v0}, Lio/ktor/utils/io/core/OutputArraysJVMKt;->writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V

    move-object/from16 v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .end local v2    # "inflated":I
    goto :goto_0

    .line 56
    :cond_0
    nop

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v13    # "$i$a$-useInstance-DeflaterUtilsKt$inflateFully$packet$1$1":I
    .end local v14    # "limit":J
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    nop

    .line 124
    :try_start_2
    invoke-interface {v10, v12}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 122
    nop

    .line 57
    .end local v10    # "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v11    # "$i$f$useInstance":I
    .end local v12    # "instance$iv":Ljava/lang/Object;
    nop

    .line 119
    .end local v8    # "$this$inflateFully_u24lambda_u245":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v9    # "$i$a$-buildPacket-DeflaterUtilsKt$inflateFully$packet$1":I
    nop

    .line 125
    invoke-virtual {v7}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    .end local v4    # "$i$f$buildPacket":I
    .end local v7    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 59
    .local v0, "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v2, v5, v4}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v2

    return-object v2

    .line 124
    .end local v0    # "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    .restart local v4    # "$i$f$buildPacket":I
    .restart local v7    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v8    # "$this$inflateFully_u24lambda_u245":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v9    # "$i$a$-buildPacket-DeflaterUtilsKt$inflateFully$packet$1":I
    .restart local v10    # "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    .restart local v11    # "$i$f$useInstance":I
    .restart local v12    # "instance$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v10, v12}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .end local v3    # "dataToInflate":[B
    .end local v4    # "$i$f$buildPacket":I
    .end local v7    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local p0    # "$this$inflateFully":Ljava/util/zip/Inflater;
    .end local p1    # "data":[B
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    .end local v8    # "$this$inflateFully_u24lambda_u245":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v9    # "$i$a$-buildPacket-DeflaterUtilsKt$inflateFully$packet$1":I
    .end local v10    # "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v11    # "$i$f$useInstance":I
    .end local v12    # "instance$iv":Ljava/lang/Object;
    .restart local v3    # "dataToInflate":[B
    .restart local v4    # "$i$f$buildPacket":I
    .restart local v7    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local p0    # "$this$inflateFully":Ljava/util/zip/Inflater;
    .restart local p1    # "data":[B
    :catchall_1
    move-exception v0

    .line 127
    .local v0, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v7}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 128
    throw v0
.end method
