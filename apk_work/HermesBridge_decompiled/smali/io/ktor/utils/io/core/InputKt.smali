.class public final Lio/ktor/utils/io/core/InputKt;
.super Ljava/lang/Object;
.source "Input.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 5 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 6 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 7 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n*L\n1#1,932:1\n823#1,6:938\n829#1,13:958\n853#1,7:971\n862#1,3:979\n866#1,11:1060\n877#1,15:1072\n69#2:933\n69#2:934\n59#2:935\n69#2:936\n59#2:937\n69#2:978\n59#2:1071\n14#3:944\n15#3,2:950\n18#3:954\n20#3:957\n372#4,5:945\n377#4,2:955\n372#4,5:987\n377#4,2:1057\n84#5:952\n84#5:994\n26#6:953\n26#6:995\n123#7,5:982\n128#7,2:992\n130#7,61:996\n193#7:1059\n*S KotlinDebug\n*F\n+ 1 Input.kt\nio/ktor/utils/io/core/InputKt\n*L\n907#1:938,6\n907#1:958,13\n918#1:971,7\n918#1:979,3\n918#1:1060,11\n918#1:1072,15\n859#1:933\n866#1:934\n876#1:935\n866#1:936\n876#1:937\n918#1:978\n918#1:1071\n908#1:944\n908#1:950,2\n908#1:954\n908#1:957\n908#1:945,5\n908#1:955,2\n919#1:987,5\n919#1:1057,2\n908#1:952\n919#1:994\n908#1:953\n919#1:995\n919#1:982,5\n919#1:992,2\n919#1:996,61\n919#1:1059\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001\u001a$\u0010\u0007\u001a\u00020\u0004*\u00020\u00022\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\tH\u0080\u0008\u00f8\u0001\u0000\u001a\n\u0010\u000b\u001a\u00020\u000c*\u00020\u0002\u001a\u0014\u0010\r\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0006H\u0002\u001a$\u0010\u000f\u001a\u00020\u0004*\u00020\u00022\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\tH\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u0012\u001a\u00020\u0004*\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00062\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00060\tH\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "discard",
        "",
        "Lio/ktor/utils/io/core/Input;",
        "discardExact",
        "",
        "n",
        "",
        "forEach",
        "block",
        "Lkotlin/Function1;",
        "",
        "peekCharUtf8",
        "",
        "peekCharUtf8Impl",
        "first",
        "takeWhile",
        "Lio/ktor/utils/io/core/Buffer;",
        "",
        "takeWhileSize",
        "initialSize",
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
.method public static final discard(Lio/ktor/utils/io/core/Input;)J
    .locals 2
    .param p0, "$this$discard"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lio/ktor/utils/io/core/Input;->discard(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final discardExact(Lio/ktor/utils/io/core/Input;I)V
    .locals 2
    .param p0, "$this$discardExact"    # Lio/ktor/utils/io/core/Input;
    .param p1, "n"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lio/ktor/utils/io/core/InputKt;->discardExact(Lio/ktor/utils/io/core/Input;J)V

    .line 811
    return-void
.end method

.method public static final discardExact(Lio/ktor/utils/io/core/Input;J)V
    .locals 5
    .param p0, "$this$discardExact"    # Lio/ktor/utils/io/core/Input;
    .param p1, "n"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/core/Input;->discard(J)J

    move-result-wide v0

    .line 800
    .local v0, "discarded":J
    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 803
    return-void

    .line 801
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes were discarded of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final forEach(Lio/ktor/utils/io/core/Input;Lkotlin/jvm/functions/Function1;)V
    .locals 21
    .param p0, "$this$forEach"    # Lio/ktor/utils/io/core/Input;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 907
    .local v3, "$i$f$forEach":I
    move-object/from16 v4, p0

    .local v4, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 938
    .local v5, "$i$f$takeWhile":I
    const/4 v0, 0x1

    .line 939
    .local v0, "release$iv":Z
    const/4 v6, 0x1

    invoke-static {v4, v6}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 941
    .local v7, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v8, v7

    move v7, v0

    .line 943
    .end local v0    # "release$iv":Z
    .local v7, "release$iv":Z
    .local v8, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 908
    .local v9, "$i$a$-takeWhile-InputKt$forEach$1":I
    move-object v10, v0

    .local v10, "$this$forEach$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 944
    .local v11, "$i$f$forEach":I
    move-object v12, v10

    .local v12, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 945
    .local v13, "$i$f$read":I
    nop

    .line 949
    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v15

    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    .local v14, "memory$iv":Ljava/nio/ByteBuffer;
    .local v15, "start$iv":I
    move/from16 v17, v16

    .local v17, "endExclusive$iv":I
    const/16 v16, 0x0

    .line 950
    .local v16, "$i$a$-read-BufferPrimitivesKt$forEach$1$iv":I
    move/from16 v18, v15

    move/from16 v6, v18

    .local v6, "index$iv":I
    :goto_1
    move-object/from16 v18, v0

    move/from16 v0, v17

    .end local v17    # "endExclusive$iv":I
    .local v0, "endExclusive$iv":I
    .local v18, "buffer":Lio/ktor/utils/io/core/Buffer;
    if-ge v6, v0, :cond_1

    .line 951
    move-object/from16 v17, v14

    .local v17, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v19, 0x0

    .line 952
    .local v19, "$i$f$get-eY85DW0":I
    const/16 v20, 0x0

    .line 953
    .local v20, "$i$f$loadAt-impl":I
    move-object/from16 v2, v17

    .end local v17    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v2, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    .line 952
    .end local v20    # "$i$f$loadAt-impl":I
    nop

    .end local v2    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v19    # "$i$f$get-eY85DW0":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 951
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p0

    move/from16 v17, v0

    move-object/from16 v0, v18

    goto :goto_1

    .line 954
    .end local v6    # "index$iv":I
    :cond_1
    sub-int v17, v0, v15

    .line 949
    .end local v0    # "endExclusive$iv":I
    .end local v14    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "start$iv":I
    .end local v16    # "$i$a$-read-BufferPrimitivesKt$forEach$1$iv":I
    move/from16 v0, v17

    .line 955
    .local v0, "rc$iv$iv":I
    invoke-virtual {v12, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 956
    nop

    .line 957
    .end local v0    # "rc$iv$iv":I
    .end local v12    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$read":I
    nop

    .line 909
    .end local v10    # "$this$forEach$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$f$forEach":I
    nop

    .line 943
    .end local v9    # "$i$a$-takeWhile-InputKt$forEach$1":I
    .end local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    nop

    .line 960
    const/4 v7, 0x0

    .line 961
    invoke-static {v4, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 964
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 966
    if-eqz v7, :cond_2

    .line 967
    invoke-static {v4, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 969
    nop

    .line 970
    nop

    .line 911
    .end local v4    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v5    # "$i$f$takeWhile":I
    .end local v7    # "release$iv":Z
    .end local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_2
    return-void

    .line 962
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v4    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$takeWhile":I
    .restart local v7    # "release$iv":Z
    .restart local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_3
    move-object v8, v0

    .line 963
    const/4 v7, 0x1

    .line 964
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v6, 0x1

    move-object/from16 v2, p0

    goto :goto_0

    .line 966
    :catchall_0
    move-exception v0

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v7, :cond_4

    .line 967
    invoke-static {v4, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method public static final peekCharUtf8(Lio/ktor/utils/io/core/Input;)C
    .locals 3
    .param p0, "$this$peekCharUtf8"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->tryPeek()I

    move-result v0

    .line 896
    .local v0, "rc":I
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    int-to-char v1, v0

    return v1

    .line 897
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 899
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/InputKt;->peekCharUtf8Impl(Lio/ktor/utils/io/core/Input;I)C

    move-result v1

    return v1

    .line 897
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Failed to peek a char: end of input"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final peekCharUtf8Impl(Lio/ktor/utils/io/core/Input;I)C
    .locals 30
    .param p0, "$this$peekCharUtf8Impl"    # Lio/ktor/utils/io/core/Input;
    .param p1, "first"    # I

    .line 915
    const/4 v0, 0x0

    .local v0, "rc":C
    const/16 v0, 0x3f

    .line 916
    const/4 v1, 0x0

    .line 918
    .local v1, "found":Z
    invoke-static/range {p1 .. p1}, Lio/ktor/utils/io/core/internal/UTF8Kt;->byteCountUtf8(I)I

    move-result v2

    .local v2, "initialSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$takeWhileSize$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 971
    .local v4, "$i$f$takeWhileSize":I
    const/4 v5, 0x1

    .line 972
    .local v5, "release$iv":Z
    invoke-static {v3, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6

    if-nez v6, :cond_0

    goto/16 :goto_a

    .line 973
    .local v6, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v7, v2

    .line 975
    .local v7, "size$iv":I
    move v8, v7

    move-object v7, v6

    move v6, v5

    move v5, v1

    move v1, v0

    .line 977
    .end local v0    # "rc":C
    .local v1, "rc":C
    .local v5, "found":Z
    .local v6, "release$iv":Z
    .local v7, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v8, "size$iv":I
    :goto_0
    :try_start_0
    move-object v0, v7

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 978
    .local v9, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    sub-int/2addr v10, v11

    .line 977
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getReadRemaining":I
    move v9, v10

    .local v9, "before$iv":I
    const/4 v10, 0x0

    .line 979
    .local v10, "after$iv":I
    if-lt v9, v8, :cond_b

    .line 980
    nop

    .line 981
    :try_start_1
    move-object v0, v7

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 919
    .local v11, "$i$a$-takeWhileSize-InputKt$peekCharUtf8Impl$1":I
    move-object v12, v0

    .local v12, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 982
    .local v13, "$i$f$decodeUTF8":I
    const/4 v14, 0x0

    .line 983
    .local v14, "byteCount$iv":I
    const/4 v15, 0x0

    .line 984
    .local v15, "value$iv":I
    const/16 v16, 0x0

    .line 986
    .local v16, "lastByteCount$iv":I
    move-object/from16 v17, v12

    .local v17, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 987
    .local v18, "$i$f$read":I
    nop

    .line 991
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .local v19, "memory$iv":Ljava/nio/ByteBuffer;
    .local v20, "start$iv":I
    move/from16 v22, v21

    .local v22, "endExclusive$iv":I
    const/16 v21, 0x0

    .line 992
    .local v21, "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    move/from16 v23, v20

    move/from16 v29, v23

    move-object/from16 v23, v0

    move/from16 v0, v29

    .local v0, "index$iv":I
    .local v23, "it":Lio/ktor/utils/io/core/Buffer;
    :goto_1
    move/from16 v24, v1

    move/from16 v1, v22

    .end local v22    # "endExclusive$iv":I
    .local v1, "endExclusive$iv":I
    .local v24, "rc":C
    if-ge v0, v1, :cond_a

    .line 993
    move-object/from16 v22, v19

    .local v22, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v25, 0x0

    .line 994
    .local v25, "$i$f$get-eY85DW0":I
    const/16 v26, 0x0

    .line 995
    .local v26, "$i$f$loadAt-impl":I
    move/from16 v27, v2

    move-object/from16 v2, v22

    move/from16 v22, v4

    .end local v4    # "$i$f$takeWhileSize":I
    .local v2, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v22, "$i$f$takeWhileSize":I
    .local v27, "initialSize$iv":I
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 994
    .end local v26    # "$i$f$loadAt-impl":I
    nop

    .line 993
    .end local v2    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v25    # "$i$f$get-eY85DW0":I
    and-int/lit16 v2, v4, 0xff

    .line 996
    .local v2, "v$iv":I
    nop

    .line 997
    and-int/lit16 v4, v2, 0x80

    const/16 v25, -0x1

    if-nez v4, :cond_2

    .line 998
    if-nez v14, :cond_1

    .line 999
    int-to-char v4, v2

    .local v4, "ch":C
    const/16 v26, 0x0

    .line 920
    .local v26, "$i$a$-decodeUTF8-InputKt$peekCharUtf8Impl$1$1":I
    const/4 v5, 0x1

    .line 921
    move/from16 v24, v4

    .line 922
    nop

    .line 999
    .end local v4    # "ch":C
    .end local v26    # "$i$a$-decodeUTF8-InputKt$peekCharUtf8Impl$1$1":I
    nop

    .line 1000
    sub-int v4, v0, v20

    :try_start_3
    invoke-virtual {v12, v4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1001
    move/from16 v28, v6

    move/from16 v1, v24

    goto/16 :goto_4

    .line 998
    :cond_1
    invoke-static {v14}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v3    # "$this$takeWhileSize$iv":Lio/ktor/utils/io/core/Input;
    .end local v5    # "found":Z
    .end local v6    # "release$iv":Z
    .end local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v8    # "size$iv":I
    .end local v9    # "before$iv":I
    .end local v10    # "after$iv":I
    .end local v22    # "$i$f$takeWhileSize":I
    .end local v24    # "rc":C
    .end local v27    # "initialSize$iv":I
    .end local p0    # "$this$peekCharUtf8Impl":Lio/ktor/utils/io/core/Input;
    .end local p1    # "first":I
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1060
    .end local v0    # "index$iv":I
    .end local v1    # "endExclusive$iv":I
    .end local v2    # "v$iv":I
    .end local v11    # "$i$a$-takeWhileSize-InputKt$peekCharUtf8Impl$1":I
    .end local v12    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$decodeUTF8":I
    .end local v14    # "byteCount$iv":I
    .end local v15    # "value$iv":I
    .end local v16    # "lastByteCount$iv":I
    .end local v17    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$read":I
    .end local v19    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v20    # "start$iv":I
    .end local v21    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v23    # "it":Lio/ktor/utils/io/core/Buffer;
    .restart local v3    # "$this$takeWhileSize$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "found":Z
    .restart local v6    # "release$iv":Z
    .restart local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v8    # "size$iv":I
    .restart local v9    # "before$iv":I
    .restart local v10    # "after$iv":I
    .restart local v22    # "$i$f$takeWhileSize":I
    .restart local v24    # "rc":C
    .restart local v27    # "initialSize$iv":I
    .restart local p0    # "$this$peekCharUtf8Impl":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "first":I
    :catchall_0
    move-exception v0

    move/from16 v28, v6

    move/from16 v1, v24

    goto/16 :goto_5

    .line 1004
    .restart local v0    # "index$iv":I
    .restart local v1    # "endExclusive$iv":I
    .restart local v2    # "v$iv":I
    .restart local v11    # "$i$a$-takeWhileSize-InputKt$peekCharUtf8Impl$1":I
    .restart local v12    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$f$decodeUTF8":I
    .restart local v14    # "byteCount$iv":I
    .restart local v15    # "value$iv":I
    .restart local v16    # "lastByteCount$iv":I
    .restart local v17    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v18    # "$i$f$read":I
    .restart local v19    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v20    # "start$iv":I
    .restart local v21    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v23    # "it":Lio/ktor/utils/io/core/Buffer;
    :cond_2
    if-nez v14, :cond_6

    .line 1007
    const/16 v4, 0x80

    .line 1008
    .local v4, "mask$iv":I
    move v15, v2

    .line 1010
    const/16 v25, 0x1

    move/from16 v26, v5

    move/from16 v5, v25

    .local v5, "i$iv":I
    .local v26, "found":Z
    :goto_2
    move/from16 v28, v6

    .end local v6    # "release$iv":Z
    .local v28, "release$iv":Z
    const/4 v6, 0x7

    if-ge v5, v6, :cond_4

    .line 1011
    and-int v6, v15, v4

    if-eqz v6, :cond_3

    .line 1012
    not-int v6, v4

    and-int/2addr v15, v6

    .line 1013
    shr-int/lit8 v4, v4, 0x1

    .line 1014
    add-int/lit8 v14, v14, 0x1

    .line 1010
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v28

    goto :goto_2

    .line 1016
    :cond_3
    nop

    .line 1020
    .end local v5    # "i$iv":I
    :cond_4
    move v5, v14

    .line 1021
    .end local v16    # "lastByteCount$iv":I
    .local v5, "lastByteCount$iv":I
    add-int/lit8 v14, v14, -0x1

    .line 1023
    sub-int v6, v1, v0

    if-le v5, v6, :cond_5

    .line 1024
    sub-int v6, v0, v20

    :try_start_4
    invoke-virtual {v12, v6}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1025
    move/from16 v25, v5

    move/from16 v1, v24

    move/from16 v5, v26

    goto/16 :goto_4

    .line 1023
    :cond_5
    move/from16 v16, v5

    goto :goto_3

    .line 1030
    .end local v4    # "mask$iv":I
    .end local v26    # "found":Z
    .end local v28    # "release$iv":Z
    .local v5, "found":Z
    .restart local v6    # "release$iv":Z
    .restart local v16    # "lastByteCount$iv":I
    :cond_6
    move/from16 v26, v5

    move/from16 v28, v6

    .end local v5    # "found":Z
    .end local v6    # "release$iv":Z
    .restart local v26    # "found":Z
    .restart local v28    # "release$iv":Z
    shl-int/lit8 v4, v15, 0x6

    and-int/lit8 v5, v2, 0x7f

    or-int/2addr v4, v5

    .line 1031
    .end local v15    # "value$iv":I
    .local v4, "value$iv":I
    add-int/lit8 v14, v14, -0x1

    .line 1033
    if-nez v14, :cond_9

    .line 1034
    invoke-static {v4}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_7

    .line 1035
    int-to-char v5, v4

    .local v5, "ch":C
    const/4 v6, 0x0

    .line 920
    .local v6, "$i$a$-decodeUTF8-InputKt$peekCharUtf8Impl$1$1":I
    const/4 v15, 0x1

    .line 921
    .end local v26    # "found":Z
    .local v15, "found":Z
    move/from16 v24, v5

    .line 922
    nop

    .line 1035
    .end local v5    # "ch":C
    .end local v6    # "$i$a$-decodeUTF8-InputKt$peekCharUtf8Impl$1$1":I
    nop

    .line 1036
    sub-int v5, v0, v20

    sub-int v5, v5, v16

    add-int/lit8 v5, v5, 0x1

    :try_start_5
    invoke-virtual {v12, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1037
    move v5, v15

    move/from16 v1, v24

    goto/16 :goto_4

    .line 1060
    .end local v0    # "index$iv":I
    .end local v1    # "endExclusive$iv":I
    .end local v2    # "v$iv":I
    .end local v4    # "value$iv":I
    .end local v11    # "$i$a$-takeWhileSize-InputKt$peekCharUtf8Impl$1":I
    .end local v12    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$decodeUTF8":I
    .end local v14    # "byteCount$iv":I
    .end local v16    # "lastByteCount$iv":I
    .end local v17    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$read":I
    .end local v19    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v20    # "start$iv":I
    .end local v21    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v23    # "it":Lio/ktor/utils/io/core/Buffer;
    :catchall_1
    move-exception v0

    move v5, v15

    move/from16 v1, v24

    goto/16 :goto_5

    .line 1039
    .end local v15    # "found":Z
    .restart local v0    # "index$iv":I
    .restart local v1    # "endExclusive$iv":I
    .restart local v2    # "v$iv":I
    .restart local v4    # "value$iv":I
    .restart local v11    # "$i$a$-takeWhileSize-InputKt$peekCharUtf8Impl$1":I
    .restart local v12    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$f$decodeUTF8":I
    .restart local v14    # "byteCount$iv":I
    .restart local v16    # "lastByteCount$iv":I
    .restart local v17    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v18    # "$i$f$read":I
    .restart local v19    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v20    # "start$iv":I
    .restart local v21    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v23    # "it":Lio/ktor/utils/io/core/Buffer;
    .restart local v26    # "found":Z
    :cond_7
    :try_start_6
    invoke-static {v4}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1042
    invoke-static {v4}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    int-to-char v5, v5

    .restart local v5    # "ch":C
    const/4 v6, 0x0

    .line 920
    .restart local v6    # "$i$a$-decodeUTF8-InputKt$peekCharUtf8Impl$1$1":I
    const/4 v15, 0x1

    .line 921
    .end local v26    # "found":Z
    .restart local v15    # "found":Z
    move/from16 v24, v5

    .line 922
    nop

    .line 1042
    .end local v5    # "ch":C
    .end local v6    # "$i$a$-decodeUTF8-InputKt$peekCharUtf8Impl$1$1":I
    nop

    .line 1045
    sub-int v5, v0, v20

    sub-int v5, v5, v16

    add-int/lit8 v5, v5, 0x1

    :try_start_7
    invoke-virtual {v12, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1046
    move v5, v15

    move/from16 v1, v24

    goto :goto_4

    .line 1040
    .end local v15    # "found":Z
    .restart local v26    # "found":Z
    :cond_8
    :try_start_8
    invoke-static {v4}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v3    # "$this$takeWhileSize$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v8    # "size$iv":I
    .end local v9    # "before$iv":I
    .end local v10    # "after$iv":I
    .end local v22    # "$i$f$takeWhileSize":I
    .end local v24    # "rc":C
    .end local v26    # "found":Z
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local p0    # "$this$peekCharUtf8Impl":Lio/ktor/utils/io/core/Input;
    .end local p1    # "first":I
    throw v5

    .line 1033
    .restart local v3    # "$this$takeWhileSize$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v8    # "size$iv":I
    .restart local v9    # "before$iv":I
    .restart local v10    # "after$iv":I
    .restart local v22    # "$i$f$takeWhileSize":I
    .restart local v24    # "rc":C
    .restart local v26    # "found":Z
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local p0    # "$this$peekCharUtf8Impl":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "first":I
    :cond_9
    move v15, v4

    .line 992
    .end local v2    # "v$iv":I
    .end local v4    # "value$iv":I
    .local v15, "value$iv":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v22

    move/from16 v5, v26

    move/from16 v2, v27

    move/from16 v6, v28

    move/from16 v22, v1

    move/from16 v1, v24

    goto/16 :goto_1

    .line 1060
    .end local v0    # "index$iv":I
    .end local v1    # "endExclusive$iv":I
    .end local v11    # "$i$a$-takeWhileSize-InputKt$peekCharUtf8Impl$1":I
    .end local v12    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$decodeUTF8":I
    .end local v14    # "byteCount$iv":I
    .end local v15    # "value$iv":I
    .end local v16    # "lastByteCount$iv":I
    .end local v17    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$read":I
    .end local v19    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v20    # "start$iv":I
    .end local v21    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v23    # "it":Lio/ktor/utils/io/core/Buffer;
    .end local v26    # "found":Z
    .end local v28    # "release$iv":Z
    .local v5, "found":Z
    .local v6, "release$iv":Z
    :catchall_2
    move-exception v0

    move/from16 v26, v5

    move/from16 v28, v6

    move/from16 v1, v24

    .end local v5    # "found":Z
    .end local v6    # "release$iv":Z
    .restart local v26    # "found":Z
    .restart local v28    # "release$iv":Z
    goto :goto_5

    .line 992
    .end local v22    # "$i$f$takeWhileSize":I
    .end local v26    # "found":Z
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .restart local v0    # "index$iv":I
    .restart local v1    # "endExclusive$iv":I
    .local v2, "initialSize$iv":I
    .local v4, "$i$f$takeWhileSize":I
    .restart local v5    # "found":Z
    .restart local v6    # "release$iv":Z
    .restart local v11    # "$i$a$-takeWhileSize-InputKt$peekCharUtf8Impl$1":I
    .restart local v12    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$f$decodeUTF8":I
    .restart local v14    # "byteCount$iv":I
    .restart local v15    # "value$iv":I
    .restart local v16    # "lastByteCount$iv":I
    .restart local v17    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v18    # "$i$f$read":I
    .restart local v19    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v20    # "start$iv":I
    .restart local v21    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v23    # "it":Lio/ktor/utils/io/core/Buffer;
    :cond_a
    move/from16 v27, v2

    move/from16 v22, v4

    move/from16 v26, v5

    move/from16 v28, v6

    .line 1056
    .end local v0    # "index$iv":I
    .end local v2    # "initialSize$iv":I
    .end local v4    # "$i$f$takeWhileSize":I
    .end local v5    # "found":Z
    .end local v6    # "release$iv":Z
    .restart local v22    # "$i$f$takeWhileSize":I
    .restart local v26    # "found":Z
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    sub-int v0, v1, v20

    .line 991
    .end local v1    # "endExclusive$iv":I
    .end local v19    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v20    # "start$iv":I
    .end local v21    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    nop

    .line 1057
    .local v0, "rc$iv$iv":I
    move-object/from16 v1, v17

    .end local v17    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .local v1, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1058
    nop

    .line 1059
    .end local v0    # "rc$iv$iv":I
    .end local v1    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$read":I
    const/16 v25, 0x0

    move/from16 v1, v24

    move/from16 v5, v26

    .line 919
    .end local v12    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$decodeUTF8":I
    .end local v14    # "byteCount$iv":I
    .end local v15    # "value$iv":I
    .end local v16    # "lastByteCount$iv":I
    .end local v24    # "rc":C
    .end local v26    # "found":Z
    .local v1, "rc":C
    .restart local v5    # "found":Z
    :goto_4
    nop

    .line 981
    .end local v11    # "$i$a$-takeWhileSize-InputKt$peekCharUtf8Impl$1":I
    .end local v23    # "it":Lio/ktor/utils/io/core/Buffer;
    move/from16 v8, v25

    .line 1060
    :try_start_9
    move-object v0, v7

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 978
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v4, v6

    .line 1060
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v4

    .line 1061
    .end local v10    # "after$iv":I
    .local v0, "after$iv":I
    goto :goto_6

    .line 1060
    .end local v0    # "after$iv":I
    .end local v1    # "rc":C
    .end local v5    # "found":Z
    .restart local v10    # "after$iv":I
    .restart local v24    # "rc":C
    .restart local v26    # "found":Z
    :catchall_3
    move-exception v0

    move/from16 v1, v24

    move/from16 v5, v26

    goto :goto_5

    .end local v22    # "$i$f$takeWhileSize":I
    .end local v24    # "rc":C
    .end local v26    # "found":Z
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .restart local v1    # "rc":C
    .local v2, "initialSize$iv":I
    .restart local v4    # "$i$f$takeWhileSize":I
    .restart local v5    # "found":Z
    .restart local v6    # "release$iv":Z
    :catchall_4
    move-exception v0

    move/from16 v24, v1

    move/from16 v27, v2

    move/from16 v22, v4

    move/from16 v26, v5

    move/from16 v28, v6

    .end local v2    # "initialSize$iv":I
    .end local v4    # "$i$f$takeWhileSize":I
    .end local v6    # "release$iv":Z
    .restart local v22    # "$i$f$takeWhileSize":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    :goto_5
    move-object v2, v7

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 978
    .local v4, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    sub-int/2addr v6, v11

    .line 1060
    .end local v2    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getReadRemaining":I
    move v2, v6

    .end local v1    # "rc":C
    .end local v3    # "$this$takeWhileSize$iv":Lio/ktor/utils/io/core/Input;
    .end local v5    # "found":Z
    .end local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v8    # "size$iv":I
    .end local v10    # "after$iv":I
    .end local v22    # "$i$f$takeWhileSize":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local p0    # "$this$peekCharUtf8Impl":Lio/ktor/utils/io/core/Input;
    .end local p1    # "first":I
    .local v2, "after$iv":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1082
    .end local v2    # "after$iv":I
    .end local v9    # "before$iv":I
    .restart local v1    # "rc":C
    .restart local v3    # "$this$takeWhileSize$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "found":Z
    .restart local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v8    # "size$iv":I
    .restart local v22    # "$i$f$takeWhileSize":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local p0    # "$this$peekCharUtf8Impl":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "first":I
    :catchall_5
    move-exception v0

    move/from16 v6, v28

    goto/16 :goto_b

    .line 1063
    .end local v22    # "$i$f$takeWhileSize":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .local v2, "initialSize$iv":I
    .local v4, "$i$f$takeWhileSize":I
    .restart local v6    # "release$iv":Z
    .restart local v9    # "before$iv":I
    .restart local v10    # "after$iv":I
    :cond_b
    move/from16 v24, v1

    move/from16 v27, v2

    move/from16 v22, v4

    move/from16 v26, v5

    move/from16 v28, v6

    .end local v1    # "rc":C
    .end local v2    # "initialSize$iv":I
    .end local v4    # "$i$f$takeWhileSize":I
    .end local v5    # "found":Z
    .end local v6    # "release$iv":Z
    .restart local v22    # "$i$f$takeWhileSize":I
    .restart local v24    # "rc":C
    .restart local v26    # "found":Z
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    move v0, v9

    .line 1066
    .end local v10    # "after$iv":I
    .end local v24    # "rc":C
    .end local v26    # "found":Z
    .restart local v0    # "after$iv":I
    .restart local v1    # "rc":C
    .restart local v5    # "found":Z
    :goto_6
    const/4 v6, 0x0

    .line 1068
    .end local v28    # "release$iv":Z
    .restart local v6    # "release$iv":Z
    nop

    .line 1069
    if-nez v0, :cond_c

    :try_start_a
    invoke-static {v3, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_8

    .line 1082
    .end local v0    # "after$iv":I
    .end local v9    # "before$iv":I
    :catchall_6
    move-exception v0

    goto :goto_b

    .line 1070
    .restart local v0    # "after$iv":I
    .restart local v9    # "before$iv":I
    :cond_c
    if-lt v0, v8, :cond_e

    move-object v2, v7

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1071
    .local v4, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v10

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1070
    .end local v2    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v10, v2, :cond_d

    goto :goto_7

    .line 1075
    :cond_d
    move-object v2, v7

    goto :goto_8

    .line 1072
    :cond_e
    :goto_7
    invoke-static {v3, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 1073
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1068
    :goto_8
    if-nez v2, :cond_f

    .line 1076
    goto :goto_9

    .line 1078
    .local v2, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_f
    move-object v7, v2

    .line 1079
    const/4 v6, 0x1

    .line 1080
    .end local v0    # "after$iv":I
    .end local v2    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "before$iv":I
    if-gtz v8, :cond_12

    .line 1082
    :goto_9
    if-eqz v6, :cond_10

    .line 1083
    invoke-static {v3, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 1085
    :cond_10
    nop

    .line 1086
    move v0, v1

    move v1, v5

    .line 926
    .end local v3    # "$this$takeWhileSize$iv":Lio/ktor/utils/io/core/Input;
    .end local v5    # "found":Z
    .end local v6    # "release$iv":Z
    .end local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v8    # "size$iv":I
    .end local v22    # "$i$f$takeWhileSize":I
    .end local v27    # "initialSize$iv":I
    .local v0, "rc":C
    .local v1, "found":Z
    :goto_a
    if-eqz v1, :cond_11

    .line 930
    return v0

    .line 927
    :cond_11
    new-instance v2, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;

    const-string v3, "No UTF-8 character found"

    invoke-direct {v2, v3}, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1080
    .end local v0    # "rc":C
    .local v1, "rc":C
    .restart local v3    # "$this$takeWhileSize$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "found":Z
    .restart local v6    # "release$iv":Z
    .restart local v7    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v8    # "size$iv":I
    .restart local v22    # "$i$f$takeWhileSize":I
    .restart local v27    # "initialSize$iv":I
    :cond_12
    move/from16 v4, v22

    move/from16 v2, v27

    goto/16 :goto_0

    .line 1082
    .end local v22    # "$i$f$takeWhileSize":I
    .end local v27    # "initialSize$iv":I
    .local v2, "initialSize$iv":I
    .local v4, "$i$f$takeWhileSize":I
    :catchall_7
    move-exception v0

    move/from16 v24, v1

    move/from16 v27, v2

    move/from16 v22, v4

    move/from16 v26, v5

    move/from16 v28, v6

    .end local v2    # "initialSize$iv":I
    .end local v4    # "$i$f$takeWhileSize":I
    .restart local v22    # "$i$f$takeWhileSize":I
    .restart local v27    # "initialSize$iv":I
    :goto_b
    if-eqz v6, :cond_13

    .line 1083
    invoke-static {v3, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_13
    throw v0
.end method

.method public static final takeWhile(Lio/ktor/utils/io/core/Input;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p0, "$this$takeWhile"    # Lio/ktor/utils/io/core/Input;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 823
    .local v0, "$i$f$takeWhile":I
    const/4 v1, 0x1

    .line 824
    .local v1, "release":Z
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 826
    .local v3, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    nop

    .line 828
    :goto_0
    :try_start_0
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 829
    goto :goto_1

    .line 831
    :cond_1
    const/4 v1, 0x0

    .line 832
    invoke-static {p0, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 835
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 837
    if-eqz v1, :cond_2

    .line 838
    invoke-static {p0, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 840
    nop

    .line 841
    return-void

    .line 833
    .local v4, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_3
    move-object v3, v4

    .line 834
    const/4 v1, 0x1

    .line 835
    .end local v4    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0

    .line 837
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v1, :cond_4

    .line 838
    invoke-static {p0, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v4
.end method

.method public static final takeWhileSize(Lio/ktor/utils/io/core/Input;ILkotlin/jvm/functions/Function1;)V
    .locals 12
    .param p0, "$this$takeWhileSize"    # Lio/ktor/utils/io/core/Input;
    .param p1, "initialSize"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 853
    .local v0, "$i$f$takeWhileSize":I
    const/4 v1, 0x1

    .line 854
    .local v1, "release":Z
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 855
    .local v2, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v3, p1

    .line 857
    .local v3, "size":I
    nop

    .line 859
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    move-object v5, v2

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 933
    .local v6, "$i$f$getReadRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr v7, v8

    .line 859
    .end local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getReadRemaining":I
    move v5, v7

    .local v5, "before":I
    const/4 v6, 0x0

    .line 862
    .local v6, "after":I
    if-lt v5, v3, :cond_2

    .line 863
    nop

    .line 864
    :try_start_1
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v7

    :try_start_2
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 866
    move-object v7, v2

    check-cast v7, Lio/ktor/utils/io/core/Buffer;

    .local v7, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 934
    .local v8, "$i$f$getReadRemaining":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v10

    sub-int/2addr v9, v10

    .line 866
    .end local v7    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$getReadRemaining":I
    move v6, v9

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 867
    goto :goto_0

    .line 866
    :catchall_0
    move-exception v7

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    move-object v8, v2

    check-cast v8, Lio/ktor/utils/io/core/Buffer;

    .local v8, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 934
    .local v9, "$i$f$getReadRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 866
    .end local v8    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getReadRemaining":I
    move v6, v10

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v0    # "$i$f$takeWhileSize":I
    .end local v1    # "release":Z
    .end local v2    # "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v3    # "size":I
    .end local p0    # "$this$takeWhileSize":Lio/ktor/utils/io/core/Input;
    .end local p1    # "initialSize":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v7

    .line 869
    .restart local v0    # "$i$f$takeWhileSize":I
    .restart local v1    # "release":Z
    .restart local v2    # "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v3    # "size":I
    .restart local p0    # "$this$takeWhileSize":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "initialSize":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :cond_2
    move v6, v5

    .line 872
    :goto_0
    const/4 v1, 0x0

    .line 874
    nop

    .line 875
    if-nez v6, :cond_3

    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    goto :goto_2

    .line 876
    :cond_3
    if-lt v6, v3, :cond_5

    move-object v7, v2

    check-cast v7, Lio/ktor/utils/io/core/Buffer;

    .restart local v7    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 935
    .local v8, "$i$f$getEndGap":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v9

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    sub-int/2addr v9, v10

    .line 876
    .end local v7    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$getEndGap":I
    const/16 v7, 0x8

    if-ge v9, v7, :cond_4

    goto :goto_1

    .line 880
    :cond_4
    move-object v7, v2

    goto :goto_2

    .line 877
    :cond_5
    :goto_1
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 878
    invoke-static {p0, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 874
    :goto_2
    if-nez v7, :cond_6

    .line 881
    goto :goto_3

    .line 883
    .local v7, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v2, v7

    .line 884
    const/4 v1, 0x1

    .line 885
    .end local v5    # "before":I
    .end local v6    # "after":I
    .end local v7    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-gtz v3, :cond_1

    :goto_3
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 887
    if-eqz v1, :cond_7

    .line 888
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 890
    nop

    .line 891
    return-void

    .line 887
    :catchall_1
    move-exception v5

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v1, :cond_8

    .line 888
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v5
.end method

.method public static synthetic takeWhileSize$default(Lio/ktor/utils/io/core/Input;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 10
    .param p0, "$this$takeWhileSize_u24default"    # Lio/ktor/utils/io/core/Input;
    .param p1, "initialSize"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 852
    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "block"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 853
    .local p3, "$i$f$takeWhileSize":I
    const/4 v0, 0x1

    .line 854
    .local v0, "release":Z
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 855
    .local v1, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    move v2, p1

    .line 857
    .local v2, "size":I
    nop

    .line 859
    :cond_2
    :try_start_0
    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 933
    .local v4, "$i$f$getReadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr v5, v6

    .line 859
    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getReadRemaining":I
    move v3, v5

    .local v3, "before":I
    const/4 v4, 0x0

    .line 862
    .local v4, "after":I
    if-lt v3, v2, :cond_3

    .line 863
    nop

    .line 864
    :try_start_1
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v5

    :try_start_2
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 866
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 936
    .local v6, "$i$f$getReadRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    sub-int/2addr v7, v8

    .line 866
    .end local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getReadRemaining":I
    move v4, v7

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 867
    goto :goto_0

    .line 866
    :catchall_0
    move-exception v5

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    move-object v6, v1

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .local v6, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 936
    .local v7, "$i$f$getReadRemaining":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    sub-int/2addr v8, v9

    .line 866
    .end local v6    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$getReadRemaining":I
    move v4, v8

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v0    # "release":Z
    .end local v1    # "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "size":I
    .end local p0    # "$this$takeWhileSize_u24default":Lio/ktor/utils/io/core/Input;
    .end local p1    # "initialSize":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    .end local p3    # "$i$f$takeWhileSize":I
    throw v5

    .line 869
    .restart local v0    # "release":Z
    .restart local v1    # "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v2    # "size":I
    .restart local p0    # "$this$takeWhileSize_u24default":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "initialSize":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "$i$f$takeWhileSize":I
    :cond_3
    move v4, v3

    .line 872
    :goto_0
    const/4 v0, 0x0

    .line 874
    nop

    .line 875
    if-nez v4, :cond_4

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_2

    .line 876
    :cond_4
    if-lt v4, v2, :cond_6

    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .restart local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 937
    .local v6, "$i$f$getEndGap":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v8

    sub-int/2addr v7, v8

    .line 876
    .end local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getEndGap":I
    const/16 v5, 0x8

    if-ge v7, v5, :cond_5

    goto :goto_1

    .line 880
    :cond_5
    move-object v5, v1

    goto :goto_2

    .line 877
    :cond_6
    :goto_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 878
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 874
    :goto_2
    if-nez v5, :cond_7

    .line 881
    goto :goto_3

    .line 883
    .local v5, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_7
    move-object v1, v5

    .line 884
    const/4 v0, 0x1

    .line 885
    .end local v3    # "before":I
    .end local v4    # "after":I
    .end local v5    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-gtz v2, :cond_2

    :goto_3
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 887
    if-eqz v0, :cond_8

    .line 888
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_8
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 890
    nop

    .line 891
    return-void

    .line 887
    :catchall_1
    move-exception v3

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v0, :cond_9

    .line 888
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method
