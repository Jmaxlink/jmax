.class public final Lio/ktor/server/netty/http2/HttpFrameAdapterKt;
.super Ljava/lang/Object;
.source "HttpFrameAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a#\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007"
    }
    d2 = {
        "http2frameLoop",
        "",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "Lio/netty/handler/codec/http2/Http2DataFrame;",
        "bc",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-server-netty"
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
.method public static final http2frameLoop(Lkotlinx/coroutines/channels/ReceiveChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+",
            "Lio/netty/handler/codec/http2/Http2DataFrame;",
            ">;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;

    iget v1, v0, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;

    invoke-direct {v0, p2}, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->label:I

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
    iget-object p0, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lio/netty/buffer/ByteBuf;

    .local p0, "content":Lio/netty/buffer/ByteBuf;
    iget-object p1, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/netty/handler/codec/http2/Http2DataFrame;

    .local p1, "message":Lio/netty/handler/codec/http2/Http2DataFrame;
    iget-object v2, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteWriteChannel;

    .local v2, "bc":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v3, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v3, "$this$http2frameLoop":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v0, p1

    move-object p1, v3

    goto/16 :goto_4

    .end local v2    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v3    # "$this$http2frameLoop":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "content":Lio/netty/buffer/ByteBuf;
    .end local p1    # "message":Lio/netty/handler/codec/http2/Http2DataFrame;
    :pswitch_1
    iget-object p0, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$1:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v2    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object p0, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local p0, "$this$http2frameLoop":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v0

    goto :goto_2

    .line 40
    .end local p0    # "$this$http2frameLoop":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 39
    :catch_0
    move-exception p0

    goto/16 :goto_6

    .line 12
    .end local v2    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .restart local p0    # "$this$http2frameLoop":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "bc":Lio/ktor/utils/io/ByteWriteChannel;
    move-object v2, p1

    .line 14
    .end local p1    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v2    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_1
    nop

    .line 15
    :try_start_2
    iput-object p0, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$2:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$3:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->label:I

    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_1

    .line 12
    return-object v1

    .line 15
    :cond_1
    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    .line 12
    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :goto_2
    :try_start_3
    check-cast v0, Lio/netty/handler/codec/http2/Http2DataFrame;

    .line 16
    .local v0, "message":Lio/netty/handler/codec/http2/Http2DataFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;
    :try_end_3
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    move-object v7, p1

    move-object v8, v1

    move-object v9, v2

    move-object p1, p0

    move-object p0, v3

    .line 18
    .end local v2    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    .local v7, "$result":Ljava/lang/Object;
    .local v9, "bc":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "content":Lio/netty/buffer/ByteBuf;
    .local p1, "$this$http2frameLoop":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-lez v1, :cond_4

    .line 19
    new-instance v1, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$2;

    invoke-direct {v1, p0}, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$2;-><init>(Lio/netty/buffer/ByteBuf;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iput-object p1, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$0:Ljava/lang/Object;

    iput-object v9, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$1:Ljava/lang/Object;

    iput-object v0, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$2:Ljava/lang/Object;

    iput-object p0, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->L$3:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, p2, Lio/ktor/server/netty/http2/HttpFrameAdapterKt$http2frameLoop$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v9

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/ByteWriteChannel$DefaultImpls;->write$default(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_3

    .line 12
    return-object v8

    .line 19
    :cond_3
    :goto_4
    goto :goto_3

    .line 32
    :cond_4
    invoke-interface {v9}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 33
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 35
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->isEndStream()Z

    move-result v1
    :try_end_4
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_5

    .line 36
    .end local p1    # "$this$http2frameLoop":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 43
    .end local v0    # "message":Lio/netty/handler/codec/http2/Http2DataFrame;
    .end local p0    # "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v9}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 44
    .end local v9    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    goto :goto_8

    .line 35
    .restart local v0    # "message":Lio/netty/handler/codec/http2/Http2DataFrame;
    .restart local v9    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local p0    # "content":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "$this$http2frameLoop":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_5
    move-object p0, p1

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    goto :goto_1

    .line 40
    .end local v0    # "message":Lio/netty/handler/codec/http2/Http2DataFrame;
    .end local p0    # "content":Lio/netty/buffer/ByteBuf;
    .end local p1    # "$this$http2frameLoop":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_1
    move-exception p0

    move-object v0, v7

    move-object v2, v9

    goto :goto_5

    .line 39
    :catch_1
    move-exception p0

    move-object v0, v7

    move-object v2, v9

    goto :goto_6

    .line 40
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v2    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    .local p1, "$result":Ljava/lang/Object;
    :catchall_2
    move-exception p0

    move-object v0, p1

    goto :goto_5

    .line 39
    :catch_2
    move-exception p0

    move-object v0, p1

    goto :goto_6

    .line 41
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local p0, "t":Ljava/lang/Throwable;
    :goto_5
    :try_start_5
    invoke-interface {v2, p0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 43
    nop

    .end local p0    # "t":Ljava/lang/Throwable;
    goto :goto_7

    :catchall_3
    move-exception p0

    invoke-static {v2}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .end local v2    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    throw p0

    .restart local v2    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_6
    nop

    :goto_7
    invoke-static {v2}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 44
    .end local v2    # "bc":Lio/ktor/utils/io/ByteWriteChannel;
    move-object v7, v0

    .line 45
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local v7    # "$result":Ljava/lang/Object;
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
