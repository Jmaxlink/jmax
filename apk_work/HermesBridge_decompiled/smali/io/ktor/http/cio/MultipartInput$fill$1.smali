.class final Lio/ktor/http/cio/MultipartInput$fill$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CIOMultipartDataBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/MultipartInput;->fill-62zg_DM(Ljava/nio/ByteBuffer;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIOMultipartDataBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIOMultipartDataBase.kt\nio/ktor/http/cio/MultipartInput$fill$1\n+ 2 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 3 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n*L\n1#1,221:1\n282#2:222\n283#2,3:227\n17#3,4:223\n*S KotlinDebug\n*F\n+ 1 CIOMultipartDataBase.kt\nio/ktor/http/cio/MultipartInput$fill$1\n*L\n209#1:222\n209#1:227,3\n209#1:223,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.http.cio.MultipartInput$fill$1"
    f = "CIOMultipartDataBase.kt"
    i = {
        0x0
    }
    l = {
        0xd0
    }
    m = "invokeSuspend"
    n = {
        "buffer"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $destination:Ljava/nio/ByteBuffer;

.field final synthetic $length:I

.field final synthetic $offset:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/http/cio/MultipartInput;


# direct methods
.method constructor <init>(Lio/ktor/http/cio/MultipartInput;ILjava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/cio/MultipartInput;",
            "I",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/MultipartInput$fill$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/http/cio/MultipartInput$fill$1;->this$0:Lio/ktor/http/cio/MultipartInput;

    iput p2, p0, Lio/ktor/http/cio/MultipartInput$fill$1;->$length:I

    iput-object p3, p0, Lio/ktor/http/cio/MultipartInput$fill$1;->$destination:Ljava/nio/ByteBuffer;

    iput p4, p0, Lio/ktor/http/cio/MultipartInput$fill$1;->$offset:I

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/ktor/http/cio/MultipartInput$fill$1;

    iget-object v1, p0, Lio/ktor/http/cio/MultipartInput$fill$1;->this$0:Lio/ktor/http/cio/MultipartInput;

    iget v2, p0, Lio/ktor/http/cio/MultipartInput$fill$1;->$length:I

    iget-object v3, p0, Lio/ktor/http/cio/MultipartInput$fill$1;->$destination:Ljava/nio/ByteBuffer;

    iget v4, p0, Lio/ktor/http/cio/MultipartInput$fill$1;->$offset:I

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/ktor/http/cio/MultipartInput$fill$1;-><init>(Lio/ktor/http/cio/MultipartInput;ILjava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/MultipartInput$fill$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/MultipartInput$fill$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/http/cio/MultipartInput$fill$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/http/cio/MultipartInput$fill$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 205
    iget v1, p0, Lio/ktor/http/cio/MultipartInput$fill$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/http/cio/MultipartInput$fill$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/http/cio/MultipartInput$fill$1;->L$0:Ljava/lang/Object;

    check-cast v1, [B

    .local v1, "buffer":[B
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v2

    goto/16 :goto_1

    .line 205
    .end local v0    # "this":Lio/ktor/http/cio/MultipartInput$fill$1;
    .end local v1    # "buffer":[B
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 206
    .local v1, "this":Lio/ktor/http/cio/MultipartInput$fill$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 207
    .local v3, "buffer":[B
    nop

    .line 208
    :try_start_1
    iget-object v4, v1, Lio/ktor/http/cio/MultipartInput$fill$1;->this$0:Lio/ktor/http/cio/MultipartInput;

    invoke-static {v4}, Lio/ktor/http/cio/MultipartInput;->access$getTail$p(Lio/ktor/http/cio/MultipartInput;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v4

    iget v5, v1, Lio/ktor/http/cio/MultipartInput$fill$1;->$length:I

    array-length v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lio/ktor/http/cio/MultipartInput$fill$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v1, Lio/ktor/http/cio/MultipartInput$fill$1;->label:I

    invoke-interface {v4, v3, v2, v5, v6}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v4, v0, :cond_0

    .line 205
    return-object v0

    .line 208
    :cond_0
    move-object v0, p1

    move-object p1, v4

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 209
    .local p1, "rc":I
    iget-object v4, v1, Lio/ktor/http/cio/MultipartInput$fill$1;->$destination:Ljava/nio/ByteBuffer;

    iget v5, v1, Lio/ktor/http/cio/MultipartInput$fill$1;->$offset:I

    const/4 v6, 0x0

    .local v4, "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .local v5, "offset$iv":I
    .local v6, "sourceOffset$iv":I
    const/4 v7, 0x0

    .line 222
    .local v7, "$i$f$storeByteArray-9zorpBc":I
    move-object v8, v3

    .local v8, "$this$useMemory$iv$iv":[B
    const/4 v9, 0x0

    .line 223
    .local v9, "$i$f$useMemory":I
    nop

    .line 226
    invoke-static {v8, v6, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const-string v11, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, "sourceMemory$iv":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .line 227
    .local v11, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    invoke-static {v10, v4, v2, p1, v5}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    nop

    .line 226
    .end local v10    # "sourceMemory$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    nop

    .line 229
    .end local v8    # "$this$useMemory$iv$iv":[B
    .end local v9    # "$i$f$useMemory":I
    nop

    .line 210
    .end local v4    # "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "offset$iv":I
    .end local v6    # "sourceOffset$iv":I
    .end local v7    # "$i$f$storeByteArray-9zorpBc":I
    nop

    .line 212
    .end local p1    # "rc":I
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-interface {v2, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 213
    .end local v3    # "buffer":[B
    move-object v2, v3

    .line 212
    .local v2, "buffer":[B
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    .line 207
    return-object p1

    .line 212
    .end local v2    # "buffer":[B
    .restart local v3    # "buffer":[B
    :catchall_1
    move-exception v2

    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1

    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v2

    move-object v0, v1

    move-object v1, v3

    .end local v3    # "buffer":[B
    .local v0, "this":Lio/ktor/http/cio/MultipartInput$fill$1;
    .local v1, "buffer":[B
    :goto_1
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
