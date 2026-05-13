.class public final Lio/ktor/utils/io/core/ByteBuffersKt;
.super Ljava/lang/Object;
.source "ByteBuffers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBuffers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBuffers.kt\nio/ktor/utils/io/core/ByteBuffersKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 Output.kt\nio/ktor/utils/io/core/Output\n+ 4 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n*L\n1#1,117:1\n80#1,5:119\n85#1:127\n69#2:118\n371#3,3:124\n374#3,5:145\n371#3,3:150\n374#3:170\n376#3,3:172\n111#4,5:128\n116#4,3:138\n120#4:142\n111#4,5:153\n116#4,3:163\n120#4:167\n95#4,5:183\n100#4,3:193\n104#4:197\n95#4,5:219\n100#4,3:229\n104#4:233\n390#5,5:133\n395#5,2:143\n390#5,5:158\n395#5,2:168\n372#5,5:188\n377#5,2:198\n372#5,5:224\n377#5,2:234\n1#6:141\n1#6:166\n1#6:171\n1#6:196\n1#6:232\n1#6:247\n9#7,8:175\n18#7,11:200\n9#7,8:211\n18#7,11:236\n*S KotlinDebug\n*F\n+ 1 ByteBuffers.kt\nio/ktor/utils/io/core/ByteBuffersKt\n*L\n63#1:119,5\n63#1:127\n31#1:118\n63#1:124,3\n63#1:145,5\n84#1:150,3\n84#1:170\n84#1:172,3\n63#1:128,5\n63#1:138,3\n63#1:142\n85#1:153,5\n85#1:163,3\n85#1:167\n96#1:183,5\n96#1:193,3\n96#1:197\n109#1:219,5\n109#1:229,3\n109#1:233\n63#1:133,5\n63#1:143,2\n85#1:158,5\n85#1:168,2\n96#1:188,5\n96#1:198,2\n109#1:224,5\n109#1:234,2\n63#1:141\n85#1:166\n84#1:171\n96#1:196\n109#1:232\n95#1:175,8\n95#1:200,11\n108#1:211,8\n108#1:236,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u001d\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004H\u0082\u0010\u001a\u0012\u0010\t\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\n\u001a\u00020\u0007\u001a9\u0010\u000b\u001a\u00020\u000c*\u00020\u00052\u0006\u0010\r\u001a\u00020\u00042\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u000fH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u001a9\u0010\u000b\u001a\u00020\u000c*\u00020\u00102\u0006\u0010\r\u001a\u00020\u00042\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u000fH\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u001a\u0012\u0010\u0011\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\n\u001a\u00020\u0007\u001a9\u0010\u0012\u001a\u00020\u0004*\u00020\u00132\u0006\u0010\r\u001a\u00020\u00042\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u000fH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u001a9\u0010\u0014\u001a\u00020\u000c*\u00020\u00132\u0006\u0010\r\u001a\u00020\u00042\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u000fH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "hasArray",
        "",
        "Lio/ktor/utils/io/core/Buffer;",
        "readAsMuchAsPossible",
        "",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "bb",
        "Ljava/nio/ByteBuffer;",
        "copied",
        "readAvailable",
        "dst",
        "readDirect",
        "",
        "size",
        "block",
        "Lkotlin/Function1;",
        "Lio/ktor/utils/io/core/Input;",
        "readFully",
        "writeByteBufferDirect",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "writeDirect",
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
.method public static final hasArray(Lio/ktor/utils/io/core/Buffer;)Z
    .locals 3
    .param p0, "$this$hasArray"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 247
    .local v0, "it":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 116
    .local v1, "$i$a$-let-ByteBuffersKt$hasArray$1":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "it":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$a$-let-ByteBuffersKt$hasArray$1":I
    :goto_0
    return v2
.end method

.method private static final readAsMuchAsPossible(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;I)I
    .locals 6
    .param p0, "$this$readAsMuchAsPossible"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "copied"    # I

    .line 26
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 28
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/ByteReadPacket;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    return p2

    .line 30
    .local v0, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 31
    .local v1, "destinationCapacity":I
    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 118
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 31
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .line 33
    .local v2, "available":I
    if-lt v1, v2, :cond_2

    .line 34
    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v3, p1, v2}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->readFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;I)V

    .line 35
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/ByteReadPacket;->releaseHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 37
    add-int/2addr p2, v2

    goto :goto_0

    .line 39
    :cond_2
    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v3, p1, v1}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->readFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;I)V

    .line 40
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/ByteReadPacket;->setHeadPosition(I)V

    .line 41
    add-int v3, p2, v1

    .line 33
    return v3
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/ktor/utils/io/core/ByteBuffersKt;->readAsMuchAsPossible(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public static final readDirect(Lio/ktor/utils/io/core/ByteReadPacket;ILkotlin/jvm/functions/Function1;)V
    .locals 20
    .param p0, "$this$readDirect"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p1, "size"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "Buffer\'s position shouldn\'t be rewinded"

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 91
    .local v4, "$i$f$readDirect":I
    nop

    .line 95
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Input;

    .local v5, "$this$read$iv":Lio/ktor/utils/io/core/Input;
    const/4 v6, 0x0

    .line 175
    .local v6, "$i$f$read":I
    nop

    .line 179
    move/from16 v7, p1

    invoke-virtual {v5, v7}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v8, v0

    .line 180
    .local v8, "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v9

    .line 181
    .local v9, "positionBefore$iv":I
    nop

    .line 182
    :try_start_0
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 96
    .local v11, "$i$a$-read-ByteBuffersKt$readDirect$2":I
    move-object v12, v0

    .local v12, "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 183
    .local v13, "$i$f$readDirect":I
    nop

    .line 187
    move-object v14, v12

    .local v14, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 188
    .local v15, "$i$f$read":I
    nop

    .line 192
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v17

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v18

    .local v16, "memory$iv":Ljava/nio/ByteBuffer;
    move/from16 v19, v17

    .local v19, "start$iv":I
    move/from16 v17, v18

    .local v17, "endExclusive$iv":I
    move-object/from16 v18, v16

    .end local v16    # "memory$iv":Ljava/nio/ByteBuffer;
    .local v18, "memory$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 193
    .local v16, "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    move/from16 v10, v19

    move-object/from16 v19, v0

    .end local v0    # "it":Lio/ktor/utils/io/core/Buffer;
    .local v10, "start$iv":I
    .local v19, "it":Lio/ktor/utils/io/core/Buffer;
    sub-int v0, v17, v10

    move-object/from16 v1, v18

    .end local v18    # "memory$iv":Ljava/nio/ByteBuffer;
    .local v1, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-static {v1, v10, v0}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 194
    .local v0, "nioBuffer$iv":Ljava/nio/ByteBuffer;
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-object/from16 v18, v1

    .end local v1    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v18    # "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v17, v10

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 192
    .end local v0    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    .end local v17    # "endExclusive$iv":I
    .end local v18    # "memory$iv":Ljava/nio/ByteBuffer;
    move v0, v1

    .line 198
    .local v0, "rc$iv$iv":I
    invoke-virtual {v14, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    nop

    .line 187
    .end local v0    # "rc$iv$iv":I
    .end local v14    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$read":I
    nop

    .line 97
    .end local v12    # "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$readDirect":I
    nop

    .line 182
    .end local v11    # "$i$a$-read-ByteBuffersKt$readDirect$2":I
    .end local v19    # "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 200
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0

    .line 201
    .local v0, "positionAfter$iv":I
    if-lt v0, v9, :cond_2

    .line 204
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 205
    invoke-virtual {v5, v8}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {v5, v0}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .end local v0    # "positionAfter$iv":I
    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 209
    nop

    .line 210
    nop

    .line 98
    .end local v5    # "$this$read$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "$i$f$read":I
    .end local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "positionBefore$iv":I
    return-void

    .line 202
    .restart local v0    # "positionAfter$iv":I
    .restart local v5    # "$this$read$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "$i$f$read":I
    .restart local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v9    # "positionBefore$iv":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .local v0, "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "start$iv":I
    .restart local v11    # "$i$a$-read-ByteBuffersKt$readDirect$2":I
    .restart local v12    # "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$f$readDirect":I
    .restart local v14    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v15    # "$i$f$read":I
    .restart local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    .restart local v17    # "endExclusive$iv":I
    .restart local v18    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v19    # "it":Lio/ktor/utils/io/core/Buffer;
    :cond_3
    const/4 v1, 0x0

    .line 195
    .local v1, "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv":I
    :try_start_1
    const-string v2, "Buffer\'s limit change is not allowed"

    .end local v1    # "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "$i$f$readDirect":I
    .end local v5    # "$this$read$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "$i$f$read":I
    .end local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "positionBefore$iv":I
    .end local p0    # "$this$readDirect":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local p1    # "size":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local v0    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "$i$a$-read-ByteBuffersKt$readDirect$2":I
    .end local v12    # "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$readDirect":I
    .end local v14    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$read":I
    .end local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    .end local v17    # "endExclusive$iv":I
    .end local v18    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v19    # "it":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$readDirect":I
    .restart local v5    # "$this$read$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "$i$f$read":I
    .restart local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v9    # "positionBefore$iv":I
    .restart local p0    # "$this$readDirect":Lio/ktor/utils/io/core/ByteReadPacket;
    .restart local p1    # "size":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v1

    .line 201
    .local v1, "positionAfter$iv":I
    if-lt v1, v9, :cond_5

    .line 204
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 205
    invoke-virtual {v5, v8}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_2

    .line 207
    :cond_4
    invoke-virtual {v5, v1}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .end local v1    # "positionAfter$iv":I
    :goto_2
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0

    .line 202
    .restart local v1    # "positionAfter$iv":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    .end local v1    # "positionAfter$iv":I
    .end local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "positionBefore$iv":I
    :cond_6
    invoke-static/range {p1 .. p1}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public static final readDirect(Lio/ktor/utils/io/core/Input;ILkotlin/jvm/functions/Function1;)V
    .locals 22
    .param p0, "$this$readDirect"    # Lio/ktor/utils/io/core/Input;
    .param p1, "size"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use read {} instead."
    .end annotation

    move-object/from16 v1, p2

    const-string v2, "Buffer\'s position shouldn\'t be rewinded"

    const-string v0, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 104
    .local v4, "$i$f$readDirect":I
    nop

    .line 108
    move-object/from16 v5, p0

    .local v5, "$this$read$iv":Lio/ktor/utils/io/core/Input;
    const/4 v6, 0x0

    .line 211
    .local v6, "$i$f$read":I
    nop

    .line 215
    move/from16 v7, p1

    invoke-virtual {v5, v7}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v8, v0

    .line 216
    .local v8, "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v9

    .line 217
    .local v9, "positionBefore$iv":I
    nop

    .line 218
    :try_start_0
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "view":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 109
    .local v11, "$i$a$-read-ByteBuffersKt$readDirect$4":I
    move-object v12, v0

    .local v12, "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 219
    .local v13, "$i$f$readDirect":I
    nop

    .line 223
    move-object v14, v12

    .local v14, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 224
    .local v15, "$i$f$read":I
    nop

    .line 228
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v17

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v18

    .local v16, "memory$iv":Ljava/nio/ByteBuffer;
    move/from16 v19, v17

    .local v19, "start$iv":I
    move/from16 v17, v18

    .local v17, "endExclusive$iv":I
    move-object/from16 v18, v16

    .end local v16    # "memory$iv":Ljava/nio/ByteBuffer;
    .local v18, "memory$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 229
    .local v16, "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    move/from16 v10, v19

    move-object/from16 v19, v0

    .end local v0    # "view":Lio/ktor/utils/io/core/Buffer;
    .local v10, "start$iv":I
    .local v19, "view":Lio/ktor/utils/io/core/Buffer;
    sub-int v0, v17, v10

    move-object/from16 v3, v18

    .end local v18    # "memory$iv":Ljava/nio/ByteBuffer;
    .local v3, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-static {v3, v10, v0}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 230
    .local v0, "nioBuffer$iv":Ljava/nio/ByteBuffer;
    move-object/from16 v18, v0

    .local v18, "it":Ljava/nio/ByteBuffer;
    const/16 v20, 0x0

    .line 110
    .local v20, "$i$a$-readDirect-ByteBuffersKt$readDirect$4$1":I
    move-object/from16 v21, v3

    move-object/from16 v3, v18

    .end local v18    # "it":Ljava/nio/ByteBuffer;
    .local v3, "it":Ljava/nio/ByteBuffer;
    .local v21, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    nop

    .line 230
    .end local v3    # "it":Ljava/nio/ByteBuffer;
    .end local v20    # "$i$a$-readDirect-ByteBuffersKt$readDirect$4$1":I
    nop

    .line 231
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v1, v17, v10

    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 233
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 228
    .end local v0    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    .end local v17    # "endExclusive$iv":I
    .end local v21    # "memory$iv":Ljava/nio/ByteBuffer;
    move v0, v1

    .line 234
    .local v0, "rc$iv$iv":I
    invoke-virtual {v14, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    nop

    .line 223
    .end local v0    # "rc$iv$iv":I
    .end local v14    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$read":I
    nop

    .line 112
    .end local v12    # "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$readDirect":I
    nop

    .line 218
    .end local v11    # "$i$a$-read-ByteBuffersKt$readDirect$4":I
    .end local v19    # "view":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 236
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0

    .line 237
    .local v0, "positionAfter$iv":I
    if-lt v0, v9, :cond_2

    .line 240
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 241
    invoke-virtual {v5, v8}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {v5, v0}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .end local v0    # "positionAfter$iv":I
    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 245
    nop

    .line 246
    nop

    .line 113
    .end local v5    # "$this$read$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "$i$f$read":I
    .end local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "positionBefore$iv":I
    return-void

    .line 238
    .restart local v0    # "positionAfter$iv":I
    .restart local v5    # "$this$read$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "$i$f$read":I
    .restart local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v9    # "positionBefore$iv":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    .local v0, "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "start$iv":I
    .restart local v11    # "$i$a$-read-ByteBuffersKt$readDirect$4":I
    .restart local v12    # "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$f$readDirect":I
    .restart local v14    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v15    # "$i$f$read":I
    .restart local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    .restart local v17    # "endExclusive$iv":I
    .restart local v19    # "view":Lio/ktor/utils/io/core/Buffer;
    .restart local v21    # "memory$iv":Ljava/nio/ByteBuffer;
    :cond_3
    const/4 v1, 0x0

    .line 231
    .local v1, "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv":I
    :try_start_1
    const-string v3, "Buffer\'s limit change is not allowed"

    .end local v1    # "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "$i$f$readDirect":I
    .end local v5    # "$this$read$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "$i$f$read":I
    .end local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "positionBefore$iv":I
    .end local p0    # "$this$readDirect":Lio/ktor/utils/io/core/Input;
    .end local p1    # "size":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .end local v0    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "$i$a$-read-ByteBuffersKt$readDirect$4":I
    .end local v12    # "$this$readDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$readDirect":I
    .end local v14    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$read":I
    .end local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv":I
    .end local v17    # "endExclusive$iv":I
    .end local v19    # "view":Lio/ktor/utils/io/core/Buffer;
    .end local v21    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v4    # "$i$f$readDirect":I
    .restart local v5    # "$this$read$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "$i$f$read":I
    .restart local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v9    # "positionBefore$iv":I
    .restart local p0    # "$this$readDirect":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "size":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v1

    .line 237
    .local v1, "positionAfter$iv":I
    if-lt v1, v9, :cond_5

    .line 240
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 241
    invoke-virtual {v5, v8}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_2

    .line 243
    :cond_4
    invoke-virtual {v5, v1}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .end local v1    # "positionAfter$iv":I
    :goto_2
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0

    .line 238
    .restart local v1    # "positionAfter$iv":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    .end local v1    # "positionAfter$iv":I
    .end local v8    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "positionBefore$iv":I
    :cond_6
    invoke-static/range {p1 .. p1}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/ktor/utils/io/core/ByteBuffersKt;->readAsMuchAsPossible(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 19
    .local v0, "rc":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    return v0

    .line 20
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough data in packet to fill buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more bytes required"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final writeByteBufferDirect(Lio/ktor/utils/io/core/BytePacketBuilder;ILkotlin/jvm/functions/Function1;)I
    .locals 20
    .param p0, "$this$writeByteBufferDirect"    # Lio/ktor/utils/io/core/BytePacketBuilder;
    .param p1, "size"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 80
    .local v3, "$i$f$writeByteBufferDirect":I
    nop

    .line 84
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Output;

    .local v4, "this_$iv":Lio/ktor/utils/io/core/Output;
    const/4 v5, 0x0

    .line 150
    .local v5, "$i$f$write":I
    move/from16 v6, p1

    invoke-virtual {v4, v6}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    .line 151
    .local v7, "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 152
    :try_start_0
    move-object v0, v7

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 85
    .local v9, "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2":I
    move-object v10, v0

    .local v10, "$this$writeDirect$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 153
    .local v11, "$i$f$writeDirect":I
    nop

    .line 157
    move-object v12, v10

    .local v12, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 158
    .local v13, "$i$f$write":I
    nop

    .line 162
    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v16

    .local v14, "memory$iv":Ljava/nio/ByteBuffer;
    .local v15, "start$iv":I
    .local v16, "endExclusive$iv":I
    const/16 v17, 0x0

    .line 163
    .local v17, "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv":I
    sub-int v8, v16, v15

    invoke-static {v14, v15, v8}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 164
    .local v8, "nioBuffer$iv":Ljava/nio/ByteBuffer;
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-object/from16 v18, v0

    .end local v0    # "it":Lio/ktor/utils/io/core/Buffer;
    .local v18, "it":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int v1, v16, v15

    const/16 v19, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, v19

    :goto_0
    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 162
    .end local v8    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "start$iv":I
    .end local v16    # "endExclusive$iv":I
    .end local v17    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv":I
    nop

    .line 168
    .local v0, "rc$iv$iv":I
    invoke-virtual {v12, v0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    nop

    .line 157
    .end local v0    # "rc$iv$iv":I
    .end local v12    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$write":I
    nop

    .line 85
    .end local v10    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$f$writeDirect":I
    nop

    .line 152
    .end local v9    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2":I
    .end local v18    # "it":Lio/ktor/utils/io/core/Buffer;
    nop

    .line 170
    .local v0, "result$iv":I
    if-ltz v0, :cond_1

    const/16 v19, 0x1

    :cond_1
    if-eqz v19, :cond_2

    .line 172
    const/4 v1, 0x1

    .end local v0    # "result$iv":I
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 174
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move v1, v0

    .line 172
    .local v1, "result$iv":I
    nop

    .line 84
    .end local v1    # "result$iv":I
    .end local v4    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .end local v5    # "$i$f$write":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return v0

    .line 171
    .restart local v0    # "result$iv":I
    .restart local v4    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .restart local v5    # "$i$f$write":I
    .restart local v7    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_2
    const/4 v1, 0x0

    .line 170
    .local v1, "$i$a$-check-Output$write$1$iv":I
    :try_start_1
    const-string v8, "The returned value shouldn\'t be negative"

    .end local v1    # "$i$a$-check-Output$write$1$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "$i$f$writeByteBufferDirect":I
    .end local v4    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .end local v5    # "$i$f$write":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p0    # "$this$writeByteBufferDirect":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local p1    # "size":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v1

    .line 166
    .end local v0    # "result$iv":I
    .restart local v3    # "$i$f$writeByteBufferDirect":I
    .restart local v4    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .restart local v5    # "$i$f$write":I
    .restart local v7    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v8    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2":I
    .restart local v10    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v11    # "$i$f$writeDirect":I
    .restart local v12    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$f$write":I
    .restart local v14    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v15    # "start$iv":I
    .restart local v16    # "endExclusive$iv":I
    .restart local v17    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv":I
    .restart local v18    # "it":Lio/ktor/utils/io/core/Buffer;
    .restart local p0    # "$this$writeByteBufferDirect":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local p1    # "size":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :cond_3
    const/4 v0, 0x0

    .line 165
    .local v0, "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv":I
    const-string v1, "Buffer\'s limit change is not allowed"

    .end local v0    # "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "$i$f$writeByteBufferDirect":I
    .end local v4    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .end local v5    # "$i$f$write":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p0    # "$this$writeByteBufferDirect":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local p1    # "size":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v8    # "nioBuffer$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2":I
    .end local v10    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$f$writeDirect":I
    .end local v12    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$write":I
    .end local v14    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "start$iv":I
    .end local v16    # "endExclusive$iv":I
    .end local v17    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv":I
    .end local v18    # "it":Lio/ktor/utils/io/core/Buffer;
    .restart local v3    # "$i$f$writeByteBufferDirect":I
    .restart local v4    # "this_$iv":Lio/ktor/utils/io/core/Output;
    .restart local v5    # "$i$f$write":I
    .restart local v7    # "buffer$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p0    # "$this$writeByteBufferDirect":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local p1    # "size":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method public static final writeDirect(Lio/ktor/utils/io/core/BytePacketBuilder;ILkotlin/jvm/functions/Function1;)V
    .locals 21
    .param p0, "$this$writeDirect"    # Lio/ktor/utils/io/core/BytePacketBuilder;
    .param p1, "size"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 59
    .local v3, "$i$f$writeDirect":I
    nop

    .line 63
    move-object/from16 v4, p0

    .local v4, "$this$writeByteBufferDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v5, 0x0

    .line 119
    .local v5, "$i$f$writeByteBufferDirect":I
    nop

    .line 123
    move-object v6, v4

    check-cast v6, Lio/ktor/utils/io/core/Output;

    .local v6, "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v7, 0x0

    .line 124
    .local v7, "$i$f$write":I
    move/from16 v8, p1

    invoke-virtual {v6, v8}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 125
    .local v9, "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 126
    :try_start_0
    move-object v0, v9

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "it$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 127
    .local v11, "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    move-object v12, v0

    .local v12, "$this$writeDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 128
    .local v13, "$i$f$writeDirect":I
    nop

    .line 132
    move-object v14, v12

    .local v14, "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 133
    .local v15, "$i$f$write":I
    nop

    .line 137
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v17

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v18

    .local v16, "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v18, "endExclusive$iv$iv":I
    move/from16 v19, v17

    .local v19, "start$iv$iv":I
    move-object/from16 v17, v16

    .end local v16    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v17, "memory$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 138
    .local v16, "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    move/from16 v10, v19

    move-object/from16 v19, v0

    .end local v0    # "it$iv":Lio/ktor/utils/io/core/Buffer;
    .local v10, "start$iv$iv":I
    .local v19, "it$iv":Lio/ktor/utils/io/core/Buffer;
    sub-int v0, v18, v10

    move-object/from16 v2, v17

    .end local v17    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v2, "memory$iv$iv":Ljava/nio/ByteBuffer;
    invoke-static {v2, v10, v0}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 139
    .local v0, "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    move-object/from16 v17, v2

    .end local v2    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v17    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    sub-int v2, v18, v10

    const/16 v20, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v1, v20

    :goto_0
    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 137
    .end local v0    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv$iv":I
    .end local v16    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    .end local v17    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "endExclusive$iv$iv":I
    move v0, v1

    .line 143
    .local v0, "rc$iv$iv$iv":I
    invoke-virtual {v14, v0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    nop

    .line 132
    .end local v0    # "rc$iv$iv$iv":I
    .end local v14    # "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$write":I
    nop

    .line 127
    .end local v12    # "$this$writeDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$writeDirect":I
    nop

    .line 126
    .end local v11    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    .end local v19    # "it$iv":Lio/ktor/utils/io/core/Buffer;
    nop

    .line 145
    .local v0, "result$iv$iv":I
    if-ltz v0, :cond_1

    const/16 v20, 0x1

    :cond_1
    if-eqz v20, :cond_2

    .line 147
    const/4 v1, 0x1

    .end local v0    # "result$iv$iv":I
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 149
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 147
    .restart local v0    # "result$iv$iv":I
    nop

    .line 123
    .end local v0    # "result$iv$iv":I
    .end local v6    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v7    # "$i$f$write":I
    .end local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 64
    .end local v4    # "$this$writeByteBufferDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v5    # "$i$f$writeByteBufferDirect":I
    return-void

    .line 141
    .restart local v0    # "result$iv$iv":I
    .restart local v4    # "$this$writeByteBufferDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v5    # "$i$f$writeByteBufferDirect":I
    .restart local v6    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v7    # "$i$f$write":I
    .restart local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_2
    const/4 v1, 0x0

    .line 145
    .local v1, "$i$a$-check-Output$write$1$iv$iv":I
    :try_start_1
    const-string v2, "The returned value shouldn\'t be negative"

    .end local v1    # "$i$a$-check-Output$write$1$iv$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "$i$f$writeDirect":I
    .end local v4    # "$this$writeByteBufferDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v5    # "$i$f$writeByteBufferDirect":I
    .end local v6    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v7    # "$i$f$write":I
    .end local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p0    # "$this$writeDirect":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local p1    # "size":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v1

    .line 141
    .local v0, "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v3    # "$i$f$writeDirect":I
    .restart local v4    # "$this$writeByteBufferDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v5    # "$i$f$writeByteBufferDirect":I
    .restart local v6    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v7    # "$i$f$write":I
    .restart local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "start$iv$iv":I
    .restart local v11    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    .restart local v12    # "$this$writeDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$f$writeDirect":I
    .restart local v14    # "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v15    # "$i$f$write":I
    .restart local v16    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    .restart local v17    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v18    # "endExclusive$iv$iv":I
    .restart local v19    # "it$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local p0    # "$this$writeDirect":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local p1    # "size":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :cond_3
    const/4 v1, 0x0

    .line 140
    .local v1, "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv$iv":I
    const-string v2, "Buffer\'s limit change is not allowed"

    .end local v1    # "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "$i$f$writeDirect":I
    .end local v4    # "$this$writeByteBufferDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v5    # "$i$f$writeByteBufferDirect":I
    .end local v6    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v7    # "$i$f$write":I
    .end local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p0    # "$this$writeDirect":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local p1    # "size":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v0    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv$iv":I
    .end local v11    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    .end local v12    # "$this$writeDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$writeDirect":I
    .end local v14    # "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$write":I
    .end local v16    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    .end local v17    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "endExclusive$iv$iv":I
    .end local v19    # "it$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v3    # "$i$f$writeDirect":I
    .restart local v4    # "$this$writeByteBufferDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v5    # "$i$f$writeByteBufferDirect":I
    .restart local v6    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v7    # "$i$f$write":I
    .restart local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p0    # "$this$writeDirect":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local p1    # "size":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method
