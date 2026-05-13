.class public final Lio/ktor/utils/io/core/ScannerKt;
.super Ljava/lang/Object;
.source "Scanner.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scanner.kt\nio/ktor/utils/io/core/ScannerKt\n+ 2 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 4 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 5 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 6 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n*L\n1#1,222:1\n823#2,6:223\n829#2,13:230\n823#2,6:243\n829#2,13:250\n823#2,6:263\n829#2,13:270\n823#2,6:283\n829#2,13:290\n823#2,6:303\n829#2,13:310\n823#2,6:323\n829#2,13:330\n355#3:229\n355#3:249\n355#3:269\n355#3:289\n355#3:309\n355#3:329\n84#4:343\n84#4:345\n26#5:344\n26#5:346\n26#5:347\n26#5:350\n15#6,2:348\n*S KotlinDebug\n*F\n+ 1 Scanner.kt\nio/ktor/utils/io/core/ScannerKt\n*L\n13#1:223,6\n13#1:230,13\n30#1:243,6\n30#1:250,13\n48#1:263,6\n48#1:270,13\n76#1:283,6\n76#1:290,13\n93#1:303,6\n93#1:310,13\n111#1:323,6\n111#1:330,13\n16#1:229\n33#1:249\n52#1:269\n80#1:289\n96#1:309\n114#1:329\n131#1:343\n150#1:345\n131#1:344\n150#1:346\n195#1:347\n212#1:350\n202#1:348,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u001a,\u0010\t\u001a\u00020\u0001*\u00020\u00032\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0080\u0008\u00f8\u0001\u0000\u001a<\u0010\t\u001a\u00020\u0001*\u00020\u00032\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\u0008\u00f8\u0001\u0000\u001a\u0012\u0010\u0012\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u001a\u0010\u0015\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005\u001a\u001a\u0010\u0016\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e\u001a.\u0010\u0016\u001a\u00020\u0001*\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0001\u001a\"\u0010\u0017\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e\u001a6\u0010\u0017\u001a\u00020\u0001*\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0001\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "discardUntilDelimiterImplMemory",
        "",
        "buffer",
        "Lio/ktor/utils/io/core/Buffer;",
        "delimiter",
        "",
        "discardUntilDelimitersImplMemory",
        "delimiter1",
        "delimiter2",
        "copyUntil",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "dst",
        "Lio/ktor/utils/io/core/Output;",
        "",
        "offset",
        "length",
        "discardUntilDelimiter",
        "",
        "Lio/ktor/utils/io/core/Input;",
        "discardUntilDelimiters",
        "readUntilDelimiter",
        "readUntilDelimiters",
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
.method public static final copyUntil(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;Lio/ktor/utils/io/core/Output;)I
    .locals 5
    .param p0, "$this$copyUntil"    # Lio/ktor/utils/io/core/Buffer;
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

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 208
    .local v0, "$i$f$copyUntil":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    .line 209
    .local v1, "index":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    .line 210
    .local v2, "end":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 212
    .local v3, "memory":Ljava/nio/ByteBuffer;
    :goto_0
    if-eq v1, v2, :cond_1

    const/4 v4, 0x0

    .line 350
    .local v4, "$i$f$loadAt-impl":I
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 212
    .end local v4    # "$i$f$loadAt-impl":I
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 216
    goto :goto_0

    .line 213
    :cond_1
    :goto_1
    nop

    .line 218
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int v4, v1, v4

    .line 219
    .local v4, "size":I
    invoke-static {p2, p0, v4}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V

    .line 220
    return v4
.end method

.method public static final copyUntil(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;[BII)I
    .locals 7
    .param p0, "$this$copyUntil"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;[BII)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 191
    .local v0, "$i$f$copyUntil":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    .line 192
    .local v1, "readPosition":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    add-int v3, v1, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 193
    .local v2, "end":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 194
    .local v3, "memory":Ljava/nio/ByteBuffer;
    move v4, v1

    .local v4, "index":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 195
    const/4 v5, 0x0

    .line 347
    .local v5, "$i$f$loadAt-impl":I
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 195
    .end local v5    # "$i$f$loadAt-impl":I
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    move v2, v4

    .line 197
    goto :goto_1

    .line 194
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    .end local v4    # "index":I
    :cond_1
    :goto_1
    sub-int v4, v2, v1

    .line 202
    .local v4, "copySize":I
    move-object v5, v3

    .local v5, "$this$loadByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 348
    .local v6, "$i$f$loadByteArray-9zorpBc":I
    invoke-static {v5, p2, v1, v4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 349
    nop

    .line 203
    .end local v5    # "$this$loadByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .end local v6    # "$i$f$loadByteArray-9zorpBc":I
    return v4
.end method

.method public static final discardUntilDelimiter(Lio/ktor/utils/io/core/Input;B)J
    .locals 18
    .param p0, "$this$discardUntilDelimiter"    # Lio/ktor/utils/io/core/Input;
    .param p1, "delimiter"    # B

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    .local v2, "discardedTotal":J
    move-object/from16 v4, p0

    .local v4, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 223
    .local v5, "$i$f$takeWhile":I
    const/4 v0, 0x1

    .line 224
    .local v0, "release$iv":Z
    const/4 v6, 0x1

    invoke-static {v4, v6}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    if-nez v7, :cond_0

    move/from16 v10, p1

    goto :goto_4

    .line 226
    .local v7, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-wide/from16 v16, v2

    move v2, v0

    move-object v3, v7

    move-wide/from16 v7, v16

    .line 228
    .end local v0    # "release$iv":Z
    .local v2, "release$iv":Z
    .local v3, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v7, "discardedTotal":J
    :goto_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Lio/ktor/utils/io/core/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v0, "chunk":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 14
    .local v9, "$i$a$-takeWhile-ScannerKt$discardUntilDelimiter$1":I
    move/from16 v10, p1

    :try_start_1
    invoke-static {v0, v10}, Lio/ktor/utils/io/core/ScannerJVMKt;->discardUntilDelimiterImpl(Lio/ktor/utils/io/core/Buffer;B)I

    move-result v11

    .line 15
    .local v11, "discarded":I
    int-to-long v12, v11

    add-long/2addr v7, v12

    .line 16
    const/4 v12, 0x0

    if-lez v11, :cond_2

    move-object v13, v0

    .local v13, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 229
    .local v14, "$i$f$canRead":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    if-le v15, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v12

    .end local v13    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$canRead":I
    :goto_1
    if-nez v6, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 16
    :goto_2
    nop

    .line 228
    .end local v0    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$a$-takeWhile-ScannerKt$discardUntilDelimiter$1":I
    .end local v11    # "discarded":I
    if-nez v12, :cond_3

    .line 230
    goto :goto_3

    .line 232
    :cond_3
    const/4 v2, 0x0

    .line 233
    invoke-static {v4, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    .line 238
    :goto_3
    if-eqz v2, :cond_4

    .line 239
    invoke-static {v4, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 241
    :cond_4
    nop

    .line 242
    move-wide v2, v7

    .line 19
    .end local v3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v5    # "$i$f$takeWhile":I
    .end local v7    # "discardedTotal":J
    .local v2, "discardedTotal":J
    :goto_4
    return-wide v2

    .line 234
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v2, "release$iv":Z
    .restart local v3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v4    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$takeWhile":I
    .restart local v7    # "discardedTotal":J
    :cond_5
    move-object v3, v0

    .line 235
    const/4 v2, 0x1

    .line 236
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v6, 0x1

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v10, p1

    :goto_5
    if-eqz v2, :cond_6

    .line 239
    invoke-static {v4, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_6
    throw v0
.end method

.method public static final discardUntilDelimiterImplMemory(Lio/ktor/utils/io/core/Buffer;B)I
    .locals 7
    .param p0, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter"    # B

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    .line 126
    .local v0, "start":I
    move v1, v0

    .line 127
    .local v1, "i":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    .line 128
    .local v2, "limit":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 130
    .local v3, "memory":Ljava/nio/ByteBuffer;
    :goto_0
    if-ge v1, v2, :cond_0

    .line 131
    move-object v4, v3

    .local v4, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 343
    .local v5, "$i$f$get-eY85DW0":I
    const/4 v6, 0x0

    .line 344
    .local v6, "$i$f$loadAt-impl":I
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    .line 343
    .end local v6    # "$i$f$loadAt-impl":I
    nop

    .line 131
    .end local v4    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$get-eY85DW0":I
    if-eq v6, p1, :cond_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    .line 136
    sub-int v4, v1, v0

    return v4
.end method

.method public static final discardUntilDelimiters(Lio/ktor/utils/io/core/Input;BB)J
    .locals 18
    .param p0, "$this$discardUntilDelimiters"    # Lio/ktor/utils/io/core/Input;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-wide/16 v2, 0x0

    .line 30
    .local v2, "discardedTotal":J
    move-object/from16 v4, p0

    .local v4, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 243
    .local v5, "$i$f$takeWhile":I
    const/4 v0, 0x1

    .line 244
    .local v0, "release$iv":Z
    const/4 v6, 0x1

    invoke-static {v4, v6}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    if-nez v7, :cond_0

    move/from16 v10, p1

    move/from16 v11, p2

    goto :goto_4

    .line 246
    .local v7, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-wide/from16 v16, v2

    move v2, v0

    move-object v3, v7

    move-wide/from16 v7, v16

    .line 248
    .end local v0    # "release$iv":Z
    .local v2, "release$iv":Z
    .local v3, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v7, "discardedTotal":J
    :goto_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Lio/ktor/utils/io/core/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v0, "chunk":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 31
    .local v9, "$i$a$-takeWhile-ScannerKt$discardUntilDelimiters$1":I
    move/from16 v10, p1

    move/from16 v11, p2

    :try_start_1
    invoke-static {v0, v10, v11}, Lio/ktor/utils/io/core/ScannerJVMKt;->discardUntilDelimitersImpl(Lio/ktor/utils/io/core/Buffer;BB)I

    move-result v12

    .line 32
    .local v12, "discarded":I
    int-to-long v13, v12

    add-long/2addr v7, v13

    .line 33
    if-lez v12, :cond_2

    move-object v14, v0

    .local v14, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 249
    .local v15, "$i$f$canRead":I
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13

    if-le v6, v13, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .end local v14    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$canRead":I
    :goto_1
    if-nez v6, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 33
    :goto_2
    nop

    .line 248
    .end local v0    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$a$-takeWhile-ScannerKt$discardUntilDelimiters$1":I
    .end local v12    # "discarded":I
    if-nez v13, :cond_3

    .line 250
    goto :goto_3

    .line 252
    :cond_3
    const/4 v2, 0x0

    .line 253
    invoke-static {v4, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    .line 258
    :goto_3
    if-eqz v2, :cond_4

    .line 259
    invoke-static {v4, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 261
    :cond_4
    nop

    .line 262
    move-wide v2, v7

    .line 36
    .end local v3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v5    # "$i$f$takeWhile":I
    .end local v7    # "discardedTotal":J
    .local v2, "discardedTotal":J
    :goto_4
    return-wide v2

    .line 254
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v2, "release$iv":Z
    .restart local v3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v4    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$takeWhile":I
    .restart local v7    # "discardedTotal":J
    :cond_5
    move-object v3, v0

    .line 255
    const/4 v2, 0x1

    .line 256
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v6, 0x1

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v10, p1

    move/from16 v11, p2

    :goto_5
    if-eqz v2, :cond_6

    .line 259
    invoke-static {v4, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_6
    throw v0
.end method

.method public static final discardUntilDelimitersImplMemory(Lio/ktor/utils/io/core/Buffer;BB)I
    .locals 7
    .param p0, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    .line 145
    .local v0, "start":I
    move v1, v0

    .line 146
    .local v1, "i":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    .line 147
    .local v2, "limit":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 149
    .local v3, "memory":Ljava/nio/ByteBuffer;
    :goto_0
    if-ge v1, v2, :cond_1

    .line 150
    move-object v4, v3

    .local v4, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 345
    .local v5, "$i$f$get-eY85DW0":I
    const/4 v6, 0x0

    .line 346
    .local v6, "$i$f$loadAt-impl":I
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    .line 345
    .end local v6    # "$i$f$loadAt-impl":I
    nop

    .line 150
    .end local v4    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$get-eY85DW0":I
    move v4, v6

    .line 151
    .local v4, "v":B
    if-eq v4, p1, :cond_1

    if-ne v4, p2, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    nop

    .end local v4    # "v":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    .line 156
    sub-int v4, v1, v0

    return v4
.end method

.method public static final readUntilDelimiter(Lio/ktor/utils/io/core/Input;B[BII)I
    .locals 16
    .param p0, "$this$readUntilDelimiter"    # Lio/ktor/utils/io/core/Input;
    .param p1, "delimiter"    # B
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    move-object/from16 v1, p2

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .local v0, "currentOffset":I
    move/from16 v0, p3

    .line 46
    const/4 v3, 0x0

    .local v3, "dstRemaining":I
    move/from16 v3, p4

    .line 48
    move-object/from16 v4, p0

    .local v4, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 263
    .local v5, "$i$f$takeWhile":I
    const/4 v6, 0x1

    .line 264
    .local v6, "release$iv":Z
    const/4 v7, 0x1

    invoke-static {v4, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    if-nez v8, :cond_0

    move/from16 v11, p1

    goto :goto_4

    .line 266
    .local v8, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v9, v8

    move v8, v6

    move v6, v3

    move v3, v0

    .line 268
    .end local v0    # "currentOffset":I
    .local v3, "currentOffset":I
    .local v6, "dstRemaining":I
    .local v8, "release$iv":Z
    .local v9, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v9

    check-cast v0, Lio/ktor/utils/io/core/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v0, "chunk":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 49
    .local v10, "$i$a$-takeWhile-ScannerKt$readUntilDelimiter$1":I
    move/from16 v11, p1

    :try_start_1
    invoke-static {v0, v11, v1, v3, v6}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterImpl(Lio/ktor/utils/io/core/Buffer;B[BII)I

    move-result v12

    .line 50
    .local v12, "copied":I
    add-int/2addr v3, v12

    .line 51
    sub-int/2addr v6, v12

    .line 52
    if-lez v6, :cond_2

    move-object v14, v0

    .local v14, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 269
    .local v15, "$i$f$canRead":I
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13

    if-le v7, v13, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .end local v14    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$canRead":I
    :goto_1
    if-nez v7, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 52
    :goto_2
    nop

    .line 268
    .end local v0    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$i$a$-takeWhile-ScannerKt$readUntilDelimiter$1":I
    .end local v12    # "copied":I
    if-nez v13, :cond_3

    .line 270
    goto :goto_3

    .line 272
    :cond_3
    const/4 v8, 0x0

    .line 273
    invoke-static {v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    .line 278
    :goto_3
    if-eqz v8, :cond_4

    .line 279
    invoke-static {v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 281
    :cond_4
    nop

    .line 282
    move v0, v3

    move v3, v6

    .line 55
    .end local v4    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v5    # "$i$f$takeWhile":I
    .end local v6    # "dstRemaining":I
    .end local v8    # "release$iv":Z
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "currentOffset":I
    .local v3, "dstRemaining":I
    :goto_4
    sub-int v4, v0, p3

    return v4

    .line 274
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v3, "currentOffset":I
    .restart local v4    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$takeWhile":I
    .restart local v6    # "dstRemaining":I
    .restart local v8    # "release$iv":Z
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_5
    move-object v9, v0

    .line 275
    const/4 v8, 0x1

    .line 276
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v7, 0x1

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v11, p1

    :goto_5
    if-eqz v8, :cond_6

    .line 279
    invoke-static {v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_6
    throw v0
.end method

.method public static final readUntilDelimiter(Lio/ktor/utils/io/core/Input;BLio/ktor/utils/io/core/Output;)J
    .locals 18
    .param p0, "$this$readUntilDelimiter"    # Lio/ktor/utils/io/core/Input;
    .param p1, "delimiter"    # B
    .param p2, "dst"    # Lio/ktor/utils/io/core/Output;

    move-object/from16 v1, p2

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-wide/16 v3, 0x0

    .line 93
    .local v3, "copiedTotal":J
    move-object/from16 v5, p0

    .local v5, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v6, 0x0

    .line 303
    .local v6, "$i$f$takeWhile":I
    const/4 v0, 0x1

    .line 304
    .local v0, "release$iv":Z
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    if-nez v8, :cond_0

    move/from16 v11, p1

    goto :goto_3

    .line 306
    .local v8, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-wide/from16 v16, v3

    move v3, v0

    move-object v4, v8

    move-wide/from16 v8, v16

    .line 308
    .end local v0    # "release$iv":Z
    .local v3, "release$iv":Z
    .local v4, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v8, "copiedTotal":J
    :goto_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Lio/ktor/utils/io/core/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v0, "chunk":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 94
    .local v10, "$i$a$-takeWhile-ScannerKt$readUntilDelimiter$2":I
    move/from16 v11, p1

    :try_start_1
    invoke-static {v0, v11, v1}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterImpl(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I

    move-result v12

    .line 95
    .local v12, "copied":I
    int-to-long v13, v12

    add-long/2addr v8, v13

    .line 96
    move-object v13, v0

    .local v13, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 309
    .local v14, "$i$f$canRead":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v7

    if-le v15, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .end local v13    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$canRead":I
    :goto_1
    const/4 v13, 0x1

    .line 96
    xor-int/2addr v7, v13

    .line 308
    .end local v0    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$i$a$-takeWhile-ScannerKt$readUntilDelimiter$2":I
    .end local v12    # "copied":I
    if-nez v7, :cond_2

    .line 310
    goto :goto_2

    .line 312
    :cond_2
    const/4 v3, 0x0

    .line 313
    invoke-static {v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    .line 318
    :goto_2
    if-eqz v3, :cond_3

    .line 319
    invoke-static {v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 321
    :cond_3
    nop

    .line 322
    move-wide v3, v8

    .line 99
    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v5    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "$i$f$takeWhile":I
    .end local v8    # "copiedTotal":J
    .local v3, "copiedTotal":J
    :goto_3
    return-wide v3

    .line 314
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v3, "release$iv":Z
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v5    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "$i$f$takeWhile":I
    .restart local v8    # "copiedTotal":J
    :cond_4
    move-object v4, v0

    .line 315
    const/4 v3, 0x1

    .line 316
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move v7, v13

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v11, p1

    :goto_4
    if-eqz v3, :cond_5

    .line 319
    invoke-static {v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_5
    throw v0
.end method

.method public static synthetic readUntilDelimiter$default(Lio/ktor/utils/io/core/Input;B[BIIILjava/lang/Object;)I
    .locals 0

    .line 44
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    array-length p4, p2

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/ScannerKt;->readUntilDelimiter(Lio/ktor/utils/io/core/Input;B[BII)I

    move-result p0

    return p0
.end method

.method public static final readUntilDelimiters(Lio/ktor/utils/io/core/Input;BB[BII)I
    .locals 20
    .param p0, "$this$readUntilDelimiters"    # Lio/ktor/utils/io/core/Input;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B
    .param p3, "dst"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move/from16 v11, p2

    if-ne v8, v11, :cond_0

    move/from16 v12, p5

    invoke-static {v1, v8, v9, v10, v12}, Lio/ktor/utils/io/core/ScannerKt;->readUntilDelimiter(Lio/ktor/utils/io/core/Input;B[BII)I

    move-result v0

    return v0

    .line 73
    :cond_0
    move/from16 v12, p5

    const/4 v0, 0x0

    .local v0, "currentOffset":I
    move/from16 v0, p4

    .line 74
    const/4 v2, 0x0

    .local v2, "dstRemaining":I
    move/from16 v2, p5

    .line 76
    move-object/from16 v13, p0

    .local v13, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v14, 0x0

    .line 283
    .local v14, "$i$f$takeWhile":I
    const/4 v3, 0x1

    .line 284
    .local v3, "release$iv":Z
    const/4 v15, 0x1

    invoke-static {v13, v15}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_4

    .line 286
    .local v4, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move-object v7, v4

    .line 288
    .end local v0    # "currentOffset":I
    .end local v2    # "dstRemaining":I
    .end local v3    # "release$iv":Z
    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v7, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v16, "currentOffset":I
    .local v17, "dstRemaining":I
    .local v18, "release$iv":Z
    :goto_0
    :try_start_0
    move-object v2, v7

    check-cast v2, Lio/ktor/utils/io/core/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v2, "chunk":Lio/ktor/utils/io/core/Buffer;
    const/4 v0, 0x0

    .line 77
    .local v0, "$i$a$-takeWhile-ScannerKt$readUntilDelimiters$1":I
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, v16

    move-object v15, v7

    .end local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v15, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move/from16 v7, v17

    :try_start_1
    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersImpl(Lio/ktor/utils/io/core/Buffer;BB[BII)I

    move-result v3

    .line 78
    .local v3, "copied":I
    add-int v16, v16, v3

    .line 79
    sub-int v17, v17, v3

    .line 80
    move-object v4, v2

    .local v4, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 289
    .local v5, "$i$f$canRead":I
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v7

    const/16 v19, 0x0

    if-le v6, v7, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move/from16 v4, v19

    .end local v4    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$canRead":I
    :goto_1
    if-nez v4, :cond_3

    .line 80
    if-lez v17, :cond_3

    const/16 v19, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 288
    .end local v0    # "$i$a$-takeWhile-ScannerKt$readUntilDelimiters$1":I
    .end local v2    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "copied":I
    :goto_2
    if-nez v19, :cond_4

    .line 290
    goto :goto_3

    .line 292
    :cond_4
    const/16 v18, 0x0

    .line 293
    invoke-static {v13, v15}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_6

    .line 298
    :goto_3
    if-eqz v18, :cond_5

    .line 299
    invoke-static {v13, v15}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 301
    :cond_5
    nop

    .line 302
    move/from16 v0, v16

    move/from16 v2, v17

    .line 83
    .end local v13    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v14    # "$i$f$takeWhile":I
    .end local v15    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v16    # "currentOffset":I
    .end local v17    # "dstRemaining":I
    .end local v18    # "release$iv":Z
    .local v0, "currentOffset":I
    .local v2, "dstRemaining":I
    :goto_4
    sub-int v3, v0, v10

    return v3

    .line 294
    .end local v2    # "dstRemaining":I
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v14    # "$i$f$takeWhile":I
    .restart local v15    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v16    # "currentOffset":I
    .restart local v17    # "dstRemaining":I
    .restart local v18    # "release$iv":Z
    :cond_6
    move-object v7, v0

    .line 295
    .end local v15    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/16 v18, 0x1

    .line 296
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v15, 0x1

    goto :goto_0

    .line 298
    .end local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v15    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_1
    move-exception v0

    move-object v15, v7

    .end local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_5
    if-eqz v18, :cond_7

    .line 299
    invoke-static {v13, v15}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_7
    throw v0
.end method

.method public static final readUntilDelimiters(Lio/ktor/utils/io/core/Input;BBLio/ktor/utils/io/core/Output;)J
    .locals 19
    .param p0, "$this$readUntilDelimiters"    # Lio/ktor/utils/io/core/Input;
    .param p1, "delimiter1"    # B
    .param p2, "delimiter2"    # B
    .param p3, "dst"    # Lio/ktor/utils/io/core/Output;

    move-object/from16 v1, p3

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-wide/16 v3, 0x0

    .line 111
    .local v3, "copiedTotal":J
    move-object/from16 v5, p0

    .local v5, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v6, 0x0

    .line 323
    .local v6, "$i$f$takeWhile":I
    const/4 v0, 0x1

    .line 324
    .local v0, "release$iv":Z
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    if-nez v8, :cond_0

    move/from16 v11, p1

    move/from16 v12, p2

    goto :goto_3

    .line 326
    .local v8, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-wide/from16 v17, v3

    move v3, v0

    move-object v4, v8

    move-wide/from16 v8, v17

    .line 328
    .end local v0    # "release$iv":Z
    .local v3, "release$iv":Z
    .local v4, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v8, "copiedTotal":J
    :goto_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Lio/ktor/utils/io/core/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v0, "chunk":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 112
    .local v10, "$i$a$-takeWhile-ScannerKt$readUntilDelimiters$2":I
    move/from16 v11, p1

    move/from16 v12, p2

    :try_start_1
    invoke-static {v0, v11, v12, v1}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersImpl(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I

    move-result v13

    .line 113
    .local v13, "copied":I
    int-to-long v14, v13

    add-long/2addr v8, v14

    .line 114
    move-object v14, v0

    .local v14, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 329
    .local v15, "$i$f$canRead":I
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    move-object/from16 v16, v0

    .end local v0    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .local v16, "chunk":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    if-le v7, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .end local v14    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$canRead":I
    :goto_1
    const/4 v7, 0x1

    .line 114
    xor-int/2addr v0, v7

    .line 328
    .end local v10    # "$i$a$-takeWhile-ScannerKt$readUntilDelimiters$2":I
    .end local v13    # "copied":I
    .end local v16    # "chunk":Lio/ktor/utils/io/core/Buffer;
    if-nez v0, :cond_2

    .line 330
    goto :goto_2

    .line 332
    :cond_2
    const/4 v3, 0x0

    .line 333
    invoke-static {v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    .line 338
    :goto_2
    if-eqz v3, :cond_3

    .line 339
    invoke-static {v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 341
    :cond_3
    nop

    .line 342
    move-wide v3, v8

    .line 117
    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v5    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v6    # "$i$f$takeWhile":I
    .end local v8    # "copiedTotal":J
    .local v3, "copiedTotal":J
    :goto_3
    return-wide v3

    .line 334
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v3, "release$iv":Z
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v5    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "$i$f$takeWhile":I
    .restart local v8    # "copiedTotal":J
    :cond_4
    move-object v4, v0

    .line 335
    const/4 v3, 0x1

    .line 336
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v11, p1

    move/from16 v12, p2

    :goto_4
    if-eqz v3, :cond_5

    .line 339
    invoke-static {v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_5
    throw v0
.end method

.method public static synthetic readUntilDelimiters$default(Lio/ktor/utils/io/core/Input;BB[BIIILjava/lang/Object;)I
    .locals 6

    .line 64
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 68
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 64
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 69
    array-length p5, p3

    move v5, p5

    goto :goto_1

    .line 64
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/core/ScannerKt;->readUntilDelimiters(Lio/ktor/utils/io/core/Input;BB[BII)I

    move-result p0

    return p0
.end method
