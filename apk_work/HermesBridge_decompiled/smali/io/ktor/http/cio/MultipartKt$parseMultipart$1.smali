.class final Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Multipart.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/MultipartKt;->parseMultipart(Lkotlinx/coroutines/CoroutineScope;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Long;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lio/ktor/http/cio/MultipartEvent;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultipart.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Multipart.kt\nio/ktor/http/cio/MultipartKt$parseMultipart$1\n+ 2 Packet.kt\nio/ktor/utils/io/core/PacketKt\n*L\n1#1,650:1\n43#2:651\n*S KotlinDebug\n*F\n+ 1 Multipart.kt\nio/ktor/http/cio/MultipartKt$parseMultipart$1\n*L\n346#1:651\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lio/ktor/http/cio/MultipartEvent;"
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
    c = "io.ktor.http.cio.MultipartKt$parseMultipart$1"
    f = "Multipart.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7,
        0x8,
        0x8,
        0x8,
        0x8,
        0x8,
        0x8,
        0x9,
        0x9,
        0x9,
        0xa,
        0xa,
        0xd
    }
    l = {
        0x121,
        0x124,
        0x127,
        0x12e,
        0x12f,
        0x132,
        0x137,
        0x13b,
        0x140,
        0x14a,
        0x14d,
        0x156,
        0x156,
        0x159,
        0x15b
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "firstBoundary",
        "preamble",
        "readBeforeParse",
        "$this$produce",
        "firstBoundary",
        "readBeforeParse",
        "$this$produce",
        "readBeforeParse",
        "$this$produce",
        "trailingBuffer",
        "readBeforeParse",
        "$this$produce",
        "trailingBuffer",
        "readBeforeParse",
        "$this$produce",
        "trailingBuffer",
        "readBeforeParse",
        "$this$produce",
        "trailingBuffer",
        "body",
        "headers",
        "readBeforeParse",
        "$this$produce",
        "trailingBuffer",
        "body",
        "headers",
        "readBeforeParse",
        "$this$produce",
        "trailingBuffer",
        "body",
        "headers",
        "hh",
        "readBeforeParse",
        "$this$produce",
        "trailingBuffer",
        "readBeforeParse",
        "$this$produce",
        "readBeforeParse",
        "$this$produce"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "J$0",
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "J$0",
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "J$0",
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "J$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $boundaryPrefixed:Ljava/nio/ByteBuffer;

.field final synthetic $input:Lio/ktor/utils/io/ByteReadChannel;

.field final synthetic $totalLength:Ljava/lang/Long;

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/MultipartKt$parseMultipart$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$boundaryPrefixed:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$totalLength:Ljava/lang/Long;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;

    iget-object v1, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$boundaryPrefixed:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$totalLength:Ljava/lang/Long;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lio/ktor/http/cio/MultipartEvent;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 281
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    const/4 v3, 0x0

    const-string v4, "trailingBuffer"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_12

    .end local v0    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget-object v5, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v4

    move-object/from16 v27, v2

    move-object v2, v0

    move-object/from16 v0, v27

    goto/16 :goto_10

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_2
    move-object/from16 v0, p0

    .restart local v0    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f

    .end local v0    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v4, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v27, v2

    move-object v2, v0

    move-object/from16 v0, v27

    goto/16 :goto_e

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_4
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .local v8, "readBeforeParse":J
    iget-object v5, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v8    # "readBeforeParse":J
    :pswitch_5
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .restart local v8    # "readBeforeParse":J
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    .local v10, "trailingBuffer":Ljava/nio/ByteBuffer;
    iget-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ProducerScope;

    .local v11, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v5

    move-wide/from16 v27, v8

    move-object v8, v10

    move-wide/from16 v9, v27

    goto/16 :goto_b

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "readBeforeParse":J
    .end local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_6
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .restart local v8    # "readBeforeParse":J
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lio/ktor/http/cio/HttpHeadersMap;

    .local v10, "hh":Lio/ktor/http/cio/HttpHeadersMap;
    iget-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/CompletableDeferred;

    .local v11, "headers":Lkotlinx/coroutines/CompletableDeferred;
    iget-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteChannel;

    .local v12, "body":Lio/ktor/utils/io/ByteChannel;
    iget-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/nio/ByteBuffer;

    .local v13, "trailingBuffer":Ljava/nio/ByteBuffer;
    iget-object v14, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/ProducerScope;

    .local v14, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    .line 321
    .end local v8    # "readBeforeParse":J
    .end local v13    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :catchall_0
    move-exception v0

    goto/16 :goto_14

    .line 281
    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v10    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v11    # "headers":Lkotlinx/coroutines/CompletableDeferred;
    .end local v12    # "body":Lio/ktor/utils/io/ByteChannel;
    :pswitch_7
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .restart local v8    # "readBeforeParse":J
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    move-object v11, v10

    check-cast v11, Lkotlinx/coroutines/CompletableDeferred;

    .restart local v11    # "headers":Lkotlinx/coroutines/CompletableDeferred;
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, Lio/ktor/utils/io/ByteChannel;

    .restart local v12    # "body":Lio/ktor/utils/io/ByteChannel;
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    .local v10, "trailingBuffer":Ljava/nio/ByteBuffer;
    iget-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ProducerScope;

    .local v13, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v5

    move-object v3, v7

    move-object v14, v13

    goto/16 :goto_9

    .line 321
    .end local v8    # "readBeforeParse":J
    .end local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :catchall_1
    move-exception v0

    move-object v10, v7

    .local v10, "hh":Lio/ktor/http/cio/HttpHeadersMap;
    goto/16 :goto_14

    .line 281
    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v10    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v11    # "headers":Lkotlinx/coroutines/CompletableDeferred;
    .end local v12    # "body":Lio/ktor/utils/io/ByteChannel;
    :pswitch_8
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .restart local v8    # "readBeforeParse":J
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/CompletableDeferred;

    .local v10, "headers":Lkotlinx/coroutines/CompletableDeferred;
    iget-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteChannel;

    .local v11, "body":Lio/ktor/utils/io/ByteChannel;
    iget-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/nio/ByteBuffer;

    .local v12, "trailingBuffer":Ljava/nio/ByteBuffer;
    iget-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v27, v11

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v12, v27

    goto/16 :goto_8

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "readBeforeParse":J
    .end local v10    # "headers":Lkotlinx/coroutines/CompletableDeferred;
    .end local v11    # "body":Lio/ktor/utils/io/ByteChannel;
    .end local v12    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_9
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .restart local v8    # "readBeforeParse":J
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    .local v10, "trailingBuffer":Ljava/nio/ByteBuffer;
    iget-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ProducerScope;

    .local v11, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v11

    goto/16 :goto_7

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "readBeforeParse":J
    .end local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_a
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .restart local v8    # "readBeforeParse":J
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    .restart local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    iget-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v10

    move-wide v9, v8

    move-object v8, v5

    goto/16 :goto_6

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "readBeforeParse":J
    .end local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_b
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .restart local v8    # "readBeforeParse":J
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    .restart local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    iget-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "readBeforeParse":J
    .end local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_c
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .restart local v8    # "readBeforeParse":J
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ProducerScope;

    .local v10, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v10

    move-wide v9, v8

    move-object v8, v5

    goto/16 :goto_3

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "readBeforeParse":J
    .end local v10    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_d
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .restart local v8    # "readBeforeParse":J
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    .local v10, "firstBoundary":Ljava/nio/ByteBuffer;
    iget-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "readBeforeParse":J
    .end local v10    # "firstBoundary":Ljava/nio/ByteBuffer;
    .end local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_e
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v8, p1

    .local v8, "$result":Ljava/lang/Object;
    iget-wide v9, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    .local v9, "readBeforeParse":J
    iget-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/core/BytePacketBuilder;

    .local v11, "preamble":Lio/ktor/utils/io/core/BytePacketBuilder;
    iget-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/nio/ByteBuffer;

    .local v12, "firstBoundary":Ljava/nio/ByteBuffer;
    iget-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "readBeforeParse":J
    .end local v11    # "preamble":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v12    # "firstBoundary":Ljava/nio/ByteBuffer;
    .end local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    move-object/from16 v8, p1

    .restart local v8    # "$result":Ljava/lang/Object;
    iget-object v9, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    .line 283
    .local v9, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v10}, Lio/ktor/utils/io/ByteReadChannel;->getTotalBytesRead()J

    move-result-wide v10

    .line 284
    .local v10, "readBeforeParse":J
    iget-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$boundaryPrefixed:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v12

    .local v13, "$this$invokeSuspend_u24lambda_u240":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 285
    .local v14, "$i$a$-apply-MultipartKt$parseMultipart$1$firstBoundary$1":I
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 286
    nop

    .line 284
    .end local v13    # "$this$invokeSuspend_u24lambda_u240":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$a$-apply-MultipartKt$parseMultipart$1$firstBoundary$1":I
    nop

    .line 288
    .restart local v12    # "firstBoundary":Ljava/nio/ByteBuffer;
    new-instance v13, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {v13, v7, v6, v7}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 289
    .local v13, "preamble":Lio/ktor/utils/io/core/BytePacketBuilder;
    iget-object v14, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    move-object/from16 v20, v2

    check-cast v20, Lkotlin/coroutines/Continuation;

    iput-object v9, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    iput-wide v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iput v6, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    const-wide/16 v18, 0x2000

    move-object v15, v12

    move-object/from16 v16, v14

    move-object/from16 v17, v13

    invoke-static/range {v15 .. v20}, Lio/ktor/http/cio/MultipartKt;->access$parsePreambleImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v0, :cond_0

    .line 281
    return-object v0

    .line 289
    :cond_0
    move-object/from16 v27, v13

    move-object v13, v9

    move-wide v9, v10

    move-object/from16 v11, v27

    .line 291
    .end local v10    # "readBeforeParse":J
    .local v9, "readBeforeParse":J
    .restart local v11    # "preamble":Lio/ktor/utils/io/core/BytePacketBuilder;
    .local v13, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_0
    invoke-virtual {v11}, Lio/ktor/utils/io/core/BytePacketBuilder;->getSize()I

    move-result v14

    if-lez v14, :cond_2

    .line 292
    new-instance v14, Lio/ktor/http/cio/MultipartEvent$Preamble;

    invoke-virtual {v11}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v15

    invoke-direct {v14, v15}, Lio/ktor/http/cio/MultipartEvent$Preamble;-><init>(Lio/ktor/utils/io/core/ByteReadPacket;)V

    move-object v15, v2

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    iput-wide v9, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    iput v5, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-interface {v13, v14, v15}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v11    # "preamble":Lio/ktor/utils/io/core/BytePacketBuilder;
    if-ne v5, v0, :cond_1

    .line 281
    return-object v0

    .line 292
    :cond_1
    move-object v5, v8

    move-wide v8, v9

    move-object v10, v12

    move-object v11, v13

    .line 295
    .end local v9    # "readBeforeParse":J
    .end local v12    # "firstBoundary":Ljava/nio/ByteBuffer;
    .end local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v8, "readBeforeParse":J
    .local v10, "firstBoundary":Ljava/nio/ByteBuffer;
    .local v11, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_1
    move-object v12, v10

    move-object v10, v11

    goto :goto_2

    .line 291
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v10    # "firstBoundary":Ljava/nio/ByteBuffer;
    .local v8, "$result":Ljava/lang/Object;
    .restart local v9    # "readBeforeParse":J
    .local v11, "preamble":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v12    # "firstBoundary":Ljava/nio/ByteBuffer;
    .restart local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_2
    move-object v5, v8

    move-wide v8, v9

    move-object v10, v13

    .line 295
    .end local v9    # "readBeforeParse":J
    .end local v11    # "preamble":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v8, "readBeforeParse":J
    .local v10, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_2
    iget-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    iput-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v14, 0x3

    iput v14, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v12, v11, v13}, Lio/ktor/http/cio/MultipartKt;->access$skipBoundary(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    .end local v12    # "firstBoundary":Ljava/nio/ByteBuffer;
    if-ne v11, v0, :cond_3

    .line 281
    return-object v0

    .line 295
    :cond_3
    move-wide/from16 v27, v8

    move-object v8, v5

    move-object v5, v11

    move-object v11, v10

    move-wide/from16 v9, v27

    .end local v5    # "$result":Ljava/lang/Object;
    .end local v10    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v8, "$result":Ljava/lang/Object;
    .restart local v9    # "readBeforeParse":J
    .local v11, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_3
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 296
    .end local v9    # "readBeforeParse":J
    .end local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 299
    .restart local v9    # "readBeforeParse":J
    .restart local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_4
    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getBoundaryTrailingBuffer$p()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v27, v8

    move-object v8, v5

    move-object/from16 v5, v27

    .line 302
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v8, "trailingBuffer":Ljava/nio/ByteBuffer;
    :goto_4
    iget-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getCrLf$p()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v2

    check-cast v14, Lkotlin/coroutines/Continuation;

    iput-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-wide v9, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v15, 0x4

    iput v15, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v12, v13, v8, v14}, Lio/ktor/utils/io/DelimitedKt;->readUntilDelimiter(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v0, :cond_5

    .line 281
    return-object v0

    .line 302
    :cond_5
    move-wide/from16 v27, v9

    move-object v10, v8

    move-wide/from16 v8, v27

    .line 303
    .end local v9    # "readBeforeParse":J
    .local v8, "readBeforeParse":J
    .local v10, "trailingBuffer":Ljava/nio/ByteBuffer;
    :goto_5
    iget-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getCrLf$p()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v2

    check-cast v14, Lkotlin/coroutines/Continuation;

    iput-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v15, 0x5

    iput v15, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v12, v13, v10, v14}, Lio/ktor/utils/io/DelimitedKt;->readUntilDelimiter(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v0, :cond_6

    .line 281
    return-object v0

    .line 303
    :cond_6
    move-wide/from16 v27, v8

    move-object v8, v5

    move-object v5, v12

    move-object v12, v11

    move-object v11, v10

    move-wide/from16 v9, v27

    .end local v5    # "$result":Ljava/lang/Object;
    .end local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .local v8, "$result":Ljava/lang/Object;
    .restart local v9    # "readBeforeParse":J
    .local v11, "trailingBuffer":Ljava/nio/ByteBuffer;
    .local v12, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_6
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-nez v5, :cond_1a

    .line 306
    iget-object v5, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getCrLf$p()Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object v14, v2

    check-cast v14, Lkotlin/coroutines/Continuation;

    iput-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-wide v9, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v15, 0x6

    iput v15, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v5, v13, v14}, Lio/ktor/utils/io/DelimitedKt;->skipDelimiter(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_7

    .line 281
    return-object v0

    .line 306
    :cond_7
    move-object v5, v8

    move-wide v8, v9

    move-object v10, v11

    move-object v13, v12

    .line 308
    .end local v9    # "readBeforeParse":J
    .end local v11    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v8, "readBeforeParse":J
    .restart local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_7
    invoke-static {v3, v6, v7}, Lio/ktor/utils/io/ByteChannelKt;->ByteChannel$default(ZILjava/lang/Object;)Lio/ktor/utils/io/ByteChannel;

    move-result-object v11

    .line 309
    .local v11, "body":Lio/ktor/utils/io/ByteChannel;
    invoke-static {v7, v6, v7}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v12

    .line 310
    .local v12, "headers":Lkotlinx/coroutines/CompletableDeferred;
    new-instance v14, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    move-object v15, v12

    check-cast v15, Lkotlinx/coroutines/Deferred;

    move-object v3, v11

    check-cast v3, Lio/ktor/utils/io/ByteReadChannel;

    invoke-direct {v14, v15, v3}, Lio/ktor/http/cio/MultipartEvent$MultipartPart;-><init>(Lkotlinx/coroutines/Deferred;Lio/ktor/utils/io/ByteReadChannel;)V

    move-object v3, v14

    .line 311
    .local v3, "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    move-object v14, v2

    check-cast v14, Lkotlin/coroutines/Continuation;

    iput-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/4 v15, 0x7

    iput v15, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-interface {v13, v3, v14}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    if-ne v3, v0, :cond_8

    .line 281
    return-object v0

    .line 311
    :cond_8
    move-object/from16 v27, v12

    move-object v12, v11

    move-object/from16 v11, v27

    .line 313
    .local v11, "headers":Lkotlinx/coroutines/CompletableDeferred;
    .local v12, "body":Lio/ktor/utils/io/ByteChannel;
    :goto_8
    const/4 v3, 0x0

    .line 314
    .local v3, "hh":Lio/ktor/http/cio/HttpHeadersMap;
    nop

    .line 315
    :try_start_2
    iget-object v14, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    move-object v15, v2

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/16 v6, 0x8

    iput v6, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v14, v15}, Lio/ktor/http/cio/MultipartKt;->access$parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v6, v0, :cond_9

    .line 281
    return-object v0

    .line 315
    :cond_9
    move-object v14, v13

    move-object/from16 v27, v6

    move-object v6, v5

    move-object/from16 v5, v27

    .line 281
    .end local v3    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v6, "$result":Ljava/lang/Object;
    .local v14, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_9
    :try_start_3
    check-cast v5, Lio/ktor/http/cio/HttpHeadersMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v3, v5

    .line 316
    .restart local v3    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    :try_start_4
    invoke-interface {v11, v3}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 320
    iget-object v5, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$boundaryPrefixed:Ljava/nio/ByteBuffer;

    iget-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    move-object/from16 v20, v12

    check-cast v20, Lio/ktor/utils/io/ByteWriteChannel;

    move-object/from16 v24, v2

    check-cast v24, Lkotlin/coroutines/Continuation;

    iput-object v14, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/16 v15, 0x9

    iput v15, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    const-wide/16 v22, 0x0

    const/16 v25, 0x10

    const/16 v26, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v13

    move-object/from16 v21, v3

    invoke-static/range {v18 .. v26}, Lio/ktor/http/cio/MultipartKt;->parsePartBodyImpl$default(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v5, v0, :cond_a

    .line 281
    return-object v0

    .line 320
    :cond_a
    move-object v5, v6

    move-object v13, v10

    move-object v10, v3

    .end local v3    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v10, "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .local v13, "trailingBuffer":Ljava/nio/ByteBuffer;
    :goto_a
    nop

    .line 329
    .end local v10    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v11    # "headers":Lkotlinx/coroutines/CompletableDeferred;
    move-object v3, v12

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v3}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 330
    .end local v12    # "body":Lio/ktor/utils/io/ByteChannel;
    iget-object v3, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$boundaryPrefixed:Ljava/nio/ByteBuffer;

    iget-object v6, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v14, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$2:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$4:Ljava/lang/Object;

    iput-wide v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/16 v11, 0xa

    iput v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v3, v6, v10}, Lio/ktor/http/cio/MultipartKt;->access$skipBoundary(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_b

    .line 281
    return-object v0

    .line 330
    :cond_b
    move-wide v9, v8

    move-object v8, v13

    move-object v11, v14

    move-object/from16 v27, v5

    move-object v5, v3

    move-object/from16 v3, v27

    .end local v5    # "$result":Ljava/lang/Object;
    .end local v13    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v3, "$result":Ljava/lang/Object;
    .local v8, "trailingBuffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "readBeforeParse":J
    .local v11, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_b
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 332
    .end local v8    # "trailingBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v4}, Lio/ktor/utils/io/ByteReadChannel;->getAvailableForRead()I

    move-result v4

    if-eqz v4, :cond_d

    .line 333
    iget-object v4, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {}, Lio/ktor/http/cio/MultipartKt;->access$getCrLf$p()Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    iput-wide v9, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->J$0:J

    const/16 v8, 0xb

    iput v8, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-static {v4, v5, v6}, Lio/ktor/utils/io/DelimitedKt;->skipDelimiter(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_c

    .line 281
    return-object v0

    .line 333
    :cond_c
    move-object v4, v3

    move-wide v8, v9

    move-object v5, v11

    .line 336
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v9    # "readBeforeParse":J
    .end local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v4    # "$result":Ljava/lang/Object;
    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v8, "readBeforeParse":J
    :goto_c
    move-object v3, v4

    move-wide v9, v8

    goto :goto_d

    .line 332
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v8    # "readBeforeParse":J
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v9    # "readBeforeParse":J
    .restart local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_d
    move-object v5, v11

    .line 336
    .end local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_d
    iget-object v4, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$totalLength:Ljava/lang/Long;

    if-eqz v4, :cond_11

    .line 338
    iget-object v4, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v4}, Lio/ktor/utils/io/ByteReadChannel;->getTotalBytesRead()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 339
    .end local v9    # "readBeforeParse":J
    .local v11, "consumedExceptEpilogue":J
    iget-object v4, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$totalLength:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v11

    .line 340
    .end local v11    # "consumedExceptEpilogue":J
    .local v8, "size":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v4, v8, v10

    if-gtz v4, :cond_10

    .line 341
    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_16

    .line 342
    iget-object v4, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    long-to-int v6, v8

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    const/16 v11, 0xc

    iput v11, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-interface {v4, v6, v10}, Lio/ktor/utils/io/ByteReadChannel;->readPacket(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v8    # "size":J
    if-ne v4, v0, :cond_e

    .line 281
    return-object v0

    .line 342
    :cond_e
    move-object/from16 v27, v2

    move-object v2, v0

    move-object/from16 v0, v27

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .restart local v0    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    :goto_e
    check-cast v4, Lio/ktor/utils/io/core/ByteReadPacket;

    new-instance v6, Lio/ktor/http/cio/MultipartEvent$Epilogue;

    invoke-direct {v6, v4}, Lio/ktor/http/cio/MultipartEvent$Epilogue;-><init>(Lio/ktor/utils/io/core/ByteReadPacket;)V

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    const/16 v7, 0xd

    iput v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-interface {v5, v6, v4}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_f

    .line 281
    return-object v2

    .line 342
    :cond_f
    move-object v2, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_f
    move-object v3, v2

    move-object v2, v0

    goto :goto_13

    .line 340
    .end local v0    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .local v2, "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v8    # "size":J
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Failed to parse multipart: prologue is too long"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    .end local v8    # "size":J
    :cond_11
    iget-object v10, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->$input:Lio/ktor/utils/io/ByteReadChannel;

    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$1:Ljava/lang/Object;

    const/16 v4, 0xe

    iput v4, v2, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lio/ktor/utils/io/ByteReadChannel$DefaultImpls;->readRemaining$default(Lio/ktor/utils/io/ByteReadChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_12

    .line 281
    return-object v0

    .line 345
    :cond_12
    move-object/from16 v27, v2

    move-object v2, v0

    move-object/from16 v0, v27

    .line 281
    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .restart local v0    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    :goto_10
    check-cast v4, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 346
    .local v4, "epilogueContent":Lio/ktor/utils/io/core/ByteReadPacket;
    move-object v6, v4

    .local v6, "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v8, 0x0

    .line 651
    .local v8, "$i$f$isNotEmpty":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v9

    if-nez v9, :cond_13

    const/16 v16, 0x1

    goto :goto_11

    :cond_13
    const/16 v16, 0x0

    .line 346
    .end local v6    # "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v8    # "$i$f$isNotEmpty":I
    :goto_11
    if-eqz v16, :cond_15

    .line 347
    new-instance v6, Lio/ktor/http/cio/MultipartEvent$Epilogue;

    invoke-direct {v6, v4}, Lio/ktor/http/cio/MultipartEvent$Epilogue;-><init>(Lio/ktor/utils/io/core/ByteReadPacket;)V

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->L$0:Ljava/lang/Object;

    const/16 v7, 0xf

    iput v7, v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;->label:I

    invoke-interface {v5, v6, v8}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "epilogueContent":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    if-ne v4, v2, :cond_14

    .line 281
    return-object v2

    .line 347
    :cond_14
    move-object v2, v3

    .line 350
    .end local v3    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_12
    move-object v3, v2

    move-object v2, v0

    goto :goto_13

    .line 346
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "epilogueContent":Lio/ktor/utils/io/core/ByteReadPacket;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_15
    move-object v2, v0

    .line 350
    .end local v0    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v4    # "epilogueContent":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v2, "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    :cond_16
    :goto_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 330
    .local v8, "trailingBuffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "readBeforeParse":J
    .local v11, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_17
    move-object v5, v3

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_4

    .line 317
    .end local v9    # "readBeforeParse":J
    .local v3, "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .local v6, "$result":Ljava/lang/Object;
    .local v8, "readBeforeParse":J
    .local v10, "trailingBuffer":Ljava/nio/ByteBuffer;
    .local v11, "headers":Lkotlinx/coroutines/CompletableDeferred;
    .restart local v12    # "body":Lio/ktor/utils/io/ByteChannel;
    .restart local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_18
    :try_start_5
    invoke-virtual {v3}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    .line 318
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v4, "Multipart processing has been cancelled"

    invoke-direct {v0, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .end local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .end local v3    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v11    # "headers":Lkotlinx/coroutines/CompletableDeferred;
    .end local v12    # "body":Lio/ktor/utils/io/ByteChannel;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 321
    .end local v8    # "readBeforeParse":J
    .end local v10    # "trailingBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v2    # "this":Lio/ktor/http/cio/MultipartKt$parseMultipart$1;
    .restart local v3    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local v11    # "headers":Lkotlinx/coroutines/CompletableDeferred;
    .restart local v12    # "body":Lio/ktor/utils/io/ByteChannel;
    :catchall_2
    move-exception v0

    move-object v10, v3

    move-object v5, v6

    goto :goto_14

    .end local v3    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    :catchall_3
    move-exception v0

    move-object v10, v3

    move-object v5, v6

    .local v10, "hh":Lio/ktor/http/cio/HttpHeadersMap;
    goto :goto_14

    .end local v6    # "$result":Ljava/lang/Object;
    .end local v10    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .restart local v3    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .local v5, "$result":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object v10, v3

    .line 322
    .end local v3    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v10    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    :goto_14
    invoke-interface {v11, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 323
    .end local v11    # "headers":Lkotlinx/coroutines/CompletableDeferred;
    nop

    .end local v10    # "hh":Lio/ktor/http/cio/HttpHeadersMap;
    if-eqz v10, :cond_19

    invoke-virtual {v10}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    .line 325
    :cond_19
    invoke-interface {v12, v0}, Lio/ktor/utils/io/ByteChannel;->close(Ljava/lang/Throwable;)Z

    .line 326
    throw v0

    .line 304
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v5    # "$result":Ljava/lang/Object;
    .local v8, "$result":Ljava/lang/Object;
    .restart local v9    # "readBeforeParse":J
    .local v11, "trailingBuffer":Ljava/nio/ByteBuffer;
    .local v12, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Failed to parse multipart: boundary line is too long"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
