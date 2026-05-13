.class public final Lio/ktor/utils/io/ChannelLittleEndianKt;
.super Ljava/lang/Object;
.source "ChannelLittleEndian.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelLittleEndian.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelLittleEndian.kt\nio/ktor/utils/io/ChannelLittleEndianKt\n+ 2 ByteOrderJvm.kt\nio/ktor/utils/io/bits/ByteOrderJVMKt\n*L\n1#1,98:1\n93#1,3:99\n93#1,3:103\n93#1,3:107\n93#1,3:111\n93#1,3:121\n87#1:131\n87#1:133\n87#1:135\n87#1:137\n87#1:145\n93#1,3:153\n93#1,3:157\n93#1,3:161\n93#1,3:165\n93#1,3:175\n89#1:185\n89#1:187\n89#1:189\n89#1:191\n89#1:199\n9#2:102\n15#2:106\n21#2:110\n30#2:114\n29#2:115\n28#2,5:116\n41#2:124\n40#2:125\n39#2,5:126\n9#2:132\n15#2:134\n21#2:136\n30#2:138\n29#2:139\n28#2,5:140\n41#2:146\n40#2:147\n39#2,5:148\n9#2:156\n15#2:160\n21#2:164\n30#2:168\n29#2:169\n28#2,5:170\n41#2:178\n40#2:179\n39#2,5:180\n9#2:186\n15#2:188\n21#2:190\n30#2:192\n29#2:193\n28#2,5:194\n41#2:200\n40#2:201\n39#2,5:202\n*S KotlinDebug\n*F\n+ 1 ChannelLittleEndian.kt\nio/ktor/utils/io/ChannelLittleEndianKt\n*L\n7#1:99,3\n11#1:103,3\n15#1:107,3\n19#1:111,3\n23#1:121,3\n27#1:131\n31#1:133\n35#1:135\n39#1:137\n43#1:145\n47#1:153,3\n51#1:157,3\n55#1:161,3\n59#1:165,3\n63#1:175,3\n67#1:185\n71#1:187\n75#1:189\n79#1:191\n83#1:199\n7#1:102\n11#1:106\n15#1:110\n19#1:114\n19#1:115\n19#1:116,5\n23#1:124\n23#1:125\n23#1:126,5\n27#1:132\n31#1:134\n35#1:136\n39#1:138\n39#1:139\n39#1:140,5\n43#1:146\n43#1:147\n43#1:148,5\n47#1:156\n51#1:160\n55#1:164\n59#1:168\n59#1:169\n59#1:170,5\n63#1:178\n63#1:179\n63#1:180,5\n67#1:186\n71#1:188\n75#1:190\n79#1:192\n79#1:193\n79#1:194,5\n83#1:200\n83#1:201\n83#1:202,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0014\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u0002H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u001d\u0010\u0008\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\n\u001a\u00020\t*\u00020\u0002H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u001d\u0010\u000b\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\r\u001a\u00020\u000c*\u00020\u0002H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u001d\u0010\u000e\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0010\u001a\u00020\u000f*\u00020\u0002H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u001d\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0013\u001a\u00020\u0012*\u00020\u0002H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a<\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u0015*\u0002H\u00152\u0006\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u0002H\u0015\u0012\u0004\u0012\u0002H\u00150\u0017\u00a2\u0006\u0002\u0008\u0018H\u0081\u0008\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u0019\u001a<\u0010\u001a\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u0015*\u00020\u00022\u0006\u0010\u001b\u001a\u0002H\u00152\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u0002H\u0015\u0012\u0004\u0012\u0002H\u00150\u0017\u00a2\u0006\u0002\u0008\u0018H\u0081\u0008\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u001c\u001a9\u0010\u001a\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u0015*\u00020\u001d2\u0006\u0010\u001b\u001a\u0002H\u00152\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u0002H\u0015\u0012\u0004\u0012\u0002H\u00150\u0017\u00a2\u0006\u0002\u0008\u0018H\u0082\u0008\u00a2\u0006\u0002\u0010\u001e\u001a%\u0010\u001f\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!\u001a\u001d\u0010\"\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#\u001a%\u0010$\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%\u001a\u001d\u0010&\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\tH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\'\u001a%\u0010(\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)\u001a\u001d\u0010*\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u000cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010+\u001a%\u0010,\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-\u001a\u001d\u0010.\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/\u001a%\u00100\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101\u001a\u001d\u00102\u001a\u00020 *\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00103\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\u00a8\u00064"
    }
    d2 = {
        "readDouble",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "byteOrder",
        "Lio/ktor/utils/io/core/ByteOrder;",
        "(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readDoubleLittleEndian",
        "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readFloat",
        "",
        "readFloatLittleEndian",
        "readInt",
        "",
        "readIntLittleEndian",
        "readLong",
        "",
        "readLongLittleEndian",
        "readShort",
        "",
        "readShortLittleEndian",
        "reverseIfNeeded",
        "T",
        "reverseBlock",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "toLittleEndian",
        "value",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "writeDouble",
        "",
        "(Lio/ktor/utils/io/ByteWriteChannel;DLio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeDoubleLittleEndian",
        "(Lio/ktor/utils/io/ByteWriteChannel;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeFloat",
        "(Lio/ktor/utils/io/ByteWriteChannel;FLio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeFloatLittleEndian",
        "(Lio/ktor/utils/io/ByteWriteChannel;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeInt",
        "(Lio/ktor/utils/io/ByteWriteChannel;ILio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeIntLittleEndian",
        "(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeLong",
        "(Lio/ktor/utils/io/ByteWriteChannel;JLio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeLongLittleEndian",
        "(Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeShort",
        "(Lio/ktor/utils/io/ByteWriteChannel;SLio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeShortLittleEndian",
        "(Lio/ktor/utils/io/ByteWriteChannel;SLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final readDouble(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 22
    iget v2, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readDouble":I
    iget-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/ByteOrder;

    .local p1, "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readDouble":I
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readDouble":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    const/4 v2, 0x0

    .line 23
    .local v2, "$i$f$readDouble":I
    iput-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readDouble$1;->label:I

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readDouble(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readDouble":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 22
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 121
    .local v1, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget p1, v4, v5

    .line 122
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    if-ne p1, v3, :cond_2

    goto :goto_2

    .line 123
    :cond_2
    move-object p1, p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    .local p0, "$this$readDouble_u24lambda_u244":D
    const/4 v3, 0x0

    .line 23
    .local v3, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readDouble$2":I
    move-wide v4, p0

    .local v4, "$this$reverseByteOrder$iv":D
    const/4 v6, 0x0

    .line 124
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    .line 125
    invoke-static {v7, v8}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v7

    .line 126
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 130
    nop

    .line 23
    .end local v4    # "$this$reverseByteOrder$iv":D
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .end local v3    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readDouble$2":I
    .end local p0    # "$this$readDouble_u24lambda_u244":D
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p0

    .line 123
    :goto_2
    nop

    .line 121
    nop

    .line 23
    .end local v1    # "$i$f$reverseIfNeeded":I
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readDouble$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p0, "$this$readDouble"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    .local v0, "$i$f$readDouble":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readDouble(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 v3, 0x0

    .line 121
    .local v3, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget v4, v4, v5

    .line 122
    if-ne v4, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 123
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .local v4, "$this$readDouble_u24lambda_u244":D
    const/4 v2, 0x0

    .line 23
    .local v2, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readDouble$2":I
    move-wide v6, v4

    .local v6, "$this$reverseByteOrder$iv":D
    const/4 v8, 0x0

    .line 128
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    .line 127
    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    .line 126
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 130
    nop

    .line 23
    .end local v6    # "$this$reverseByteOrder$iv":D
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .end local v2    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readDouble$2":I
    .end local v4    # "$this$readDouble_u24lambda_u244":D
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 123
    :goto_0
    nop

    .line 121
    nop

    .line 23
    .end local v1    # "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$reverseIfNeeded":I
    return-object v2
.end method

.method public static final readDoubleLittleEndian(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;

    invoke-direct {v0, p1}, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readDoubleLittleEndian":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readDoubleLittleEndian":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readDoubleLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$f$readDoubleLittleEndian":I
    const/4 v3, 0x1

    iput v3, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readDoubleLittleEndian$1;->label:I

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readDouble(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readDoubleLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 42
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "value$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 145
    .local v1, "$i$f$toLittleEndian":I
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .local v3, "$this$readDoubleLittleEndian_u24lambda_u249":D
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readDoubleLittleEndian$2":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":D
    const/4 v8, 0x0

    .line 146
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    .line 147
    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    .line 148
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 152
    nop

    .line 43
    .end local v6    # "$this$reverseByteOrder$iv":D
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .end local v3    # "$this$readDoubleLittleEndian_u24lambda_u249":D
    .end local v5    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readDoubleLittleEndian$2":I
    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v3

    .line 145
    nop

    .line 43
    .end local v1    # "$i$f$toLittleEndian":I
    .end local p0    # "value$iv":Ljava/lang/Object;
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readDoubleLittleEndian$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p0, "$this$readDoubleLittleEndian"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$readDoubleLittleEndian":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readDouble(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v2, p0

    .local v2, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v3, 0x0

    .line 145
    .local v3, "$i$f$toLittleEndian":I
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .local v4, "$this$readDoubleLittleEndian_u24lambda_u249":D
    const/4 v6, 0x0

    .line 43
    .local v6, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readDoubleLittleEndian$2":I
    move-wide v7, v4

    .local v7, "$this$reverseByteOrder$iv":D
    const/4 v9, 0x0

    .line 150
    .local v9, "$i$f$reverseByteOrder":I
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    .line 149
    invoke-static {v10, v11}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v10

    .line 148
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    .line 152
    nop

    .line 43
    .end local v7    # "$this$reverseByteOrder$iv":D
    .end local v9    # "$i$f$reverseByteOrder":I
    nop

    .end local v4    # "$this$readDoubleLittleEndian_u24lambda_u249":D
    .end local v6    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readDoubleLittleEndian$2":I
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 145
    nop

    .line 43
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    .end local v3    # "$i$f$toLittleEndian":I
    return-object v4
.end method

.method public static final readFloat(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readFloat":I
    iget-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/ByteOrder;

    .local p1, "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readFloat":I
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readFloat":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    const/4 v2, 0x0

    .line 19
    .local v2, "$i$f$readFloat":I
    iput-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloat$1;->label:I

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readFloat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readFloat":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 18
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 111
    .local v1, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget p1, v4, v5

    .line 112
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    if-ne p1, v3, :cond_2

    goto :goto_2

    .line 113
    :cond_2
    move-object p1, p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .local p0, "$this$readFloat_u24lambda_u243":F
    const/4 p1, 0x0

    .line 19
    .local p1, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readFloat$2":I
    move v3, p0

    .local v3, "$this$reverseByteOrder$iv":F
    const/4 v4, 0x0

    .line 114
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 116
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 120
    nop

    .line 19
    .end local v3    # "$this$reverseByteOrder$iv":F
    .end local v4    # "$i$f$reverseByteOrder":I
    nop

    .end local p0    # "$this$readFloat_u24lambda_u243":F
    .end local p1    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readFloat$2":I
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p0

    .line 113
    :goto_2
    nop

    .line 111
    nop

    .line 19
    .end local v1    # "$i$f$reverseIfNeeded":I
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readFloat$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$readFloat"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    .local v0, "$i$f$readFloat":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readFloat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 v3, 0x0

    .line 111
    .local v3, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget v4, v4, v5

    .line 112
    if-ne v4, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 113
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .local v2, "$this$readFloat_u24lambda_u243":F
    const/4 v4, 0x0

    .line 19
    .local v4, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readFloat$2":I
    move v5, v2

    .local v5, "$this$reverseByteOrder$iv":F
    const/4 v6, 0x0

    .line 118
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    .line 117
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    .line 116
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 120
    nop

    .line 19
    .end local v5    # "$this$reverseByteOrder$iv":F
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .end local v2    # "$this$readFloat_u24lambda_u243":F
    .end local v4    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readFloat$2":I
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 113
    :goto_0
    nop

    .line 111
    nop

    .line 19
    .end local v1    # "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$reverseIfNeeded":I
    return-object v2
.end method

.method public static final readFloatLittleEndian(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;

    invoke-direct {v0, p1}, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readFloatLittleEndian":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readFloatLittleEndian":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readFloatLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$f$readFloatLittleEndian":I
    const/4 v3, 0x1

    iput v3, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readFloatLittleEndian$1;->label:I

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readFloat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readFloatLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 38
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "value$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$f$toLittleEndian":I
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .local v3, "$this$readFloatLittleEndian_u24lambda_u248":F
    const/4 v4, 0x0

    .line 39
    .local v4, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readFloatLittleEndian$2":I
    move v5, v3

    .local v5, "$this$reverseByteOrder$iv":F
    const/4 v6, 0x0

    .line 138
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    .line 139
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    .line 140
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 144
    nop

    .line 39
    .end local v5    # "$this$reverseByteOrder$iv":F
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .end local v3    # "$this$readFloatLittleEndian_u24lambda_u248":F
    .end local v4    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readFloatLittleEndian$2":I
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    .line 137
    nop

    .line 39
    .end local v1    # "$i$f$toLittleEndian":I
    .end local p0    # "value$iv":Ljava/lang/Object;
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readFloatLittleEndian$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$readFloatLittleEndian"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    .local v0, "$i$f$readFloatLittleEndian":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readFloat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v2, p0

    .local v2, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v3, 0x0

    .line 137
    .local v3, "$i$f$toLittleEndian":I
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .local v4, "$this$readFloatLittleEndian_u24lambda_u248":F
    const/4 v5, 0x0

    .line 39
    .local v5, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readFloatLittleEndian$2":I
    move v6, v4

    .local v6, "$this$reverseByteOrder$iv":F
    const/4 v7, 0x0

    .line 142
    .local v7, "$i$f$reverseByteOrder":I
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    .line 141
    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    .line 140
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 144
    nop

    .line 39
    .end local v6    # "$this$reverseByteOrder$iv":F
    .end local v7    # "$i$f$reverseByteOrder":I
    nop

    .end local v4    # "$this$readFloatLittleEndian_u24lambda_u248":F
    .end local v5    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readFloatLittleEndian$2":I
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 137
    nop

    .line 39
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    .end local v3    # "$i$f$toLittleEndian":I
    return-object v4
.end method

.method public static final readInt(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 10
    iget v2, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readInt":I
    iget-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/ByteOrder;

    .local p1, "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readInt":I
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readInt":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    const/4 v2, 0x0

    .line 11
    .local v2, "$i$f$readInt":I
    iput-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readInt$1;->label:I

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readInt":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 10
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 103
    .local v1, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget p1, v4, v5

    .line 104
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    if-ne p1, v3, :cond_2

    goto :goto_2

    .line 105
    :cond_2
    move-object p1, p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    .local p0, "$this$readInt_u24lambda_u241":I
    const/4 p1, 0x0

    .line 11
    .local p1, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readInt$2":I
    move v3, p0

    .local v3, "$this$reverseByteOrder$iv":I
    const/4 v4, 0x0

    .line 106
    .local v4, "$i$f$reverseByteOrder":I
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    .line 11
    .end local v3    # "$this$reverseByteOrder$iv":I
    .end local v4    # "$i$f$reverseByteOrder":I
    nop

    .end local p0    # "$this$readInt_u24lambda_u241":I
    .end local p1    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readInt$2":I
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    .line 105
    :goto_2
    nop

    .line 103
    nop

    .line 11
    .end local v1    # "$i$f$reverseIfNeeded":I
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readInt$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$readInt"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    .local v0, "$i$f$readInt":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 v3, 0x0

    .line 103
    .local v3, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget v4, v4, v5

    .line 104
    if-ne v4, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 105
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "$this$readInt_u24lambda_u241":I
    const/4 v4, 0x0

    .line 11
    .local v4, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readInt$2":I
    move v5, v2

    .local v5, "$this$reverseByteOrder$iv":I
    const/4 v6, 0x0

    .line 106
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    .line 11
    .end local v5    # "$this$reverseByteOrder$iv":I
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .end local v2    # "$this$readInt_u24lambda_u241":I
    .end local v4    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readInt$2":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    :goto_0
    nop

    .line 103
    nop

    .line 11
    .end local v1    # "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$reverseIfNeeded":I
    return-object v2
.end method

.method public static final readIntLittleEndian(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;

    invoke-direct {v0, p1}, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget v2, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readIntLittleEndian":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readIntLittleEndian":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readIntLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v2, 0x0

    .line 31
    .local v2, "$i$f$readIntLittleEndian":I
    const/4 v3, 0x1

    iput v3, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readIntLittleEndian$1;->label:I

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readIntLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 30
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "value$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 133
    .local v1, "$i$f$toLittleEndian":I
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .local v3, "$this$readIntLittleEndian_u24lambda_u246":I
    const/4 v4, 0x0

    .line 31
    .local v4, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readIntLittleEndian$2":I
    move v5, v3

    .local v5, "$this$reverseByteOrder$iv":I
    const/4 v6, 0x0

    .line 134
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 31
    .end local v5    # "$this$reverseByteOrder$iv":I
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .end local v3    # "$this$readIntLittleEndian_u24lambda_u246":I
    .end local v4    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readIntLittleEndian$2":I
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 133
    nop

    .line 31
    .end local v1    # "$i$f$toLittleEndian":I
    .end local p0    # "value$iv":Ljava/lang/Object;
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readIntLittleEndian$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$readIntLittleEndian"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$readIntLittleEndian":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v2, p0

    .local v2, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v3, 0x0

    .line 133
    .local v3, "$i$f$toLittleEndian":I
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .local v4, "$this$readIntLittleEndian_u24lambda_u246":I
    const/4 v5, 0x0

    .line 31
    .local v5, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readIntLittleEndian$2":I
    move v6, v4

    .local v6, "$this$reverseByteOrder$iv":I
    const/4 v7, 0x0

    .line 134
    .local v7, "$i$f$reverseByteOrder":I
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    .line 31
    .end local v6    # "$this$reverseByteOrder$iv":I
    .end local v7    # "$i$f$reverseByteOrder":I
    nop

    .end local v4    # "$this$readIntLittleEndian_u24lambda_u246":I
    .end local v5    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readIntLittleEndian$2":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 133
    nop

    .line 31
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    .end local v3    # "$i$f$toLittleEndian":I
    return-object v4
.end method

.method public static final readLong(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readLong":I
    iget-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/ByteOrder;

    .local p1, "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readLong":I
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readLong":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    const/4 v2, 0x0

    .line 15
    .local v2, "$i$f$readLong":I
    iput-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readLong$1;->label:I

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readLong(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readLong":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 14
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 107
    .local v1, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget p1, v4, v5

    .line 108
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    if-ne p1, v3, :cond_2

    goto :goto_2

    .line 109
    :cond_2
    move-object p1, p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    .local p0, "$this$readLong_u24lambda_u242":J
    const/4 v3, 0x0

    .line 15
    .local v3, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readLong$2":I
    move-wide v4, p0

    .local v4, "$this$reverseByteOrder$iv":J
    const/4 v6, 0x0

    .line 110
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    .line 15
    .end local v4    # "$this$reverseByteOrder$iv":J
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .end local v3    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readLong$2":I
    .end local p0    # "$this$readLong_u24lambda_u242":J
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0

    .line 109
    :goto_2
    nop

    .line 107
    nop

    .line 15
    .end local v1    # "$i$f$reverseIfNeeded":I
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readLong$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p0, "$this$readLong"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    .local v0, "$i$f$readLong":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readLong(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 v3, 0x0

    .line 107
    .local v3, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget v4, v4, v5

    .line 108
    if-ne v4, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 109
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .local v4, "$this$readLong_u24lambda_u242":J
    const/4 v2, 0x0

    .line 15
    .local v2, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readLong$2":I
    move-wide v6, v4

    .local v6, "$this$reverseByteOrder$iv":J
    const/4 v8, 0x0

    .line 110
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    .line 15
    .end local v6    # "$this$reverseByteOrder$iv":J
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .end local v2    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readLong$2":I
    .end local v4    # "$this$readLong_u24lambda_u242":J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 109
    :goto_0
    nop

    .line 107
    nop

    .line 15
    .end local v1    # "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$reverseIfNeeded":I
    return-object v2
.end method

.method public static final readLongLittleEndian(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;

    invoke-direct {v0, p1}, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readLongLittleEndian":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readLongLittleEndian":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readLongLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v2, 0x0

    .line 35
    .local v2, "$i$f$readLongLittleEndian":I
    const/4 v3, 0x1

    iput v3, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readLongLittleEndian$1;->label:I

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readLong(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readLongLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 34
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "value$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 135
    .local v1, "$i$f$toLittleEndian":I
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .local v3, "$this$readLongLittleEndian_u24lambda_u247":J
    const/4 v5, 0x0

    .line 35
    .local v5, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readLongLittleEndian$2":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":J
    const/4 v8, 0x0

    .line 136
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v6

    .line 35
    .end local v6    # "$this$reverseByteOrder$iv":J
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .end local v3    # "$this$readLongLittleEndian_u24lambda_u247":J
    .end local v5    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readLongLittleEndian$2":I
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    .line 135
    nop

    .line 35
    .end local v1    # "$i$f$toLittleEndian":I
    .end local p0    # "value$iv":Ljava/lang/Object;
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readLongLittleEndian$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p0, "$this$readLongLittleEndian"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$readLongLittleEndian":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readLong(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v2, p0

    .local v2, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v3, 0x0

    .line 135
    .local v3, "$i$f$toLittleEndian":I
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .local v4, "$this$readLongLittleEndian_u24lambda_u247":J
    const/4 v6, 0x0

    .line 35
    .local v6, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readLongLittleEndian$2":I
    move-wide v7, v4

    .local v7, "$this$reverseByteOrder$iv":J
    const/4 v9, 0x0

    .line 136
    .local v9, "$i$f$reverseByteOrder":I
    invoke-static {v7, v8}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v10

    .line 35
    .end local v7    # "$this$reverseByteOrder$iv":J
    .end local v9    # "$i$f$reverseByteOrder":I
    nop

    .end local v4    # "$this$readLongLittleEndian_u24lambda_u247":J
    .end local v6    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readLongLittleEndian$2":I
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 135
    nop

    .line 35
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    .end local v3    # "$i$f$toLittleEndian":I
    return-object v4
.end method

.method public static final readShort(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6
    iget v2, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readShort":I
    iget-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/ByteOrder;

    .local p1, "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readShort":I
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readShort":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    const/4 v2, 0x0

    .line 7
    .local v2, "$i$f$readShort":I
    iput-object p1, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/utils/io/ChannelLittleEndianKt$readShort$1;->label:I

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readShort(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readShort":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 6
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 99
    .local v1, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget p1, v4, v5

    .line 100
    .end local p1    # "byteOrder":Lio/ktor/utils/io/core/ByteOrder;
    if-ne p1, v3, :cond_2

    goto :goto_2

    .line 101
    :cond_2
    move-object p1, p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    .local p0, "$this$readShort_u24lambda_u240":S
    const/4 p1, 0x0

    .line 7
    .local p1, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readShort$2":I
    move v3, p0

    .local v3, "$this$reverseByteOrder$iv":S
    const/4 v4, 0x0

    .line 102
    .local v4, "$i$f$reverseByteOrder":I
    int-to-short v5, v3

    invoke-static {v5}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    .line 7
    .end local v3    # "$this$reverseByteOrder$iv":S
    .end local v4    # "$i$f$reverseByteOrder":I
    nop

    .end local p0    # "$this$readShort_u24lambda_u240":S
    .end local p1    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readShort$2":I
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxShort(S)Ljava/lang/Short;

    move-result-object p0

    .line 101
    :goto_2
    nop

    .line 99
    nop

    .line 7
    .end local v1    # "$i$f$reverseIfNeeded":I
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readShort$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$readShort"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    .local v0, "$i$f$readShort":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readShort(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 v3, 0x0

    .line 99
    .local v3, "$i$f$reverseIfNeeded":I
    sget-object v4, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v5

    aget v4, v4, v5

    .line 100
    if-ne v4, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 101
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    .local v2, "$this$readShort_u24lambda_u240":S
    const/4 v4, 0x0

    .line 7
    .local v4, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readShort$2":I
    move v5, v2

    .local v5, "$this$reverseByteOrder$iv":S
    const/4 v6, 0x0

    .line 102
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v5}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    .line 7
    .end local v5    # "$this$reverseByteOrder$iv":S
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .end local v2    # "$this$readShort_u24lambda_u240":S
    .end local v4    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$readShort$2":I
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .line 101
    :goto_0
    nop

    .line 99
    nop

    .line 7
    .end local v1    # "$this$reverseIfNeeded$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$reverseIfNeeded":I
    return-object v2
.end method

.method public static final readShortLittleEndian(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;

    iget v1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;

    invoke-direct {v0, p1}, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 26
    iget v2, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$readShortLittleEndian":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "$i$f$readShortLittleEndian":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$readShortLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v2, 0x0

    .line 27
    .local v2, "$i$f$readShortLittleEndian":I
    const/4 v3, 0x1

    iput v3, p1, Lio/ktor/utils/io/ChannelLittleEndianKt$readShortLittleEndian$1;->label:I

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readShort(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readShortLittleEndian":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 26
    return-object v1

    :cond_1
    :goto_1
    nop

    .local p0, "value$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$f$toLittleEndian":I
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    move-result v3

    .local v3, "$this$readShortLittleEndian_u24lambda_u245":S
    const/4 v4, 0x0

    .line 27
    .local v4, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readShortLittleEndian$2":I
    move v5, v3

    .local v5, "$this$reverseByteOrder$iv":S
    const/4 v6, 0x0

    .line 132
    .local v6, "$i$f$reverseByteOrder":I
    int-to-short v7, v5

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v5

    .line 27
    .end local v5    # "$this$reverseByteOrder$iv":S
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .end local v3    # "$this$readShortLittleEndian_u24lambda_u245":S
    .end local v4    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readShortLittleEndian$2":I
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxShort(S)Ljava/lang/Short;

    move-result-object v3

    .line 131
    nop

    .line 27
    .end local v1    # "$i$f$toLittleEndian":I
    .end local p0    # "value$iv":Ljava/lang/Object;
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readShortLittleEndian$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$readShortLittleEndian"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$f$readShortLittleEndian":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p1}, Lio/ktor/utils/io/ByteReadChannel;->readShort(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v2, p0

    .local v2, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v3, 0x0

    .line 131
    .local v3, "$i$f$toLittleEndian":I
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    .local v4, "$this$readShortLittleEndian_u24lambda_u245":S
    const/4 v5, 0x0

    .line 27
    .local v5, "$i$a$-toLittleEndian-ChannelLittleEndianKt$readShortLittleEndian$2":I
    move v6, v4

    .local v6, "$this$reverseByteOrder$iv":S
    const/4 v7, 0x0

    .line 132
    .local v7, "$i$f$reverseByteOrder":I
    invoke-static {v6}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    .line 27
    .end local v6    # "$this$reverseByteOrder$iv":S
    .end local v7    # "$i$f$reverseByteOrder":I
    nop

    .end local v4    # "$this$readShortLittleEndian_u24lambda_u245":S
    .end local v5    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$readShortLittleEndian$2":I
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 131
    nop

    .line 27
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteReadChannel;
    .end local v3    # "$i$f$toLittleEndian":I
    return-object v4
.end method

.method public static final reverseIfNeeded(Ljava/lang/Object;Lio/ktor/utils/io/core/ByteOrder;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$reverseIfNeeded"    # Ljava/lang/Object;
    .param p1, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p2, "reverseBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reverseBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    .local v0, "$i$f$reverseIfNeeded":I
    sget-object v1, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 94
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    :goto_0
    return-object v1
.end method

.method public static final toLittleEndian(Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$toLittleEndian"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "reverseBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reverseBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 87
    .local v0, "$i$f$toLittleEndian":I
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static final toLittleEndian(Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$toLittleEndian"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "reverseBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    .local v0, "$i$f$toLittleEndian":I
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final writeDouble(Lio/ktor/utils/io/ByteWriteChannel;DLio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p0, "$this$writeDouble"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # D
    .param p3, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "D",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 63
    move-wide v0, p1

    .local v0, "$this$reverseIfNeeded$iv":D
    const/4 v2, 0x0

    .line 175
    .local v2, "$i$f$reverseIfNeeded":I
    sget-object v3, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v4

    aget v3, v3, v4

    .line 176
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-wide v9, v0

    goto :goto_0

    .line 177
    :cond_0
    move-wide v3, v0

    .local v3, "$this$writeDouble_u24lambda_u2414":D
    const/4 v5, 0x0

    .line 63
    .local v5, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeDouble$2":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":D
    const/4 v8, 0x0

    .line 178
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    .line 179
    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    .line 180
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 184
    nop

    .line 63
    .end local v6    # "$this$reverseByteOrder$iv":D
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .line 177
    .end local v3    # "$this$writeDouble_u24lambda_u2414":D
    .end local v5    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeDouble$2":I
    :goto_0
    nop

    .line 175
    nop

    .line 63
    .end local v0    # "$this$reverseIfNeeded$iv":D
    .end local v2    # "$i$f$reverseIfNeeded":I
    invoke-interface {p0, v9, v10, p4}, Lio/ktor/utils/io/ByteWriteChannel;->writeDouble(DLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 64
    return-object v0
.end method

.method public static final writeDoubleLittleEndian(Lio/ktor/utils/io/ByteWriteChannel;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p0, "$this$writeDoubleLittleEndian"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # D
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 83
    move-wide v0, p1

    .local v0, "value$iv":D
    move-object v2, p0

    .local v2, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v3, 0x0

    .line 199
    .local v3, "$i$f$toLittleEndian":I
    move-wide v4, v0

    .local v4, "$this$writeDoubleLittleEndian_u24lambda_u2419":D
    const/4 v6, 0x0

    .line 83
    .local v6, "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeDoubleLittleEndian$2":I
    move-wide v7, v4

    .local v7, "$this$reverseByteOrder$iv":D
    const/4 v9, 0x0

    .line 200
    .local v9, "$i$f$reverseByteOrder":I
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    .line 201
    invoke-static {v10, v11}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v10

    .line 202
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    .line 206
    nop

    .line 83
    .end local v7    # "$this$reverseByteOrder$iv":D
    .end local v9    # "$i$f$reverseByteOrder":I
    nop

    .line 199
    .end local v4    # "$this$writeDoubleLittleEndian_u24lambda_u2419":D
    .end local v6    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeDoubleLittleEndian$2":I
    nop

    .line 83
    .end local v0    # "value$iv":D
    .end local v2    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v3    # "$i$f$toLittleEndian":I
    invoke-interface {p0, v10, v11, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeDouble(DLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    return-object v0
.end method

.method public static final writeFloat(Lio/ktor/utils/io/ByteWriteChannel;FLio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$writeFloat"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # F
    .param p2, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "F",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 59
    move v0, p1

    .local v0, "$this$reverseIfNeeded$iv":F
    const/4 v1, 0x0

    .line 165
    .local v1, "$i$f$reverseIfNeeded":I
    sget-object v2, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 166
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v6, v0

    goto :goto_0

    .line 167
    :cond_0
    move v2, v0

    .local v2, "$this$writeFloat_u24lambda_u2413":F
    const/4 v3, 0x0

    .line 59
    .local v3, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeFloat$2":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":F
    const/4 v5, 0x0

    .line 168
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    .line 170
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 174
    nop

    .line 59
    .end local v4    # "$this$reverseByteOrder$iv":F
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 167
    .end local v2    # "$this$writeFloat_u24lambda_u2413":F
    .end local v3    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeFloat$2":I
    :goto_0
    nop

    .line 165
    nop

    .line 59
    .end local v0    # "$this$reverseIfNeeded$iv":F
    .end local v1    # "$i$f$reverseIfNeeded":I
    invoke-interface {p0, v6, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeFloat(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    return-object v0
.end method

.method public static final writeFloatLittleEndian(Lio/ktor/utils/io/ByteWriteChannel;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$writeFloatLittleEndian"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # F
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    move v0, p1

    .local v0, "value$iv":F
    move-object v1, p0

    .local v1, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v2, 0x0

    .line 191
    .local v2, "$i$f$toLittleEndian":I
    move v3, v0

    .local v3, "$this$writeFloatLittleEndian_u24lambda_u2418":F
    const/4 v4, 0x0

    .line 79
    .local v4, "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeFloatLittleEndian$2":I
    move v5, v3

    .local v5, "$this$reverseByteOrder$iv":F
    const/4 v6, 0x0

    .line 192
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    .line 193
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    .line 194
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 198
    nop

    .line 79
    .end local v5    # "$this$reverseByteOrder$iv":F
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .line 191
    .end local v3    # "$this$writeFloatLittleEndian_u24lambda_u2418":F
    .end local v4    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeFloatLittleEndian$2":I
    nop

    .line 79
    .end local v0    # "value$iv":F
    .end local v1    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v2    # "$i$f$toLittleEndian":I
    invoke-interface {p0, v7, p2}, Lio/ktor/utils/io/ByteWriteChannel;->writeFloat(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 80
    return-object v0
.end method

.method public static final writeInt(Lio/ktor/utils/io/ByteWriteChannel;ILio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$writeInt"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # I
    .param p2, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "I",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    move v0, p1

    .local v0, "$this$reverseIfNeeded$iv":I
    const/4 v1, 0x0

    .line 157
    .local v1, "$i$f$reverseIfNeeded":I
    sget-object v2, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 158
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v4, v0

    goto :goto_0

    .line 159
    :cond_0
    move v2, v0

    .local v2, "$this$writeInt_u24lambda_u2411":I
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeInt$2":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":I
    const/4 v5, 0x0

    .line 160
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 51
    .end local v4    # "$this$reverseByteOrder$iv":I
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 159
    .end local v2    # "$this$writeInt_u24lambda_u2411":I
    .end local v3    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeInt$2":I
    :goto_0
    nop

    .line 157
    nop

    .line 51
    .end local v0    # "$this$reverseIfNeeded$iv":I
    .end local v1    # "$i$f$reverseIfNeeded":I
    invoke-interface {p0, v4, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    return-object v0
.end method

.method public static final writeIntLittleEndian(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$writeIntLittleEndian"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    move v0, p1

    .local v0, "value$iv":I
    move-object v1, p0

    .local v1, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v2, 0x0

    .line 187
    .local v2, "$i$f$toLittleEndian":I
    move v3, v0

    .local v3, "$this$writeIntLittleEndian_u24lambda_u2416":I
    const/4 v4, 0x0

    .line 71
    .local v4, "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeIntLittleEndian$2":I
    move v5, v3

    .local v5, "$this$reverseByteOrder$iv":I
    const/4 v6, 0x0

    .line 188
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 71
    .end local v5    # "$this$reverseByteOrder$iv":I
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .line 187
    .end local v3    # "$this$writeIntLittleEndian_u24lambda_u2416":I
    .end local v4    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeIntLittleEndian$2":I
    nop

    .line 71
    .end local v0    # "value$iv":I
    .end local v1    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v2    # "$i$f$toLittleEndian":I
    invoke-interface {p0, v5, p2}, Lio/ktor/utils/io/ByteWriteChannel;->writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    return-object v0
.end method

.method public static final writeLong(Lio/ktor/utils/io/ByteWriteChannel;JLio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$writeLong"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # J
    .param p3, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "J",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 55
    move-wide v0, p1

    .local v0, "$this$reverseIfNeeded$iv":J
    const/4 v2, 0x0

    .line 161
    .local v2, "$i$f$reverseIfNeeded":I
    sget-object v3, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v4

    aget v3, v3, v4

    .line 162
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-wide v6, v0

    goto :goto_0

    .line 163
    :cond_0
    move-wide v3, v0

    .local v3, "$this$writeLong_u24lambda_u2412":J
    const/4 v5, 0x0

    .line 55
    .local v5, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeLong$2":I
    move-wide v6, v3

    .local v6, "$this$reverseByteOrder$iv":J
    const/4 v8, 0x0

    .line 164
    .local v8, "$i$f$reverseByteOrder":I
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v6

    .line 55
    .end local v6    # "$this$reverseByteOrder$iv":J
    .end local v8    # "$i$f$reverseByteOrder":I
    nop

    .line 163
    .end local v3    # "$this$writeLong_u24lambda_u2412":J
    .end local v5    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeLong$2":I
    :goto_0
    nop

    .line 161
    nop

    .line 55
    .end local v0    # "$this$reverseIfNeeded$iv":J
    .end local v2    # "$i$f$reverseIfNeeded":I
    invoke-interface {p0, v6, v7, p4}, Lio/ktor/utils/io/ByteWriteChannel;->writeLong(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    return-object v0
.end method

.method public static final writeLongLittleEndian(Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p0, "$this$writeLongLittleEndian"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 75
    move-wide v0, p1

    .local v0, "value$iv":J
    move-object v2, p0

    .local v2, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v3, 0x0

    .line 189
    .local v3, "$i$f$toLittleEndian":I
    move-wide v4, v0

    .local v4, "$this$writeLongLittleEndian_u24lambda_u2417":J
    const/4 v6, 0x0

    .line 75
    .local v6, "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeLongLittleEndian$2":I
    move-wide v7, v4

    .local v7, "$this$reverseByteOrder$iv":J
    const/4 v9, 0x0

    .line 190
    .local v9, "$i$f$reverseByteOrder":I
    invoke-static {v7, v8}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v7

    .line 75
    .end local v7    # "$this$reverseByteOrder$iv":J
    .end local v9    # "$i$f$reverseByteOrder":I
    nop

    .line 189
    .end local v4    # "$this$writeLongLittleEndian_u24lambda_u2417":J
    .end local v6    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeLongLittleEndian$2":I
    nop

    .line 75
    .end local v0    # "value$iv":J
    .end local v2    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v3    # "$i$f$toLittleEndian":I
    invoke-interface {p0, v7, v8, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeLong(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    return-object v0
.end method

.method public static final writeShort(Lio/ktor/utils/io/ByteWriteChannel;SLio/ktor/utils/io/core/ByteOrder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$writeShort"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # S
    .param p2, "byteOrder"    # Lio/ktor/utils/io/core/ByteOrder;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "S",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    move v0, p1

    .local v0, "$this$reverseIfNeeded$iv":S
    const/4 v1, 0x0

    .line 153
    .local v1, "$i$f$reverseIfNeeded":I
    sget-object v2, Lio/ktor/utils/io/ChannelLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 154
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v4, v0

    goto :goto_0

    .line 155
    :cond_0
    move v2, v0

    .local v2, "$this$writeShort_u24lambda_u2410":S
    const/4 v3, 0x0

    .line 47
    .local v3, "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeShort$2":I
    move v4, v2

    .local v4, "$this$reverseByteOrder$iv":S
    const/4 v5, 0x0

    .line 156
    .local v5, "$i$f$reverseByteOrder":I
    invoke-static {v4}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v4

    .line 47
    .end local v4    # "$this$reverseByteOrder$iv":S
    .end local v5    # "$i$f$reverseByteOrder":I
    nop

    .line 155
    .end local v2    # "$this$writeShort_u24lambda_u2410":S
    .end local v3    # "$i$a$-reverseIfNeeded-ChannelLittleEndianKt$writeShort$2":I
    :goto_0
    nop

    .line 153
    nop

    .line 47
    .end local v0    # "$this$reverseIfNeeded$iv":S
    .end local v1    # "$i$f$reverseIfNeeded":I
    invoke-interface {p0, v4, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeShort(SLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    return-object v0
.end method

.method public static final writeShortLittleEndian(Lio/ktor/utils/io/ByteWriteChannel;SLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$writeShortLittleEndian"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "value"    # S
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "S",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 67
    move v0, p1

    .local v0, "value$iv":S
    move-object v1, p0

    .local v1, "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v2, 0x0

    .line 185
    .local v2, "$i$f$toLittleEndian":I
    move v3, v0

    .local v3, "$this$writeShortLittleEndian_u24lambda_u2415":S
    const/4 v4, 0x0

    .line 67
    .local v4, "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeShortLittleEndian$2":I
    move v5, v3

    .local v5, "$this$reverseByteOrder$iv":S
    const/4 v6, 0x0

    .line 186
    .local v6, "$i$f$reverseByteOrder":I
    invoke-static {v5}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v5

    .line 67
    .end local v5    # "$this$reverseByteOrder$iv":S
    .end local v6    # "$i$f$reverseByteOrder":I
    nop

    .line 185
    .end local v3    # "$this$writeShortLittleEndian_u24lambda_u2415":S
    .end local v4    # "$i$a$-toLittleEndian-ChannelLittleEndianKt$writeShortLittleEndian$2":I
    nop

    .line 67
    .end local v0    # "value$iv":S
    .end local v1    # "$this$toLittleEndian$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v2    # "$i$f$toLittleEndian":I
    invoke-interface {p0, v5, p2}, Lio/ktor/utils/io/ByteWriteChannel;->writeShort(SLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    return-object v0
.end method
