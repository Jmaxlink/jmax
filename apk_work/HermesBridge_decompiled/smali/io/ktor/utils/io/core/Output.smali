.class public abstract Lio/ktor/utils/io/core/Output;
.super Ljava/lang/Object;
.source "Output.kt"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n+ 2 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n+ 6 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 7 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 8 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 9 Input.kt\nio/ktor/utils/io/core/Input\n+ 10 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n*L\n1#1,576:1\n371#1,3:622\n374#1:653\n376#1,3:655\n55#1:708\n35#2,6:577\n41#2,3:584\n69#3:583\n69#3:588\n69#3:658\n69#3:659\n59#3:660\n74#3:661\n74#3:662\n59#3:663\n1#4:587\n1#4:654\n6#5,2:589\n99#6:591\n99#6:603\n99#6:634\n37#7,2:592\n37#7,2:597\n37#7,2:628\n319#8,3:594\n322#8,4:599\n326#8,18:604\n319#8,3:625\n322#8,4:630\n326#8,18:635\n77#9:664\n77#9:686\n8#10,21:665\n8#10,21:687\n*S KotlinDebug\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n*L\n176#1:622,3\n176#1:653\n176#1:655,3\n355#1:708\n65#1:577,6\n65#1:584,3\n66#1:583\n100#1:588\n237#1:658\n238#1:659\n242#1:660\n242#1:661\n260#1:662\n260#1:663\n176#1:654\n100#1:589,2\n137#1:591\n166#1:603\n177#1:634\n137#1:592,2\n166#1:597,2\n177#1:628,2\n166#1:594,3\n166#1:599,4\n166#1:604,18\n177#1:625,3\n177#1:630,4\n177#1:635,18\n308#1:664\n328#1:686\n313#1:665,21\n333#1:687,21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "\n    We\'re migrating to the new kotlinx-io library.\n    This declaration is deprecated and will be removed in Ktor 4.0.0\n    If you have any problems with migration, please contact us in \n    https://youtrack.jetbrains.com/issue/KTOR-6030/Migrate-to-new-kotlinx.io-library\n    "
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00060\u0001j\u0002`\u00022\u00060\u0003j\u0002`\u0004B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0005B\u0013\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\r\u0010\'\u001a\u00020(H\u0000\u00a2\u0006\u0002\u0008)J\u0008\u0010*\u001a\u00020(H\u0001J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-H\u0016J\"\u0010+\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u000cJ\u0012\u0010+\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u000102H\u0016J\"\u0010+\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000cH\u0016J\u0015\u00105\u001a\u00020(2\u0006\u0010\u0011\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u00086J \u00107\u001a\u00020(2\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u00108\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u000cH\u0002J\u0010\u0010:\u001a\u00020(2\u0006\u0010;\u001a\u00020-H\u0002J\u0008\u0010<\u001a\u00020\u0008H\u0002J\u0015\u0010=\u001a\u00020(2\u0006\u0010>\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008?J\u0006\u0010@\u001a\u00020(J\u0008\u0010A\u001a\u00020(H$J\u0006\u0010B\u001a\u00020(J-\u0010B\u001a\u00020(2\u0006\u0010C\u001a\u00020\u001c2\u0006\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020\u000cH$\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008F\u0010GJ\u0008\u0010H\u001a\u00020(H\u0002J\u0015\u0010I\u001a\u00020(2\u0006\u0010>\u001a\u00020\u0008H\u0010\u00a2\u0006\u0002\u0008JJ\u0010\u0010K\u001a\u00020\u00082\u0006\u0010L\u001a\u00020\u000cH\u0001J\u0006\u0010M\u001a\u00020(J\u000f\u0010N\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008OJ(\u0010P\u001a\u00020\u000c2\u0006\u0010Q\u001a\u00020\u000c2\u0012\u0010R\u001a\u000e\u0012\u0004\u0012\u00020T\u0012\u0004\u0012\u00020\u000c0SH\u0081\u0008\u00f8\u0001\u0003J\u000e\u0010U\u001a\u00020(2\u0006\u0010V\u001a\u00020WJ\u0010\u0010X\u001a\u00020(2\u0006\u0010V\u001a\u00020WH\u0002J\u0015\u0010Y\u001a\u00020(2\u0006\u0010Z\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008[J\u000e\u0010\\\u001a\u00020(2\u0006\u0010]\u001a\u00020^J\u0016\u0010\\\u001a\u00020(2\u0006\u0010_\u001a\u00020^2\u0006\u0010L\u001a\u00020\u000cJ\u0016\u0010\\\u001a\u00020(2\u0006\u0010_\u001a\u00020^2\u0006\u0010L\u001a\u00020`J&\u0010a\u001a\u00020(2\u0006\u0010b\u001a\u00020\u00082\u0006\u0010c\u001a\u00020\u00082\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0018\u0010d\u001a\u00020(2\u0006\u0010c\u001a\u00020\u00082\u0006\u0010b\u001a\u00020\u0008H\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000e\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R%\u0010\u001b\u001a\u00020\u001cX\u0080\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010!\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\"\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u000e\"\u0004\u0008$\u0010\u0019R\u0015\u0010%\u001a\u00020\u000c8\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u000e\u0082\u0002\u0016\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\n\u0005\u0008\u009920\u0001\u00a8\u0006e"
    }
    d2 = {
        "Lio/ktor/utils/io/core/Output;",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "Ljava/io/Closeable;",
        "Lio/ktor/utils/io/core/Closeable;",
        "()V",
        "pool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "(Lio/ktor/utils/io/pool/ObjectPool;)V",
        "_head",
        "_size",
        "",
        "get_size",
        "()I",
        "_tail",
        "chainedSize",
        "head",
        "getHead$ktor_io",
        "()Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "getPool",
        "()Lio/ktor/utils/io/pool/ObjectPool;",
        "tailEndExclusive",
        "getTailEndExclusive$ktor_io",
        "setTailEndExclusive$ktor_io",
        "(I)V",
        "tailInitialPosition",
        "tailMemory",
        "Lio/ktor/utils/io/bits/Memory;",
        "getTailMemory-SK3TCg8$ktor_io",
        "()Ljava/nio/ByteBuffer;",
        "setTailMemory-3GNKZMM$ktor_io",
        "(Ljava/nio/ByteBuffer;)V",
        "Ljava/nio/ByteBuffer;",
        "tailPosition",
        "getTailPosition$ktor_io",
        "setTailPosition$ktor_io",
        "tailRemaining",
        "getTailRemaining$ktor_io",
        "afterBytesStolen",
        "",
        "afterBytesStolen$ktor_io",
        "afterHeadWrite",
        "append",
        "value",
        "",
        "csq",
        "",
        "start",
        "end",
        "",
        "startIndex",
        "endIndex",
        "appendChain",
        "appendChain$ktor_io",
        "appendChainImpl",
        "newTail",
        "chainedSizeDelta",
        "appendCharFallback",
        "c",
        "appendNewChunk",
        "appendSingleChunk",
        "buffer",
        "appendSingleChunk$ktor_io",
        "close",
        "closeDestination",
        "flush",
        "source",
        "offset",
        "length",
        "flush-62zg_DM",
        "(Ljava/nio/ByteBuffer;II)V",
        "flushChain",
        "last",
        "last$ktor_io",
        "prepareWriteHead",
        "n",
        "release",
        "stealAll",
        "stealAll$ktor_io",
        "write",
        "size",
        "block",
        "Lkotlin/Function1;",
        "Lio/ktor/utils/io/core/Buffer;",
        "writeByte",
        "v",
        "",
        "writeByteFallback",
        "writeChunkBuffer",
        "chunkBuffer",
        "writeChunkBuffer$ktor_io",
        "writePacket",
        "packet",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "p",
        "",
        "writePacketMerging",
        "tail",
        "foreignStolen",
        "writePacketSlowPrepend",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private _tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private chainedSize:I

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private tailEndExclusive:I

.field private tailInitialPosition:I

.field private tailMemory:Ljava/nio/ByteBuffer;

.field private tailPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Output;-><init>(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1
    .param p1, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 42
    sget-object v0, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    .line 14
    return-void
.end method

.method private final appendChainImpl(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V
    .locals 4
    .param p1, "head"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "newTail"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p3, "chainedSizeDelta"    # I

    .line 114
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 115
    .local v0, "_tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 120
    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 121
    .local v1, "tailPosition":I
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWrittenUntilIndex(I)Z

    .line 122
    iget v2, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    iget v3, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    sub-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    .line 125
    .end local v1    # "tailPosition":I
    :goto_0
    iput-object p2, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 126
    iget v1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    add-int/2addr v1, p3

    iput v1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    .line 127
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v1

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 129
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v1

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    .line 130
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getLimit()I

    move-result v1

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    .line 131
    return-void
.end method

.method private final appendCharFallback(C)V
    .locals 18
    .param p1, "c"    # C

    .line 176
    const/4 v0, 0x3

    .local v0, "size$iv":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Output;
    move v2, v0

    .end local v0    # "size$iv":I
    .local v2, "size$iv":I
    const/4 v3, 0x0

    .line 622
    .local v3, "$i$f$write":I
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    .line 623
    .local v4, "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 624
    :try_start_0
    move-object v0, v4

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 177
    .local v5, "$i$a$-write-Output$appendCharFallback$1":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    .local v6, "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .local v7, "offset$iv":I
    move/from16 v8, p1

    .local v8, "v$iv":I
    const/4 v9, 0x0

    .line 625
    .local v9, "$i$f$putUtf8Char-62zg_DM":I
    nop

    .line 626
    const/16 v10, 0x80

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ltz v8, :cond_0

    if-ge v8, v10, :cond_0

    move v13, v11

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    if-eqz v13, :cond_1

    .line 627
    int-to-byte v10, v8

    .local v10, "value$iv$iv":B
    const/4 v13, 0x0

    .line 628
    .local v13, "$i$f$storeAt-impl":I
    invoke-virtual {v6, v7, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 630
    .end local v10    # "value$iv$iv":B
    .end local v13    # "$i$f$storeAt-impl":I
    move v10, v11

    goto/16 :goto_4

    .line 632
    :cond_1
    const/16 v13, 0x800

    if-gt v10, v8, :cond_2

    if-ge v8, v13, :cond_2

    move v14, v11

    goto :goto_1

    :cond_2
    move v14, v12

    :goto_1
    if-eqz v14, :cond_3

    .line 633
    shr-int/lit8 v13, v8, 0x6

    and-int/lit8 v13, v13, 0x1f

    or-int/lit16 v13, v13, 0xc0

    int-to-byte v13, v13

    .local v13, "value$iv$iv":B
    move-object v14, v6

    .local v14, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 634
    .local v15, "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 628
    .local v16, "$i$f$storeAt-impl":I
    invoke-virtual {v14, v7, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 634
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 635
    .end local v13    # "value$iv$iv":B
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    add-int/lit8 v13, v7, 0x1

    .local v13, "index$iv$iv":I
    and-int/lit8 v14, v8, 0x3f

    or-int/2addr v10, v14

    int-to-byte v10, v10

    .restart local v10    # "value$iv$iv":B
    move-object v14, v6

    .restart local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 634
    .restart local v15    # "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 628
    .restart local v16    # "$i$f$storeAt-impl":I
    invoke-virtual {v14, v13, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 634
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 636
    .end local v10    # "value$iv$iv":B
    .end local v13    # "index$iv$iv":I
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    const/4 v10, 0x2

    goto/16 :goto_4

    .line 638
    :cond_3
    const/high16 v14, 0x10000

    if-gt v13, v8, :cond_4

    if-ge v8, v14, :cond_4

    move v13, v11

    goto :goto_2

    :cond_4
    move v13, v12

    :goto_2
    if-eqz v13, :cond_5

    .line 639
    shr-int/lit8 v13, v8, 0xc

    and-int/lit8 v13, v13, 0xf

    or-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    .local v13, "value$iv$iv":B
    move-object v14, v6

    .restart local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 634
    .restart local v15    # "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 628
    .restart local v16    # "$i$f$storeAt-impl":I
    invoke-virtual {v14, v7, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 634
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 640
    .end local v13    # "value$iv$iv":B
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    add-int/lit8 v13, v7, 0x1

    .local v13, "index$iv$iv":I
    shr-int/lit8 v14, v8, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v10

    int-to-byte v14, v14

    .local v14, "value$iv$iv":B
    move-object v15, v6

    .local v15, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 634
    .local v16, "$i$f$set-62zg_DM":I
    const/16 v17, 0x0

    .line 628
    .local v17, "$i$f$storeAt-impl":I
    invoke-virtual {v15, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 634
    .end local v17    # "$i$f$storeAt-impl":I
    nop

    .line 641
    .end local v13    # "index$iv$iv":I
    .end local v14    # "value$iv$iv":B
    .end local v15    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$set-62zg_DM":I
    add-int/lit8 v13, v7, 0x2

    .restart local v13    # "index$iv$iv":I
    and-int/lit8 v14, v8, 0x3f

    or-int/2addr v10, v14

    int-to-byte v10, v10

    .restart local v10    # "value$iv$iv":B
    move-object v14, v6

    .local v14, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 634
    .local v15, "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 628
    .local v16, "$i$f$storeAt-impl":I
    invoke-virtual {v14, v13, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 634
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 642
    .end local v10    # "value$iv$iv":B
    .end local v13    # "index$iv$iv":I
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    const/4 v10, 0x3

    goto :goto_4

    .line 644
    :cond_5
    if-gt v14, v8, :cond_6

    const/high16 v13, 0x110000

    if-ge v8, v13, :cond_6

    move v13, v11

    goto :goto_3

    :cond_6
    move v13, v12

    :goto_3
    if-eqz v13, :cond_9

    .line 645
    shr-int/lit8 v13, v8, 0x12

    and-int/lit8 v13, v13, 0x7

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    .local v13, "value$iv$iv":B
    move-object v14, v6

    .restart local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 634
    .restart local v15    # "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 628
    .restart local v16    # "$i$f$storeAt-impl":I
    invoke-virtual {v14, v7, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 634
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 646
    .end local v13    # "value$iv$iv":B
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    add-int/lit8 v13, v7, 0x1

    .local v13, "index$iv$iv":I
    shr-int/lit8 v14, v8, 0xc

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v10

    int-to-byte v14, v14

    .local v14, "value$iv$iv":B
    move-object v15, v6

    .local v15, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 634
    .local v16, "$i$f$set-62zg_DM":I
    const/16 v17, 0x0

    .line 628
    .restart local v17    # "$i$f$storeAt-impl":I
    invoke-virtual {v15, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 634
    .end local v17    # "$i$f$storeAt-impl":I
    nop

    .line 647
    .end local v13    # "index$iv$iv":I
    .end local v14    # "value$iv$iv":B
    .end local v15    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$set-62zg_DM":I
    add-int/lit8 v13, v7, 0x2

    .restart local v13    # "index$iv$iv":I
    shr-int/lit8 v14, v8, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v10

    int-to-byte v14, v14

    .restart local v14    # "value$iv$iv":B
    move-object v15, v6

    .restart local v15    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 634
    .restart local v16    # "$i$f$set-62zg_DM":I
    const/16 v17, 0x0

    .line 628
    .restart local v17    # "$i$f$storeAt-impl":I
    invoke-virtual {v15, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 634
    .end local v17    # "$i$f$storeAt-impl":I
    nop

    .line 648
    .end local v13    # "index$iv$iv":I
    .end local v14    # "value$iv$iv":B
    .end local v15    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$set-62zg_DM":I
    add-int/lit8 v13, v7, 0x3

    .restart local v13    # "index$iv$iv":I
    and-int/lit8 v14, v8, 0x3f

    or-int/2addr v10, v14

    int-to-byte v10, v10

    .restart local v10    # "value$iv$iv":B
    move-object v14, v6

    .local v14, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 634
    .local v15, "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 628
    .local v16, "$i$f$storeAt-impl":I
    invoke-virtual {v14, v13, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 629
    nop

    .line 634
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 649
    .end local v10    # "value$iv$iv":B
    .end local v13    # "index$iv$iv":I
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    const/4 v10, 0x4

    .line 652
    :goto_4
    nop

    .line 177
    .end local v6    # "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "offset$iv":I
    .end local v8    # "v$iv":I
    .end local v9    # "$i$f$putUtf8Char-62zg_DM":I
    move v6, v10

    .line 178
    .local v6, "size":I
    invoke-virtual {v0, v6}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    nop

    .line 624
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-write-Output$appendCharFallback$1":I
    .end local v6    # "size":I
    move v0, v6

    .line 653
    .local v0, "result$iv":I
    if-ltz v0, :cond_7

    goto :goto_5

    :cond_7
    move v11, v12

    :goto_5
    if-eqz v11, :cond_8

    .line 655
    nop

    .line 657
    .end local v0    # "result$iv":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 655
    .restart local v0    # "result$iv":I
    nop

    .line 181
    .end local v0    # "result$iv":I
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "size$iv":I
    .end local v3    # "$i$f$write":I
    .end local v4    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return-void

    .line 654
    .restart local v0    # "result$iv":I
    .restart local v1    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .restart local v2    # "size$iv":I
    .restart local v3    # "$i$f$write":I
    .restart local v4    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_8
    const/4 v5, 0x0

    .line 653
    .local v5, "$i$a$-check-Output$write$1$iv":I
    :try_start_1
    const-string v6, "The returned value shouldn\'t be negative"

    .end local v5    # "$i$a$-check-Output$write$1$iv":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "size$iv":I
    .end local v3    # "$i$f$write":I
    .end local v4    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p1    # "c":C
    throw v5

    .line 651
    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v1    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .restart local v2    # "size$iv":I
    .restart local v3    # "$i$f$write":I
    .restart local v4    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v5, "$i$a$-write-Output$appendCharFallback$1":I
    .local v6, "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .restart local v7    # "offset$iv":I
    .restart local v8    # "v$iv":I
    .restart local v9    # "$i$f$putUtf8Char-62zg_DM":I
    .restart local p1    # "c":C
    :cond_9
    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v10, Lkotlin/KotlinNothingValueException;

    invoke-direct {v10}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "size$iv":I
    .end local v3    # "$i$f$write":I
    .end local v4    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p1    # "c":C
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-write-Output$appendCharFallback$1":I
    .end local v6    # "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "offset$iv":I
    .end local v8    # "v$iv":I
    .end local v9    # "$i$f$putUtf8Char-62zg_DM":I
    .restart local v1    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .restart local v2    # "size$iv":I
    .restart local v3    # "$i$f$write":I
    .restart local v4    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p1    # "c":C
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method private final appendNewChunk()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    .line 105
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 106
    .local v0, "new":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveEndGap(I)V

    .line 108
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 110
    return-object v0
.end method

.method private final flushChain()V
    .locals 12

    .line 62
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 64
    .local v0, "oldTail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    nop

    .line 65
    move-object v1, v0

    .local v1, "$this$forEachChunk$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v2, 0x0

    .line 577
    .local v2, "$i$f$forEachChunk":I
    nop

    .line 580
    move-object v3, v1

    .line 582
    .local v3, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    move-object v4, v3

    .local v4, "chunk":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v5, 0x0

    .line 66
    .local v5, "$i$a$-forEachChunk-Output$flushChain$1":I
    :try_start_0
    invoke-virtual {v4}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v7

    move-object v8, v4

    check-cast v8, Lio/ktor/utils/io/core/Buffer;

    .local v8, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 583
    .local v9, "$i$f$getReadRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 66
    .end local v8    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getReadRemaining":I
    invoke-virtual {p0, v6, v7, v10}, Lio/ktor/utils/io/core/Output;->flush-62zg_DM(Ljava/nio/ByteBuffer;II)V

    .line 67
    nop

    .line 582
    .end local v4    # "chunk":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v5    # "$i$a$-forEachChunk-Output$flushChain$1":I
    nop

    .line 584
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 586
    nop

    .line 69
    .end local v1    # "$this$forEachChunk$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "$i$f$forEachChunk":I
    .end local v3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 70
    nop

    .line 71
    return-void

    .line 584
    .restart local v1    # "$this$forEachChunk$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v2    # "$i$f$forEachChunk":I
    .restart local v3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    move-object v3, v4

    .line 585
    goto :goto_0

    .line 69
    .end local v1    # "$this$forEachChunk$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "$i$f$forEachChunk":I
    .end local v3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-static {v0, v2}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    throw v1
.end method

.method private final writeByteFallback(B)V
    .locals 1
    .param p1, "v"    # B

    .line 145
    invoke-direct {p0}, Lio/ktor/utils/io/core/Output;->appendNewChunk()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->writeByte(B)V

    .line 146
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 147
    return-void
.end method

.method private final writePacketMerging(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 12
    .param p1, "tail"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "foreignStolen"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p3, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    invoke-virtual {p1, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWrittenUntilIndex(I)Z

    .line 237
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 658
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 237
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    move v0, v2

    .line 238
    .local v0, "lastSize":I
    move-object v1, p2

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 659
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 238
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v1, v3

    .line 241
    .local v1, "nextSize":I
    invoke-static {}, Lio/ktor/utils/io/core/PacketJVMKt;->getPACKET_MAX_COPY_SIZE()I

    move-result v2

    .line 242
    .local v2, "maxCopySize":I
    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    move-object v4, p1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 660
    .local v5, "$i$f$getEndGap":I
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    sub-int/2addr v6, v7

    .line 242
    .end local v4    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getEndGap":I
    move-object v4, p1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .restart local v4    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 661
    .local v5, "$i$f$getWriteRemaining":I
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    sub-int/2addr v7, v8

    .line 242
    .end local v4    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getWriteRemaining":I
    add-int/2addr v6, v7

    if-gt v1, v6, :cond_0

    .line 243
    move v4, v1

    goto :goto_0

    .line 245
    :cond_0
    move v4, v3

    .line 242
    :goto_0
    nop

    .line 249
    .local v4, "appendSize":I
    if-ge v0, v2, :cond_1

    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getStartGap()I

    move-result v5

    if-gt v0, v5, :cond_1

    invoke-static {p2}, Lio/ktor/utils/io/core/internal/ChunkBufferKt;->isExclusivelyOwned(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    move v5, v0

    goto :goto_1

    .line 252
    :cond_1
    move v5, v3

    .line 249
    :goto_1
    nop

    .line 248
    nop

    .line 255
    .local v5, "prependSize":I
    if-ne v4, v3, :cond_2

    if-ne v5, v3, :cond_2

    .line 257
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/core/Output;->appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_4

    .line 258
    :cond_2
    if-eq v5, v3, :cond_6

    if-gt v4, v5, :cond_3

    goto :goto_3

    .line 267
    :cond_3
    if-eq v4, v3, :cond_5

    if-ge v5, v4, :cond_4

    goto :goto_2

    .line 270
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prep = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p1}, Lio/ktor/utils/io/core/Output;->writePacketSlowPrepend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_4

    .line 260
    :cond_6
    :goto_3
    move-object v3, p1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    move-object v6, p2

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    move-object v7, p1

    check-cast v7, Lio/ktor/utils/io/core/Buffer;

    .local v7, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 662
    .local v8, "$i$f$getWriteRemaining":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    sub-int/2addr v9, v10

    .line 260
    .end local v7    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$getWriteRemaining":I
    move-object v7, p1

    check-cast v7, Lio/ktor/utils/io/core/Buffer;

    .restart local v7    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 663
    .local v8, "$i$f$getEndGap":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v10

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    sub-int/2addr v10, v11

    .line 260
    .end local v7    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$getEndGap":I
    add-int/2addr v9, v10

    invoke-static {v3, v6, v9}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 261
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 262
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-eqz v3, :cond_7

    .local v3, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v6, 0x0

    .line 263
    .local v6, "$i$a$-let-Output$writePacketMerging$1":I
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Output;->appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 264
    nop

    .line 262
    .end local v3    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v6    # "$i$a$-let-Output$writePacketMerging$1":I
    nop

    .line 266
    :cond_7
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 272
    :goto_4
    return-void
.end method

.method private final writePacketSlowPrepend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 3
    .param p1, "foreignStolen"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "tail"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 278
    nop

    .line 280
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    move-object v1, p2

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferPrepend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;)I

    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v0, :cond_2

    .line 281
    .local v0, "_head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-ne v0, p2, :cond_0

    .line 282
    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 286
    :cond_0
    move-object v1, v0

    .line 287
    .local v1, "pre":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 288
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 289
    .local v2, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-eq v2, p2, :cond_1

    .line 290
    move-object v1, v2

    .end local v2    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {v1, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 296
    .end local v1    # "pre":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_1
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-virtual {p2, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 298
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 299
    return-void

    .line 280
    .end local v0    # "_head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "head should\'t be null since it is already handled in the fast-path"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final afterBytesStolen$ktor_io()V
    .locals 3

    .line 387
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getHead$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 388
    .local v0, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 389
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->resetForWrite()V

    .line 391
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveEndGap(I)V

    .line 392
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v1

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 393
    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    .line 394
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getLimit()I

    move-result v1

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    goto :goto_1

    .line 389
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_2
    :goto_1
    return-void
.end method

.method public final afterHeadWrite()V
    .locals 3

    .line 366
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v0, :cond_0

    .line 587
    .local v0, "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v1, 0x0

    .line 366
    .local v1, "$i$a$-let-Output$afterHeadWrite$1":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    iput v2, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 367
    .end local v0    # "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v1    # "$i$a$-let-Output$afterHeadWrite$1":I
    :cond_0
    return-void
.end method

.method public append(C)Lio/ktor/utils/io/core/Output;
    .locals 11
    .param p1, "value"    # C

    .line 164
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 165
    .local v0, "tailPosition":I
    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    sub-int/2addr v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_8

    .line 166
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    .local v1, "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    move v3, p1

    .local v3, "v$iv":I
    const/4 v4, 0x0

    .line 594
    .local v4, "$i$f$putUtf8Char-62zg_DM":I
    nop

    .line 595
    const/4 v5, 0x1

    const/16 v6, 0x80

    const/4 v7, 0x0

    if-ltz v3, :cond_0

    if-ge v3, v6, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-eqz v8, :cond_1

    .line 596
    int-to-byte v2, v3

    .local v2, "value$iv$iv":B
    const/4 v6, 0x0

    .line 597
    .local v6, "$i$f$storeAt-impl":I
    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 599
    .end local v2    # "value$iv$iv":B
    .end local v6    # "$i$f$storeAt-impl":I
    move v2, v5

    goto/16 :goto_4

    .line 601
    :cond_1
    const/16 v8, 0x800

    if-gt v6, v3, :cond_2

    if-ge v3, v8, :cond_2

    move v9, v5

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    if-eqz v9, :cond_3

    .line 602
    shr-int/lit8 v2, v3, 0x6

    and-int/lit8 v2, v2, 0x1f

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    .restart local v2    # "value$iv$iv":B
    move-object v5, v1

    .local v5, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 603
    .local v7, "$i$f$set-62zg_DM":I
    const/4 v8, 0x0

    .line 597
    .local v8, "$i$f$storeAt-impl":I
    invoke-virtual {v5, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 603
    .end local v8    # "$i$f$storeAt-impl":I
    nop

    .line 604
    .end local v2    # "value$iv$iv":B
    .end local v5    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "$i$f$set-62zg_DM":I
    add-int/lit8 v2, v0, 0x1

    .local v2, "index$iv$iv":I
    and-int/lit8 v5, v3, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .local v5, "value$iv$iv":B
    move-object v6, v1

    .local v6, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 603
    .restart local v7    # "$i$f$set-62zg_DM":I
    const/4 v8, 0x0

    .line 597
    .restart local v8    # "$i$f$storeAt-impl":I
    invoke-virtual {v6, v2, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 603
    .end local v8    # "$i$f$storeAt-impl":I
    nop

    .line 605
    .end local v2    # "index$iv$iv":I
    .end local v5    # "value$iv$iv":B
    .end local v6    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "$i$f$set-62zg_DM":I
    const/4 v2, 0x2

    goto/16 :goto_4

    .line 607
    :cond_3
    const/high16 v9, 0x10000

    if-gt v8, v3, :cond_4

    if-ge v3, v9, :cond_4

    move v8, v5

    goto :goto_2

    :cond_4
    move v8, v7

    :goto_2
    if-eqz v8, :cond_5

    .line 608
    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .restart local v5    # "value$iv$iv":B
    move-object v7, v1

    .local v7, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 603
    .local v8, "$i$f$set-62zg_DM":I
    const/4 v9, 0x0

    .line 597
    .local v9, "$i$f$storeAt-impl":I
    invoke-virtual {v7, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 603
    .end local v9    # "$i$f$storeAt-impl":I
    nop

    .line 609
    .end local v5    # "value$iv$iv":B
    .end local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$set-62zg_DM":I
    add-int/lit8 v5, v0, 0x1

    .local v5, "index$iv$iv":I
    shr-int/lit8 v7, v3, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .local v7, "value$iv$iv":B
    move-object v8, v1

    .local v8, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 603
    .local v9, "$i$f$set-62zg_DM":I
    const/4 v10, 0x0

    .line 597
    .local v10, "$i$f$storeAt-impl":I
    invoke-virtual {v8, v5, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 603
    .end local v10    # "$i$f$storeAt-impl":I
    nop

    .line 610
    .end local v5    # "index$iv$iv":I
    .end local v7    # "value$iv$iv":B
    .end local v8    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "$i$f$set-62zg_DM":I
    add-int/lit8 v5, v0, 0x2

    .restart local v5    # "index$iv$iv":I
    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .local v6, "value$iv$iv":B
    move-object v7, v1

    .local v7, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 603
    .local v8, "$i$f$set-62zg_DM":I
    const/4 v9, 0x0

    .line 597
    .local v9, "$i$f$storeAt-impl":I
    invoke-virtual {v7, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 603
    .end local v9    # "$i$f$storeAt-impl":I
    nop

    .line 611
    .end local v5    # "index$iv$iv":I
    .end local v6    # "value$iv$iv":B
    .end local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$set-62zg_DM":I
    goto :goto_4

    .line 613
    :cond_5
    if-gt v9, v3, :cond_6

    const/high16 v2, 0x110000

    if-ge v3, v2, :cond_6

    goto :goto_3

    :cond_6
    move v5, v7

    :goto_3
    if-eqz v5, :cond_7

    .line 614
    shr-int/lit8 v2, v3, 0x12

    and-int/lit8 v2, v2, 0x7

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    .local v2, "value$iv$iv":B
    move-object v5, v1

    .local v5, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 603
    .local v7, "$i$f$set-62zg_DM":I
    const/4 v8, 0x0

    .line 597
    .local v8, "$i$f$storeAt-impl":I
    invoke-virtual {v5, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 603
    .end local v8    # "$i$f$storeAt-impl":I
    nop

    .line 615
    .end local v2    # "value$iv$iv":B
    .end local v5    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "$i$f$set-62zg_DM":I
    add-int/lit8 v2, v0, 0x1

    .local v2, "index$iv$iv":I
    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .local v5, "value$iv$iv":B
    move-object v7, v1

    .local v7, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 603
    .local v8, "$i$f$set-62zg_DM":I
    const/4 v9, 0x0

    .line 597
    .restart local v9    # "$i$f$storeAt-impl":I
    invoke-virtual {v7, v2, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 603
    .end local v9    # "$i$f$storeAt-impl":I
    nop

    .line 616
    .end local v2    # "index$iv$iv":I
    .end local v5    # "value$iv$iv":B
    .end local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$set-62zg_DM":I
    add-int/lit8 v2, v0, 0x2

    .restart local v2    # "index$iv$iv":I
    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .restart local v5    # "value$iv$iv":B
    .restart local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 603
    .restart local v8    # "$i$f$set-62zg_DM":I
    const/4 v9, 0x0

    .line 597
    .restart local v9    # "$i$f$storeAt-impl":I
    invoke-virtual {v7, v2, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 603
    .end local v9    # "$i$f$storeAt-impl":I
    nop

    .line 617
    .end local v2    # "index$iv$iv":I
    .end local v5    # "value$iv$iv":B
    .end local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$set-62zg_DM":I
    add-int/lit8 v2, v0, 0x3

    .restart local v2    # "index$iv$iv":I
    and-int/lit8 v5, v3, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .restart local v5    # "value$iv$iv":B
    move-object v6, v1

    .local v6, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 603
    .local v7, "$i$f$set-62zg_DM":I
    const/4 v8, 0x0

    .line 597
    .local v8, "$i$f$storeAt-impl":I
    invoke-virtual {v6, v2, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 598
    nop

    .line 603
    .end local v8    # "$i$f$storeAt-impl":I
    nop

    .line 618
    .end local v2    # "index$iv$iv":I
    .end local v5    # "value$iv$iv":B
    .end local v6    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "$i$f$set-62zg_DM":I
    const/4 v2, 0x4

    .line 621
    :goto_4
    nop

    .line 166
    .end local v1    # "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "v$iv":I
    .end local v4    # "$i$f$putUtf8Char-62zg_DM":I
    move v1, v2

    .line 167
    .local v1, "size":I
    add-int v2, v0, v1

    iput v2, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 168
    return-object p0

    .line 620
    .local v1, "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .restart local v3    # "v$iv":I
    .restart local v4    # "$i$f$putUtf8Char-62zg_DM":I
    :cond_7
    invoke-static {v3}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 171
    .end local v1    # "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "v$iv":I
    .end local v4    # "$i$f$putUtf8Char-62zg_DM":I
    :cond_8
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Output;->appendCharFallback(C)V

    .line 172
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/Output;
    .locals 3
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 184
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 185
    const-string v1, "null"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    goto :goto_0

    .line 187
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    .line 189
    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 193
    if-nez p1, :cond_0

    .line 194
    const-string v0, "null"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p2, p3}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, p3, v0}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V

    .line 199
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "p0"    # C

    .line 12
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->append(C)Lio/ktor/utils/io/core/Output;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "p0"    # Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/Output;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "p0"    # Ljava/lang/CharSequence;
    .param p2, "p1"    # I
    .param p3, "p2"    # I

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    return-object v0
.end method

.method public final append([CII)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    const-string v0, "csq"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, p3, v0}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;[CIILjava/nio/charset/Charset;)V

    .line 343
    move-object v0, p0

    check-cast v0, Ljava/lang/Appendable;

    return-object v0
.end method

.method public final appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 7
    .param p1, "head"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 100
    .local v0, "tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v1

    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 588
    .local v4, "$i$f$getReadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getReadRemaining":I
    int-to-long v3, v5

    .line 100
    sub-long/2addr v1, v3

    .local v1, "$this$toIntOrFail$iv":J
    const-string v3, "total size increase"

    .local v3, "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 589
    .local v4, "$i$f$toIntOrFail":I
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    .line 590
    long-to-int v1, v1

    .line 100
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v4    # "$i$f$toIntOrFail":I
    nop

    .line 101
    .local v1, "chainedSizeDelta":I
    invoke-direct {p0, p1, v0, v1}, Lio/ktor/utils/io/core/Output;->appendChainImpl(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V

    .line 102
    return-void

    .line 589
    .local v1, "$this$toIntOrFail$iv":J
    .restart local v3    # "name$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v3}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5
.end method

.method public final appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 95
    invoke-direct {p0, p1, p1, v1}, Lio/ktor/utils/io/core/Output;->appendChainImpl(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V

    .line 96
    return-void

    .line 587
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "$i$a$-check-Output$appendSingleChunk$1":I
    nop

    .end local v0    # "$i$a$-check-Output$appendSingleChunk$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It should be a single buffer chunk."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    .line 153
    nop

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->closeDestination()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->closeDestination()V

    throw v0
.end method

.method protected abstract closeDestination()V
.end method

.method public final flush()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/ktor/utils/io/core/Output;->flushChain()V

    .line 59
    return-void
.end method

.method protected abstract flush-62zg_DM(Ljava/nio/ByteBuffer;II)V
.end method

.method public final getHead$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-nez v0, :cond_0

    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final getPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public final getTailEndExclusive$ktor_io()I
    .locals 1

    .line 46
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    return v0
.end method

.method public final getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getTailPosition$ktor_io()I
    .locals 1

    .line 44
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    return v0
.end method

.method public final getTailRemaining$ktor_io()I
    .locals 3

    const/4 v0, 0x0

    .line 55
    .local v0, "$i$f$getTailRemaining$ktor_io":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method protected final get_size()I
    .locals 3

    .line 21
    iget v0, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    iget v2, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public last$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1
    .param p1, "buffer"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 384
    return-void
.end method

.method public final prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 4
    .param p1, "n"    # I

    .line 355
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Output;
    const/4 v1, 0x0

    .line 708
    .local v1, "$i$f$getTailRemaining$ktor_io":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v3

    sub-int/2addr v2, v3

    .line 355
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .end local v1    # "$i$f$getTailRemaining$ktor_io":I
    if-lt v2, p1, :cond_0

    .line 356
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v0, :cond_0

    .local v0, "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v1, 0x0

    .line 357
    .local v1, "$i$a$-let-Output$prepareWriteHead$1":I
    iget v2, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWrittenUntilIndex(I)Z

    .line 358
    return-object v0

    .line 361
    .end local v0    # "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v1    # "$i$a$-let-Output$prepareWriteHead$1":I
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/core/Output;->appendNewChunk()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 0

    .line 350
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->close()V

    .line 351
    return-void
.end method

.method public final setTailEndExclusive$ktor_io(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 46
    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    return-void
.end method

.method public final setTailMemory-3GNKZMM$ktor_io(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/nio/ByteBuffer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final setTailPosition$ktor_io(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 44
    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    return-void
.end method

.method public final stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 4

    .line 78
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 80
    .local v0, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v2, :cond_1

    iget v3, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    invoke-virtual {v2, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWrittenUntilIndex(I)Z

    .line 82
    :cond_1
    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 83
    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 85
    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    .line 86
    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    .line 87
    iput v1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    .line 88
    sget-object v1, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    .line 90
    return-object v0
.end method

.method public final write(ILkotlin/jvm/functions/Function1;)I
    .locals 6
    .param p1, "size"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 371
    .local v0, "$i$f$write":I
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 372
    .local v1, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 373
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .local v3, "result":I
    if-ltz v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 376
    nop

    .end local v3    # "result":I
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 378
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move v2, v3

    .line 376
    .local v2, "result":I
    return v3

    .line 587
    .end local v2    # "result":I
    .restart local v3    # "result":I
    :cond_1
    const/4 v4, 0x0

    .line 374
    .local v4, "$i$a$-check-Output$write$1":I
    :try_start_1
    const-string v5, "The returned value shouldn\'t be negative"

    .end local v4    # "$i$a$-check-Output$write$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$write":I
    .end local v1    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p1    # "size":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    .end local v3    # "result":I
    .restart local v0    # "$i$f$write":I
    .restart local v1    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p1    # "size":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public final writeByte(B)V
    .locals 4
    .param p1, "v"    # B

    .line 134
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 135
    .local v0, "index":I
    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    if-ge v0, v1, :cond_0

    .line 136
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 137
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    .local v1, "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 591
    .local v2, "$i$f$set-62zg_DM":I
    const/4 v3, 0x0

    .line 592
    .local v3, "$i$f$storeAt-impl":I
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 593
    nop

    .line 591
    .end local v3    # "$i$f$storeAt-impl":I
    nop

    .line 138
    .end local v1    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$set-62zg_DM":I
    return-void

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Output;->writeByteFallback(B)V

    return-void
.end method

.method public final writeChunkBuffer$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2
    .param p1, "chunkBuffer"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "chunkBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 226
    .local v0, "_tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 228
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-direct {p0, v0, p1, v1}, Lio/ktor/utils/io/core/Output;->writePacketMerging(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 232
    return-void
.end method

.method public final writePacket(Lio/ktor/utils/io/core/ByteReadPacket;)V
    .locals 3
    .param p1, "packet"    # Lio/ktor/utils/io/core/ByteReadPacket;

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 207
    .local v0, "foreignStolen":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 213
    .local v1, "tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-nez v1, :cond_1

    .line 214
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 215
    return-void

    .line 218
    :cond_1
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lio/ktor/utils/io/core/Output;->writePacketMerging(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 219
    return-void
.end method

.method public final writePacket(Lio/ktor/utils/io/core/ByteReadPacket;I)V
    .locals 10
    .param p1, "p"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p2, "n"    # I

    const-string v0, "Buffer\'s position shouldn\'t be rewinded"

    const-string v1, "p"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    const/4 v1, 0x0

    .local v1, "remaining":I
    move v1, p2

    .line 307
    :goto_0
    if-lez v1, :cond_7

    .line 308
    move-object v2, p1

    check-cast v2, Lio/ktor/utils/io/core/Input;

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v3, 0x0

    .line 664
    .local v3, "$i$f$getHeadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 308
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v3    # "$i$f$getHeadRemaining":I
    move v2, v4

    .line 309
    .local v2, "headRemaining":I
    if-gt v2, v1, :cond_1

    .line 310
    sub-int/2addr v1, v2

    .line 311
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->steal$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Output;->appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v3, "Unexpected end of packet"

    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    move-object v3, p1

    check-cast v3, Lio/ktor/utils/io/core/Input;

    .line 665
    .local v3, "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x1

    .local v4, "n$iv":I
    const/4 v5, 0x0

    .line 666
    .local v5, "$i$f$read":I
    nop

    .line 670
    invoke-virtual {v3, v4}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 671
    .local v6, "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v7

    .line 672
    .local v7, "positionBefore$iv":I
    nop

    .line 673
    :try_start_0
    move-object v8, v6

    check-cast v8, Lio/ktor/utils/io/core/Buffer;

    .local v8, "view":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 314
    .local v9, "$i$a$-read$default-Output$writePacket$1":I
    invoke-static {p0, v8, v1}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    nop

    .line 673
    .end local v8    # "view":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$a$-read$default-Output$writePacket$1":I
    nop

    .line 675
    invoke-virtual {v6}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v8

    .line 676
    .local v8, "positionAfter$iv":I
    if-lt v8, v7, :cond_3

    .line 679
    invoke-virtual {v6}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v0

    if-ne v8, v0, :cond_2

    .line 680
    invoke-virtual {v3, v6}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 682
    :cond_2
    invoke-virtual {v3, v8}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 684
    .end local v8    # "positionAfter$iv":I
    :goto_1
    nop

    .line 685
    nop

    .line 316
    .end local v3    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "n$iv":I
    .end local v5    # "$i$f$read":I
    .end local v6    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v7    # "positionBefore$iv":I
    goto :goto_3

    .line 677
    .restart local v3    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "n$iv":I
    .restart local v5    # "$i$f$read":I
    .restart local v6    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v7    # "positionBefore$iv":I
    .restart local v8    # "positionAfter$iv":I
    :cond_3
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 675
    .end local v8    # "positionAfter$iv":I
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v9

    .line 676
    .local v9, "positionAfter$iv":I
    if-lt v9, v7, :cond_5

    .line 679
    invoke-virtual {v6}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v0

    if-ne v9, v0, :cond_4

    .line 680
    invoke-virtual {v3, v6}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_2

    .line 682
    :cond_4
    invoke-virtual {v3, v9}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .end local v9    # "positionAfter$iv":I
    :goto_2
    throw v8

    .line 677
    .restart local v9    # "positionAfter$iv":I
    :cond_5
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 670
    .end local v6    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v7    # "positionBefore$iv":I
    .end local v9    # "positionAfter$iv":I
    :cond_6
    invoke-static {v4}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 319
    .end local v2    # "headRemaining":I
    .end local v3    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "n$iv":I
    .end local v5    # "$i$f$read":I
    :cond_7
    :goto_3
    return-void
.end method

.method public final writePacket(Lio/ktor/utils/io/core/ByteReadPacket;J)V
    .locals 15
    .param p1, "p"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p2, "n"    # J

    move-object v1, p0

    move-object/from16 v2, p1

    const-string v3, "Buffer\'s position shouldn\'t be rewinded"

    const-string v0, "p"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    const-wide/16 v4, 0x0

    .local v4, "remaining":J
    move-wide/from16 v4, p2

    .line 327
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    .line 328
    move-object v0, v2

    check-cast v0, Lio/ktor/utils/io/core/Input;

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v6, 0x0

    .line 686
    .local v6, "$i$f$getHeadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v7

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v8

    sub-int/2addr v7, v8

    .line 328
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "$i$f$getHeadRemaining":I
    int-to-long v6, v7

    .line 329
    .local v6, "headRemaining":J
    cmp-long v0, v6, v4

    if-gtz v0, :cond_1

    .line 330
    sub-long/2addr v4, v6

    .line 331
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/ByteReadPacket;->steal$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v3, "Unexpected end of packet"

    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    move-object v8, v2

    check-cast v8, Lio/ktor/utils/io/core/Input;

    .line 687
    .local v8, "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    const/4 v9, 0x1

    .local v9, "n$iv":I
    const/4 v10, 0x0

    .line 688
    .local v10, "$i$f$read":I
    nop

    .line 692
    invoke-virtual {v8, v9}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v11, v0

    .line 693
    .local v11, "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v12

    .line 694
    .local v12, "positionBefore$iv":I
    nop

    .line 695
    :try_start_0
    move-object v0, v11

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "view":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 334
    .local v13, "$i$a$-read$default-Output$writePacket$2":I
    long-to-int v14, v4

    invoke-static {p0, v0, v14}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    nop

    .line 695
    .end local v0    # "view":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$a$-read$default-Output$writePacket$2":I
    nop

    .line 697
    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0

    .line 698
    .local v0, "positionAfter$iv":I
    if-lt v0, v12, :cond_3

    .line 701
    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 702
    invoke-virtual {v8, v11}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 704
    :cond_2
    invoke-virtual {v8, v0}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 706
    .end local v0    # "positionAfter$iv":I
    :goto_1
    nop

    .line 707
    nop

    .line 336
    .end local v8    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "n$iv":I
    .end local v10    # "$i$f$read":I
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "positionBefore$iv":I
    goto :goto_3

    .line 699
    .restart local v0    # "positionAfter$iv":I
    .restart local v8    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v9    # "n$iv":I
    .restart local v10    # "$i$f$read":I
    .restart local v11    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v12    # "positionBefore$iv":I
    :cond_3
    new-instance v13, Ljava/lang/IllegalStateException;

    invoke-direct {v13, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 697
    .end local v0    # "positionAfter$iv":I
    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v13

    .line 698
    .local v13, "positionAfter$iv":I
    if-lt v13, v12, :cond_5

    .line 701
    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v3

    if-ne v13, v3, :cond_4

    .line 702
    invoke-virtual {v8, v11}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_2

    .line 704
    :cond_4
    invoke-virtual {v8, v13}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .end local v13    # "positionAfter$iv":I
    :goto_2
    throw v0

    .line 699
    .restart local v13    # "positionAfter$iv":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "positionBefore$iv":I
    .end local v13    # "positionAfter$iv":I
    :cond_6
    invoke-static {v9}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 339
    .end local v6    # "headRemaining":J
    .end local v8    # "$this$read_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "n$iv":I
    .end local v10    # "$i$f$read":I
    :cond_7
    :goto_3
    return-void
.end method
