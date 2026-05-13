.class public final Lio/ktor/utils/io/core/OutputKt;
.super Ljava/lang/Object;
.source "Output.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,576:1\n527#1,4:577\n488#1,4:581\n531#1:585\n532#1,4:587\n492#1,6:591\n537#1:597\n565#1,4:598\n507#1,6:602\n569#1:608\n570#1,4:610\n513#1,7:614\n575#1:621\n565#1,4:622\n507#1,6:626\n569#1:632\n570#1,4:634\n513#1,7:638\n575#1:645\n565#1,4:646\n507#1,6:650\n569#1:656\n570#1,4:658\n513#1,7:662\n575#1:669\n565#1,4:670\n507#1,6:674\n569#1:680\n570#1,4:682\n513#1,7:686\n575#1:693\n565#1,4:694\n507#1,6:698\n569#1:704\n570#1,4:706\n513#1,7:710\n575#1:717\n527#1,4:718\n488#1,4:722\n531#1:726\n532#1,4:728\n492#1,6:732\n537#1:738\n545#1,4:740\n488#1,4:744\n549#1:748\n550#1,5:750\n492#1,6:755\n556#1:761\n488#1,4:762\n492#1,6:767\n488#1,4:773\n492#1,6:778\n488#1,4:784\n492#1,6:789\n507#1,6:795\n513#1,7:802\n74#2:586\n74#2:609\n74#2:633\n74#2:657\n74#2:681\n74#2:705\n74#2:727\n69#2:739\n74#2:749\n74#2:766\n74#2:777\n74#2:788\n74#2:801\n*S KotlinDebug\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/OutputKt\n*L\n411#1:577,4\n411#1:581,4\n411#1:585\n411#1:587,4\n411#1:591,6\n411#1:597\n418#1:598,4\n418#1:602,6\n418#1:608\n418#1:610,4\n418#1:614,7\n418#1:621\n425#1:622,4\n425#1:626,6\n425#1:632\n425#1:634,4\n425#1:638,7\n425#1:645\n432#1:646,4\n432#1:650,6\n432#1:656\n432#1:658,4\n432#1:662,7\n432#1:669\n439#1:670,4\n439#1:674,6\n439#1:680\n439#1:682,4\n439#1:686,7\n439#1:693\n446#1:694,4\n446#1:698,6\n446#1:704\n446#1:706,4\n446#1:710,7\n446#1:717\n453#1:718,4\n453#1:722,4\n453#1:726\n453#1:728,4\n453#1:732,6\n453#1:738\n465#1:740,4\n465#1:744,4\n465#1:748\n465#1:750,5\n465#1:755,6\n465#1:761\n473#1:762,4\n473#1:767,6\n530#1:773,4\n530#1:778,6\n548#1:784,4\n548#1:789,6\n568#1:795,6\n568#1:802,7\n411#1:586\n418#1:609\n425#1:633\n432#1:657\n439#1:681\n446#1:705\n453#1:727\n452#1:739\n465#1:749\n474#1:766\n531#1:777\n549#1:788\n569#1:801\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0010\u0013\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0017\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a*\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u001a*\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u001a\u001c\u0010\n\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u001a/\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a/\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0017\u001a\u001c\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u001a&\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u001a&\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u001a&\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u001a&\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u001a&\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u001a&\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u001a[\u0010\u001f\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072<\u0010 \u001a8\u0012\u0004\u0012\u00020\u0018\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008($\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u000b0!H\u0082\u0008\u001a\u0082\u0001\u0010\u001f\u001a\u00020\u000b*\u00020\u00032\u0006\u0010&\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2`\u0010 \u001a\\\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008((\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008()\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008($\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u000b0\'H\u0082\u0008\u00f8\u0001\u0001\u001ac\u0010*\u001a\u00020\u000b*\u00020\u00032\u0006\u0010+\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072<\u0010 \u001a8\u0012\u0004\u0012\u00020\u0018\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008($\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u000b0!H\u0082\u0008\u001a$\u0010,\u001a\u00020\u000b*\u00020\u00032\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020.0-H\u0080\u0008\u00f8\u0001\u0002\u001a.\u0010/\u001a\u00020\u000b*\u00020\u00032\u0008\u0008\u0002\u00100\u001a\u00020\u00072\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00070-H\u0080\u0008\u00f8\u0001\u0002\u0082\u0002\u0012\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\u00a8\u00061"
    }
    d2 = {
        "append",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "Lio/ktor/utils/io/core/Output;",
        "csq",
        "",
        "start",
        "",
        "end",
        "",
        "fill",
        "",
        "times",
        "",
        "value",
        "",
        "writeFully",
        "src",
        "Lio/ktor/utils/io/bits/Memory;",
        "offset",
        "length",
        "writeFully-UAd2zVI",
        "(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;II)V",
        "(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;JJ)V",
        "Lio/ktor/utils/io/core/Buffer;",
        "",
        "",
        "",
        "",
        "",
        "",
        "writeFullyBytesTemplate",
        "block",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "currentOffset",
        "count",
        "initialOffset",
        "Lkotlin/Function4;",
        "destination",
        "destinationOffset",
        "writeFullyTemplate",
        "componentSize",
        "writeWhile",
        "Lkotlin/Function1;",
        "",
        "writeWhileSize",
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
.method public static final append(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p0, "$this$append"    # Lio/ktor/utils/io/core/Output;
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csq"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    return-object v0
.end method

.method public static final append(Lio/ktor/utils/io/core/Output;[CII)Ljava/lang/Appendable;
    .locals 1
    .param p0, "$this$append"    # Lio/ktor/utils/io/core/Output;
    .param p1, "csq"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csq"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Output;->append([CII)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic append$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IIILjava/lang/Object;)Ljava/lang/Appendable;
    .locals 0

    .line 400
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->append(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic append$default(Lio/ktor/utils/io/core/Output;[CIIILjava/lang/Object;)Ljava/lang/Appendable;
    .locals 0

    .line 405
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->append(Lio/ktor/utils/io/core/Output;[CII)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static final fill(Lio/ktor/utils/io/core/Output;JB)V
    .locals 12
    .param p0, "$this$fill"    # Lio/ktor/utils/io/core/Output;
    .param p1, "times"    # J
    .param p3, "value"    # B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    const-wide/16 v0, 0x0

    .line 473
    .local v0, "written":J
    move-object v2, p0

    .local v2, "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    const/4 v3, 0x0

    .line 762
    .local v3, "$i$f$writeWhile":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    .line 763
    .local v4, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 764
    :goto_0
    nop

    .line 765
    :try_start_0
    move-object v6, v4

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .local v6, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 474
    .local v7, "$i$a$-writeWhile-OutputKt$fill$1":I
    move-object v8, v6

    .local v8, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 766
    .local v9, "$i$f$getWriteRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 474
    .end local v8    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getWriteRemaining":I
    int-to-long v8, v10

    sub-long v10, p1, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 475
    .local v8, "partTimes":I
    invoke-static {v6, v8, p3}, Lio/ktor/utils/io/core/BufferCompatibilityKt;->fill(Lio/ktor/utils/io/core/Buffer;IB)V

    .line 476
    int-to-long v9, v8

    add-long/2addr v0, v9

    .line 477
    cmp-long v9, v0, p1

    if-gez v9, :cond_0

    move v9, v5

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 765
    .end local v6    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$a$-writeWhile-OutputKt$fill$1":I
    .end local v8    # "partTimes":I
    :goto_1
    if-eqz v9, :cond_1

    .line 767
    invoke-static {v2, v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 771
    nop

    .line 772
    nop

    .line 479
    .end local v2    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .end local v3    # "$i$f$writeWhile":I
    .end local v4    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return-void

    .line 770
    .restart local v2    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .restart local v3    # "$i$f$writeWhile":I
    .restart local v4    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v5
.end method

.method public static synthetic fill$default(Lio/ktor/utils/io/core/Output;JBILjava/lang/Object;)V
    .locals 0

    .line 471
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->fill(Lio/ktor/utils/io/core/Output;JB)V

    return-void
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V
    .locals 17
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Output;
    .param p1, "src"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    const/4 v3, 0x0

    .local v3, "offset$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v5, 0x0

    .line 718
    .local v5, "$i$f$writeFullyBytesTemplate":I
    const/4 v0, 0x0

    .local v0, "currentOffset$iv":I
    move v0, v3

    .line 719
    const/4 v6, 0x0

    .local v6, "remaining$iv":I
    move/from16 v6, p2

    .line 721
    move-object v7, v4

    .local v7, "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 722
    .local v8, "$i$f$writeWhile":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v10, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 723
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v11, v9

    move v9, v6

    move v6, v0

    .line 724
    .end local v0    # "currentOffset$iv":I
    .local v6, "currentOffset$iv":I
    .local v9, "remaining$iv":I
    .local v11, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 725
    :try_start_0
    move-object v0, v11

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 726
    .local v12, "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$1$iv":I
    move-object v13, v0

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 727
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 726
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 728
    .local v13, "size$iv":I
    move-object v14, v0

    .local v14, "buffer":Lio/ktor/utils/io/core/Buffer;
    move v15, v13

    .local v15, "count":I
    const/16 v16, 0x0

    .line 454
    .local v16, "$i$a$-writeFullyBytesTemplate-OutputKt$writeFully$7":I
    invoke-static {v14, v1, v15}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)V

    .line 455
    nop

    .line 728
    .end local v14    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "count":I
    .end local v16    # "$i$a$-writeFullyBytesTemplate-OutputKt$writeFully$7":I
    nop

    .line 729
    add-int/2addr v6, v13

    .line 730
    sub-int/2addr v9, v13

    .line 731
    if-lez v9, :cond_0

    move v14, v10

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 725
    .end local v0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$1$iv":I
    .end local v13    # "size$iv":I
    :goto_1
    if-eqz v14, :cond_1

    .line 732
    invoke-static {v7, v10, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 736
    nop

    .line 737
    nop

    .line 738
    .end local v7    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhile":I
    .end local v11    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 456
    .end local v3    # "offset$iv":I
    .end local v4    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v5    # "$i$f$writeFullyBytesTemplate":I
    .end local v6    # "currentOffset$iv":I
    .end local v9    # "remaining$iv":I
    return-void

    .line 735
    .restart local v3    # "offset$iv":I
    .restart local v4    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v5    # "$i$f$writeFullyBytesTemplate":I
    .restart local v6    # "currentOffset$iv":I
    .restart local v7    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhile":I
    .restart local v9    # "remaining$iv":I
    .restart local v11    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Output;[BII)V
    .locals 17
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Output;
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    move-object/from16 v3, p0

    .local v3, "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v4, 0x0

    .line 577
    .local v4, "$i$f$writeFullyBytesTemplate":I
    const/4 v0, 0x0

    .local v0, "currentOffset$iv":I
    move/from16 v0, p2

    .line 578
    const/4 v5, 0x0

    .local v5, "remaining$iv":I
    move/from16 v5, p3

    .line 580
    move-object v6, v3

    .local v6, "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v7, 0x0

    .line 581
    .local v7, "$i$f$writeWhile":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v9, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    .line 582
    .local v8, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v10, v8

    move v8, v5

    move v5, v0

    .line 583
    .end local v0    # "currentOffset$iv":I
    .local v5, "currentOffset$iv":I
    .local v8, "remaining$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 584
    :try_start_0
    move-object v0, v10

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 585
    .local v11, "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$1$iv":I
    move-object v12, v0

    .local v12, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 586
    .local v13, "$i$f$getWriteRemaining":I
    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v14

    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    sub-int/2addr v14, v15

    .line 585
    .end local v12    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$getWriteRemaining":I
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 587
    .local v12, "size$iv":I
    move-object v13, v0

    .local v13, "buffer":Lio/ktor/utils/io/core/Buffer;
    move v14, v12

    .local v14, "count":I
    move v15, v5

    .local v15, "currentOffset":I
    const/16 v16, 0x0

    .line 412
    .local v16, "$i$a$-writeFullyBytesTemplate-OutputKt$writeFully$1":I
    invoke-static {v13, v1, v15, v14}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 413
    nop

    .line 587
    .end local v13    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "count":I
    .end local v15    # "currentOffset":I
    .end local v16    # "$i$a$-writeFullyBytesTemplate-OutputKt$writeFully$1":I
    nop

    .line 588
    add-int/2addr v5, v12

    .line 589
    sub-int/2addr v8, v12

    .line 590
    if-lez v8, :cond_0

    move v13, v9

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    .line 584
    .end local v0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$1$iv":I
    .end local v12    # "size$iv":I
    :goto_1
    if-eqz v13, :cond_1

    .line 591
    invoke-static {v6, v9, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 595
    nop

    .line 596
    nop

    .line 597
    .end local v6    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v7    # "$i$f$writeWhile":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 414
    .end local v3    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "$i$f$writeFullyBytesTemplate":I
    .end local v5    # "currentOffset$iv":I
    .end local v8    # "remaining$iv":I
    return-void

    .line 594
    .restart local v3    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "$i$f$writeFullyBytesTemplate":I
    .restart local v5    # "currentOffset$iv":I
    .restart local v6    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v7    # "$i$f$writeWhile":I
    .restart local v8    # "remaining$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Output;[DII)V
    .locals 20
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Output;
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    const/16 v0, 0x8

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 694
    .local v5, "$i$f$writeFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "currentOffset$iv":I
    move/from16 v0, p2

    .line 695
    const/4 v6, 0x0

    .local v6, "remaining$iv":I
    move/from16 v6, p3

    .line 697
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 698
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 700
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move/from16 v19, v6

    move v6, v0

    move v0, v10

    move-object v10, v9

    move/from16 v9, v19

    .line 702
    .local v0, "size$iv$iv":I
    .local v6, "currentOffset$iv":I
    .local v9, "remaining$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 703
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 704
    .local v12, "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 705
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 704
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 706
    .local v13, "size$iv":I
    move-object v14, v11

    .local v14, "buffer":Lio/ktor/utils/io/core/Buffer;
    move v15, v13

    .local v15, "count":I
    move/from16 v16, v6

    .local v16, "currentOffset":I
    const/16 v17, 0x0

    .line 447
    .local v17, "$i$a$-writeFullyTemplate-OutputKt$writeFully$6":I
    move/from16 v18, v0

    move/from16 v0, v16

    .end local v16    # "currentOffset":I
    .local v0, "currentOffset":I
    .local v18, "size$iv$iv":I
    invoke-static {v14, v1, v0, v15}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[DII)V

    .line 448
    nop

    .line 706
    .end local v0    # "currentOffset":I
    .end local v14    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "count":I
    .end local v17    # "$i$a$-writeFullyTemplate-OutputKt$writeFully$6":I
    nop

    .line 707
    add-int/2addr v6, v13

    .line 708
    sub-int/2addr v9, v13

    .line 709
    mul-int v0, v9, v4

    .line 703
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    .end local v13    # "size$iv":I
    nop

    .line 710
    .end local v18    # "size$iv$iv":I
    .local v0, "size$iv$iv":I
    if-lez v0, :cond_0

    .line 711
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v11

    goto :goto_0

    .line 714
    .end local v0    # "size$iv$iv":I
    :cond_0
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 715
    nop

    .line 716
    nop

    .line 717
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 449
    .end local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeFullyTemplate":I
    .end local v6    # "currentOffset$iv":I
    .end local v9    # "remaining$iv":I
    return-void

    .line 714
    .restart local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeFullyTemplate":I
    .restart local v6    # "currentOffset$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "remaining$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Output;[FII)V
    .locals 20
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Output;
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    const/4 v0, 0x4

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 670
    .local v5, "$i$f$writeFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "currentOffset$iv":I
    move/from16 v0, p2

    .line 671
    const/4 v6, 0x0

    .local v6, "remaining$iv":I
    move/from16 v6, p3

    .line 673
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 674
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 676
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move/from16 v19, v6

    move v6, v0

    move v0, v10

    move-object v10, v9

    move/from16 v9, v19

    .line 678
    .local v0, "size$iv$iv":I
    .local v6, "currentOffset$iv":I
    .local v9, "remaining$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 679
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 680
    .local v12, "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 681
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 680
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 682
    .local v13, "size$iv":I
    move-object v14, v11

    .local v14, "buffer":Lio/ktor/utils/io/core/Buffer;
    move v15, v13

    .local v15, "count":I
    move/from16 v16, v6

    .local v16, "currentOffset":I
    const/16 v17, 0x0

    .line 440
    .local v17, "$i$a$-writeFullyTemplate-OutputKt$writeFully$5":I
    move/from16 v18, v0

    move/from16 v0, v16

    .end local v16    # "currentOffset":I
    .local v0, "currentOffset":I
    .local v18, "size$iv$iv":I
    invoke-static {v14, v1, v0, v15}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[FII)V

    .line 441
    nop

    .line 682
    .end local v0    # "currentOffset":I
    .end local v14    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "count":I
    .end local v17    # "$i$a$-writeFullyTemplate-OutputKt$writeFully$5":I
    nop

    .line 683
    add-int/2addr v6, v13

    .line 684
    sub-int/2addr v9, v13

    .line 685
    mul-int v0, v9, v4

    .line 679
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    .end local v13    # "size$iv":I
    nop

    .line 686
    .end local v18    # "size$iv$iv":I
    .local v0, "size$iv$iv":I
    if-lez v0, :cond_0

    .line 687
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v11

    goto :goto_0

    .line 690
    .end local v0    # "size$iv$iv":I
    :cond_0
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 691
    nop

    .line 692
    nop

    .line 693
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 442
    .end local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeFullyTemplate":I
    .end local v6    # "currentOffset$iv":I
    .end local v9    # "remaining$iv":I
    return-void

    .line 690
    .restart local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeFullyTemplate":I
    .restart local v6    # "currentOffset$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "remaining$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Output;[III)V
    .locals 20
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Output;
    .param p1, "src"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x4

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 622
    .local v5, "$i$f$writeFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "currentOffset$iv":I
    move/from16 v0, p2

    .line 623
    const/4 v6, 0x0

    .local v6, "remaining$iv":I
    move/from16 v6, p3

    .line 625
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 626
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 628
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move/from16 v19, v6

    move v6, v0

    move v0, v10

    move-object v10, v9

    move/from16 v9, v19

    .line 630
    .local v0, "size$iv$iv":I
    .local v6, "currentOffset$iv":I
    .local v9, "remaining$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 631
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 632
    .local v12, "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 633
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 632
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 634
    .local v13, "size$iv":I
    move-object v14, v11

    .local v14, "buffer":Lio/ktor/utils/io/core/Buffer;
    move v15, v13

    .local v15, "count":I
    move/from16 v16, v6

    .local v16, "currentOffset":I
    const/16 v17, 0x0

    .line 426
    .local v17, "$i$a$-writeFullyTemplate-OutputKt$writeFully$3":I
    move/from16 v18, v0

    move/from16 v0, v16

    .end local v16    # "currentOffset":I
    .local v0, "currentOffset":I
    .local v18, "size$iv$iv":I
    invoke-static {v14, v1, v0, v15}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[III)V

    .line 427
    nop

    .line 634
    .end local v0    # "currentOffset":I
    .end local v14    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "count":I
    .end local v17    # "$i$a$-writeFullyTemplate-OutputKt$writeFully$3":I
    nop

    .line 635
    add-int/2addr v6, v13

    .line 636
    sub-int/2addr v9, v13

    .line 637
    mul-int v0, v9, v4

    .line 631
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    .end local v13    # "size$iv":I
    nop

    .line 638
    .end local v18    # "size$iv$iv":I
    .local v0, "size$iv$iv":I
    if-lez v0, :cond_0

    .line 639
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v11

    goto :goto_0

    .line 642
    .end local v0    # "size$iv$iv":I
    :cond_0
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 643
    nop

    .line 644
    nop

    .line 645
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 428
    .end local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeFullyTemplate":I
    .end local v6    # "currentOffset$iv":I
    .end local v9    # "remaining$iv":I
    return-void

    .line 642
    .restart local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeFullyTemplate":I
    .restart local v6    # "currentOffset$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "remaining$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Output;[JII)V
    .locals 20
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Output;
    .param p1, "src"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    const/16 v0, 0x8

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 646
    .local v5, "$i$f$writeFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "currentOffset$iv":I
    move/from16 v0, p2

    .line 647
    const/4 v6, 0x0

    .local v6, "remaining$iv":I
    move/from16 v6, p3

    .line 649
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 650
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 652
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move/from16 v19, v6

    move v6, v0

    move v0, v10

    move-object v10, v9

    move/from16 v9, v19

    .line 654
    .local v0, "size$iv$iv":I
    .local v6, "currentOffset$iv":I
    .local v9, "remaining$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 655
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 656
    .local v12, "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 657
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 656
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 658
    .local v13, "size$iv":I
    move-object v14, v11

    .local v14, "buffer":Lio/ktor/utils/io/core/Buffer;
    move v15, v13

    .local v15, "count":I
    move/from16 v16, v6

    .local v16, "currentOffset":I
    const/16 v17, 0x0

    .line 433
    .local v17, "$i$a$-writeFullyTemplate-OutputKt$writeFully$4":I
    move/from16 v18, v0

    move/from16 v0, v16

    .end local v16    # "currentOffset":I
    .local v0, "currentOffset":I
    .local v18, "size$iv$iv":I
    invoke-static {v14, v1, v0, v15}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[JII)V

    .line 434
    nop

    .line 658
    .end local v0    # "currentOffset":I
    .end local v14    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "count":I
    .end local v17    # "$i$a$-writeFullyTemplate-OutputKt$writeFully$4":I
    nop

    .line 659
    add-int/2addr v6, v13

    .line 660
    sub-int/2addr v9, v13

    .line 661
    mul-int v0, v9, v4

    .line 655
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    .end local v13    # "size$iv":I
    nop

    .line 662
    .end local v18    # "size$iv$iv":I
    .local v0, "size$iv$iv":I
    if-lez v0, :cond_0

    .line 663
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v11

    goto :goto_0

    .line 666
    .end local v0    # "size$iv$iv":I
    :cond_0
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 667
    nop

    .line 668
    nop

    .line 669
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 435
    .end local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeFullyTemplate":I
    .end local v6    # "currentOffset$iv":I
    .end local v9    # "remaining$iv":I
    return-void

    .line 666
    .restart local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeFullyTemplate":I
    .restart local v6    # "currentOffset$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "remaining$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Output;[SII)V
    .locals 20
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Output;
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x2

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 598
    .local v5, "$i$f$writeFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "currentOffset$iv":I
    move/from16 v0, p2

    .line 599
    const/4 v6, 0x0

    .local v6, "remaining$iv":I
    move/from16 v6, p3

    .line 601
    move-object v7, v3

    .local v7, "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v8, 0x0

    .line 602
    .local v8, "$i$f$writeWhileSize":I
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    .line 604
    .local v9, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x0

    move/from16 v19, v6

    move v6, v0

    move v0, v10

    move-object v10, v9

    move/from16 v9, v19

    .line 606
    .local v0, "size$iv$iv":I
    .local v6, "currentOffset$iv":I
    .local v9, "remaining$iv":I
    .local v10, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 607
    :try_start_0
    move-object v11, v10

    check-cast v11, Lio/ktor/utils/io/core/Buffer;

    .local v11, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 608
    .local v12, "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 609
    .local v14, "$i$f$getWriteRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 608
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getWriteRemaining":I
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 610
    .local v13, "size$iv":I
    move-object v14, v11

    .local v14, "buffer":Lio/ktor/utils/io/core/Buffer;
    move v15, v13

    .local v15, "count":I
    move/from16 v16, v6

    .local v16, "currentOffset":I
    const/16 v17, 0x0

    .line 419
    .local v17, "$i$a$-writeFullyTemplate-OutputKt$writeFully$2":I
    move/from16 v18, v0

    move/from16 v0, v16

    .end local v16    # "currentOffset":I
    .local v0, "currentOffset":I
    .local v18, "size$iv$iv":I
    invoke-static {v14, v1, v0, v15}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[SII)V

    .line 420
    nop

    .line 610
    .end local v0    # "currentOffset":I
    .end local v14    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "count":I
    .end local v17    # "$i$a$-writeFullyTemplate-OutputKt$writeFully$2":I
    nop

    .line 611
    add-int/2addr v6, v13

    .line 612
    sub-int/2addr v9, v13

    .line 613
    mul-int v0, v9, v4

    .line 607
    .end local v11    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1$iv":I
    .end local v13    # "size$iv":I
    nop

    .line 614
    .end local v18    # "size$iv$iv":I
    .local v0, "size$iv$iv":I
    if-lez v0, :cond_0

    .line 615
    invoke-static {v7, v0, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v11

    goto :goto_0

    .line 618
    .end local v0    # "size$iv$iv":I
    :cond_0
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 619
    nop

    .line 620
    nop

    .line 621
    .end local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeWhileSize":I
    .end local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 421
    .end local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "componentSize$iv":I
    .end local v5    # "$i$f$writeFullyTemplate":I
    .end local v6    # "currentOffset$iv":I
    .end local v9    # "remaining$iv":I
    return-void

    .line 618
    .restart local v3    # "$this$writeFullyTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$writeFullyTemplate":I
    .restart local v6    # "currentOffset$iv":I
    .restart local v7    # "$this$writeWhileSize$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeWhileSize":I
    .restart local v9    # "remaining$iv":I
    .restart local v10    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)V
    .locals 1

    .line 452
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p1

    .local p2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 p3, 0x0

    .line 739
    .local p3, "$i$f$getReadRemaining":I
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p4

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    sub-int p2, p4, v0

    .line 452
    .end local p2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local p3    # "$i$f$getReadRemaining":I
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V
    .locals 0

    .line 410
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[BII)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Output;[DIIILjava/lang/Object;)V
    .locals 0

    .line 445
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[DII)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Output;[FIIILjava/lang/Object;)V
    .locals 0

    .line 438
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[FII)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Output;[IIIILjava/lang/Object;)V
    .locals 0

    .line 424
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[III)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Output;[JIIILjava/lang/Object;)V
    .locals 0

    .line 431
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[JII)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Output;[SIIILjava/lang/Object;)V
    .locals 0

    .line 417
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[SII)V

    return-void
.end method

.method public static final writeFully-UAd2zVI(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;II)V
    .locals 7
    .param p0, "$this$writeFully_u2dUAd2zVI"    # Lio/ktor/utils/io/core/Output;
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    int-to-long v3, p2

    int-to-long v5, p3

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/OutputKt;->writeFully-UAd2zVI(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;JJ)V

    .line 461
    return-void
.end method

.method public static final writeFully-UAd2zVI(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;JJ)V
    .locals 25
    .param p0, "$this$writeFully_u2dUAd2zVI"    # Lio/ktor/utils/io/core/Output;
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    const-string v0, "$this$writeFully"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    move-object/from16 v11, p0

    .local v11, "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v12, 0x0

    .line 740
    .local v12, "$i$f$writeFullyBytesTemplate":I
    const-wide/16 v2, 0x0

    .local v2, "currentOffset$iv":J
    move-wide/from16 v2, p2

    .line 741
    const-wide/16 v4, 0x0

    .local v4, "remaining$iv":J
    move-wide/from16 v4, p4

    .line 743
    move-object v13, v11

    .local v13, "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v14, 0x0

    .line 744
    .local v14, "$i$f$writeWhile":I
    const/4 v0, 0x0

    const/4 v15, 0x1

    invoke-static {v13, v15, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 745
    .local v0, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v8, v0

    move-wide/from16 v16, v2

    move-wide v6, v4

    .line 746
    .end local v0    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "currentOffset$iv":J
    .end local v4    # "remaining$iv":J
    .local v6, "remaining$iv":J
    .local v8, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v16, "currentOffset$iv":J
    :goto_0
    nop

    .line 747
    :try_start_0
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 748
    .local v18, "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$2$iv":I
    move-object v2, v0

    .local v2, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 749
    .local v3, "$i$f$getWriteRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 748
    .end local v2    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getWriteRemaining":I
    int-to-long v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v4, v2

    .line 750
    .local v4, "size$iv":J
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v19, v11

    .end local v11    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    .local v19, "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    int-to-long v10, v3

    .local v10, "destinationOffset":J
    move-object v3, v2

    .local v3, "memory":Ljava/nio/ByteBuffer;
    move-wide/from16 v20, v4

    .end local v4    # "size$iv":J
    .local v20, "size$iv":J
    move-wide/from16 v4, v16

    move-wide/from16 v22, v6

    .end local v6    # "remaining$iv":J
    .local v4, "sourceOffset":J
    .local v22, "remaining$iv":J
    move-wide/from16 v6, v20

    .local v6, "count":J
    const/16 v24, 0x0

    .line 466
    .local v24, "$i$a$-writeFullyBytesTemplate-OutputKt$writeFully$8":I
    move-object/from16 v2, p1

    move-object v1, v8

    .end local v8    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v1, "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-wide v8, v10

    :try_start_1
    invoke-static/range {v2 .. v9}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 467
    nop

    .line 750
    .end local v3    # "memory":Ljava/nio/ByteBuffer;
    .end local v4    # "sourceOffset":J
    .end local v6    # "count":J
    .end local v10    # "destinationOffset":J
    .end local v24    # "$i$a$-writeFullyBytesTemplate-OutputKt$writeFully$8":I
    nop

    .line 751
    move-wide/from16 v2, v20

    .end local v20    # "size$iv":J
    .local v2, "size$iv":J
    long-to-int v4, v2

    invoke-virtual {v0, v4}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 752
    add-long v16, v16, v2

    .line 753
    sub-long v6, v22, v2

    .line 754
    .end local v22    # "remaining$iv":J
    .local v6, "remaining$iv":J
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_0

    move v4, v15

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 747
    .end local v0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "size$iv":J
    .end local v18    # "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$2$iv":I
    :goto_1
    if-eqz v4, :cond_1

    .line 755
    :try_start_2
    invoke-static {v13, v15, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v0

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, v19

    .end local v1    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v8    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0

    .line 758
    .end local v8    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v1    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 759
    nop

    .line 760
    nop

    .line 761
    .end local v1    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v14    # "$i$f$writeWhile":I
    nop

    .line 468
    .end local v6    # "remaining$iv":J
    .end local v12    # "$i$f$writeFullyBytesTemplate":I
    .end local v16    # "currentOffset$iv":J
    .end local v19    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    return-void

    .line 758
    .restart local v1    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v12    # "$i$f$writeFullyBytesTemplate":I
    .restart local v13    # "$this$writeWhile$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v14    # "$i$f$writeWhile":I
    .restart local v16    # "currentOffset$iv":J
    .restart local v19    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v22    # "remaining$iv":J
    :catchall_1
    move-exception v0

    move-wide/from16 v6, v22

    goto :goto_2

    .end local v1    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v19    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v22    # "remaining$iv":J
    .restart local v6    # "remaining$iv":J
    .restart local v8    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    :catchall_2
    move-exception v0

    move-wide/from16 v22, v6

    move-object v1, v8

    move-object/from16 v19, v11

    .end local v8    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    .restart local v1    # "tail$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v19    # "$this$writeFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Output;
    :goto_2
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method private static final writeFullyBytesTemplate(Lio/ktor/utils/io/core/Output;IILkotlin/jvm/functions/Function3;)V
    .locals 13
    .param p0, "$this$writeFullyBytesTemplate"    # Lio/ktor/utils/io/core/Output;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "block"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "II",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 527
    .local v1, "$i$f$writeFullyBytesTemplate":I
    const/4 v0, 0x0

    .local v0, "currentOffset":I
    move v0, p1

    .line 528
    const/4 v2, 0x0

    .local v2, "remaining":I
    move v2, p2

    .line 530
    move-object v3, p0

    .local v3, "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    const/4 v4, 0x0

    .line 773
    .local v4, "$i$f$writeWhile":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v6, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    .line 774
    .local v5, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v7, v5

    move v5, v2

    move v2, v0

    .line 775
    .end local v0    # "currentOffset":I
    .local v2, "currentOffset":I
    .local v5, "remaining":I
    .local v7, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 776
    :try_start_0
    move-object v0, v7

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 531
    .local v8, "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$1":I
    move-object v9, v0

    .local v9, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 777
    .local v10, "$i$f$getWriteRemaining":I
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    sub-int/2addr v11, v12

    .line 531
    .end local v9    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$i$f$getWriteRemaining":I
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 532
    .local v9, "size":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v12, p3

    :try_start_1
    invoke-interface {v12, v0, v10, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    add-int/2addr v2, v9

    .line 534
    sub-int/2addr v5, v9

    .line 535
    if-lez v5, :cond_0

    move v10, v6

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 776
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$1":I
    .end local v9    # "size":I
    :goto_1
    if-eqz v10, :cond_1

    .line 778
    invoke-static {v3, v6, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v0

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 781
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 782
    nop

    .line 783
    nop

    .line 537
    .end local v3    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .end local v4    # "$i$f$writeWhile":I
    .end local v7    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return-void

    .line 781
    .restart local v3    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .restart local v4    # "$i$f$writeWhile":I
    .restart local v7    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v12, p3

    :goto_2
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method private static final writeFullyBytesTemplate(Lio/ktor/utils/io/core/Output;JJLkotlin/jvm/functions/Function4;)V
    .locals 17
    .param p0, "$this$writeFullyBytesTemplate"    # Lio/ktor/utils/io/core/Output;
    .param p1, "initialOffset"    # J
    .param p3, "length"    # J
    .param p5, "block"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "JJ",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lio/ktor/utils/io/bits/Memory;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 545
    .local v1, "$i$f$writeFullyBytesTemplate":I
    const-wide/16 v2, 0x0

    .local v2, "currentOffset":J
    move-wide/from16 v2, p1

    .line 546
    const-wide/16 v4, 0x0

    .local v4, "remaining":J
    move-wide/from16 v4, p3

    .line 548
    move-object/from16 v6, p0

    .local v6, "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    const/4 v7, 0x0

    .line 784
    .local v7, "$i$f$writeWhile":I
    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v8, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 785
    .local v0, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-wide v9, v4

    move-wide v3, v2

    move-object v2, v0

    .line 786
    .end local v0    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "remaining":J
    .local v2, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v3, "currentOffset":J
    .local v9, "remaining":J
    :goto_0
    nop

    .line 787
    :try_start_0
    move-object v0, v2

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 549
    .local v5, "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$2":I
    move-object v11, v0

    .local v11, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 788
    .local v12, "$i$f$getWriteRemaining":I
    invoke-virtual {v11}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    invoke-virtual {v11}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v14

    sub-int/2addr v13, v14

    .line 549
    .end local v11    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$f$getWriteRemaining":I
    int-to-long v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 550
    .local v11, "size":J
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {v13}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v13

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v16, v1

    move-object/from16 v1, p5

    .end local v1    # "$i$f$writeFullyBytesTemplate":I
    .local v16, "$i$f$writeFullyBytesTemplate":I
    :try_start_1
    invoke-interface {v1, v13, v14, v15, v8}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    long-to-int v8, v11

    invoke-virtual {v0, v8}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 552
    add-long/2addr v3, v11

    .line 553
    sub-long/2addr v9, v11

    .line 554
    const-wide/16 v13, 0x0

    cmp-long v8, v9, v13

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 787
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-writeWhile-OutputKt$writeFullyBytesTemplate$2":I
    .end local v11    # "size":J
    :goto_1
    if-eqz v8, :cond_1

    .line 789
    const/4 v5, 0x1

    invoke-static {v6, v5, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    move v8, v5

    move/from16 v1, v16

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 792
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 793
    nop

    .line 794
    nop

    .line 556
    .end local v2    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v6    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .end local v7    # "$i$f$writeWhile":I
    return-void

    .line 792
    .restart local v2    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v6    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .restart local v7    # "$i$f$writeWhile":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v16    # "$i$f$writeFullyBytesTemplate":I
    .restart local v1    # "$i$f$writeFullyBytesTemplate":I
    :catchall_1
    move-exception v0

    move/from16 v16, v1

    move-object/from16 v1, p5

    .end local v1    # "$i$f$writeFullyBytesTemplate":I
    .restart local v16    # "$i$f$writeFullyBytesTemplate":I
    :goto_2
    const/4 v5, 0x1

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method private static final writeFullyTemplate(Lio/ktor/utils/io/core/Output;IIILkotlin/jvm/functions/Function3;)V
    .locals 16
    .param p0, "$this$writeFullyTemplate"    # Lio/ktor/utils/io/core/Output;
    .param p1, "componentSize"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "block"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "III",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 565
    .local v2, "$i$f$writeFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "currentOffset":I
    move/from16 v0, p2

    .line 566
    const/4 v3, 0x0

    .local v3, "remaining":I
    move/from16 v3, p3

    .line 568
    move-object/from16 v4, p0

    .local v4, "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    const/4 v5, 0x0

    .line 795
    .local v5, "$i$f$writeWhileSize":I
    const/4 v6, 0x0

    invoke-static {v4, v1, v6}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6

    .line 797
    .local v6, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v7, 0x0

    move v15, v3

    move v3, v0

    move v0, v7

    move-object v7, v6

    move v6, v15

    .line 799
    .local v0, "size$iv":I
    .local v3, "currentOffset":I
    .local v6, "remaining":I
    .local v7, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 800
    const/4 v8, 0x1

    :try_start_0
    move-object v9, v7

    check-cast v9, Lio/ktor/utils/io/core/Buffer;

    .local v9, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 569
    .local v10, "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1":I
    move-object v11, v9

    .local v11, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 801
    .local v12, "$i$f$getWriteRemaining":I
    invoke-virtual {v11}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    invoke-virtual {v11}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v14

    sub-int/2addr v13, v14

    .line 569
    .end local v11    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$f$getWriteRemaining":I
    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 570
    .local v11, "size":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p4

    :try_start_1
    invoke-interface {v14, v9, v12, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    add-int/2addr v3, v11

    .line 572
    sub-int/2addr v6, v11

    .line 573
    mul-int v9, v6, v1

    .line 800
    .end local v9    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$i$a$-writeWhileSize-OutputKt$writeFullyTemplate$1":I
    .end local v11    # "size":I
    move v0, v9

    .line 802
    if-lez v0, :cond_0

    .line 803
    invoke-static {v4, v0, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v8

    goto :goto_0

    .end local v0    # "size$iv":I
    :cond_0
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 806
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 807
    nop

    .line 808
    nop

    .line 575
    .end local v4    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .end local v5    # "$i$f$writeWhileSize":I
    .end local v7    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return-void

    .line 806
    .restart local v4    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .restart local v5    # "$i$f$writeWhileSize":I
    .restart local v7    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v14, p4

    :goto_1
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method public static final writeWhile(Lio/ktor/utils/io/core/Output;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$writeWhile"    # Lio/ktor/utils/io/core/Output;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
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

    .line 488
    .local v0, "$i$f$writeWhile":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 489
    .local v1, "tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 490
    :goto_0
    nop

    .line 491
    :try_start_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    invoke-static {p0, v2, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 495
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 496
    nop

    .line 497
    return-void

    .line 495
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final writeWhileSize(Lio/ktor/utils/io/core/Output;ILkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p0, "$this$writeWhileSize"    # Lio/ktor/utils/io/core/Output;
    .param p1, "initialSize"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
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

    .line 507
    .local v0, "$i$f$writeWhileSize":I
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 509
    .local v1, "tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v2, 0x0

    .line 511
    .local v2, "size":I
    :goto_0
    nop

    .line 512
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v2, v4

    .line 513
    if-lez v2, :cond_0

    .line 514
    invoke-static {p0, v2, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_0

    .end local v2    # "size":I
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 517
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 518
    nop

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception v2

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
.end method

.method public static synthetic writeWhileSize$default(Lio/ktor/utils/io/core/Output;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 3
    .param p0, "$this$writeWhileSize_u24default"    # Lio/ktor/utils/io/core/Output;
    .param p1, "initialSize"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 506
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

    .line 507
    .local p3, "$i$f$writeWhileSize":I
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 509
    .local v0, "tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v1, 0x0

    .line 511
    .local v1, "size":I
    :goto_0
    nop

    .line 512
    :try_start_0
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v1, v2

    .line 513
    if-lez v1, :cond_1

    .line 514
    invoke-static {p0, v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    .end local v1    # "size":I
    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 517
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 518
    nop

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception v1

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method
