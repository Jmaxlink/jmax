.class final Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CIOReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/CIOReaderKt;->attachForReadingDirectImpl(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/ReadableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lio/ktor/utils/io/WriterJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/WriterScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIOReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIOReader.kt\nio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1\n+ 2 Utils.kt\nio/ktor/network/util/UtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n82#2,10:147\n1#3:157\n*S KotlinDebug\n*F\n+ 1 CIOReader.kt\nio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1\n*L\n97#1:147,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/WriterScope;"
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
    c = "io.ktor.network.sockets.CIOReaderKt$attachForReadingDirectImpl$1"
    f = "CIOReader.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x3,
        0x4,
        0x4,
        0x5,
        0x5
    }
    l = {
        0x62,
        0x6e,
        0x6f,
        0x62,
        0x6e,
        0x6f
    }
    m = "invokeSuspend"
    n = {
        "timeout",
        "timeout",
        "timeout",
        "timeout",
        "$this$withTimeout$iv",
        "timeout",
        "$this$withTimeout$iv",
        "timeout",
        "$this$withTimeout$iv"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $channel:Lio/ktor/utils/io/ByteChannel;

.field final synthetic $nioChannel:Ljava/nio/channels/ReadableByteChannel;

.field final synthetic $selectable:Lio/ktor/network/selector/Selectable;

.field final synthetic $selector:Lio/ktor/network/selector/SelectorManager;

.field final synthetic $socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/network/selector/Selectable;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/ReadableByteChannel;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/Selectable;",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            "Lio/ktor/utils/io/ByteChannel;",
            "Ljava/nio/channels/ReadableByteChannel;",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iput-object p2, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iput-object p3, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iput-object p4, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    iput-object p5, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;

    iget-object v1, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iget-object v2, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iget-object v3, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iget-object v4, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    iget-object v5, p0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;-><init>(Lio/ktor/network/selector/Selectable;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/ReadableByteChannel;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 84
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->label:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$f$withTimeout":I
    const/4 v7, 0x0

    .local v7, "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/nio/channels/ReadableByteChannel;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteChannel;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/network/util/Timeout;

    .local v12, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    iget-object v13, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/network/util/Timeout;

    .local v13, "timeout":Lio/ktor/network/util/Timeout;
    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v13

    move-object v13, v12

    move-object v12, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v5

    goto/16 :goto_c

    .end local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .end local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$withTimeout":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/nio/channels/ReadableByteChannel;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteChannel;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/network/util/Timeout;

    .restart local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    iget-object v13, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/network/util/Timeout;

    .restart local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_b

    .end local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .end local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$withTimeout":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/nio/channels/ReadableByteChannel;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteChannel;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/network/util/Timeout;

    .restart local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    iget-object v13, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/network/util/Timeout;

    .restart local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :try_start_2
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v5

    goto/16 :goto_9

    .line 155
    .end local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .end local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :catchall_0
    move-exception v0

    goto/16 :goto_f

    .line 84
    .end local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    :pswitch_3
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$withTimeout":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/nio/channels/ReadableByteChannel;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteChannel;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/network/util/Timeout;

    .local v12, "timeout":Lio/ktor/network/util/Timeout;
    :try_start_3
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v5

    goto/16 :goto_6

    .end local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .end local v12    # "timeout":Lio/ktor/network/util/Timeout;
    :pswitch_4
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$withTimeout":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/nio/channels/ReadableByteChannel;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteChannel;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/network/util/Timeout;

    .restart local v12    # "timeout":Lio/ktor/network/util/Timeout;
    :try_start_4
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_5

    .end local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .end local v12    # "timeout":Lio/ktor/network/util/Timeout;
    :pswitch_5
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$withTimeout":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/nio/channels/ReadableByteChannel;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteChannel;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/network/util/Timeout;

    .restart local v12    # "timeout":Lio/ktor/network/util/Timeout;
    :try_start_5
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v5

    goto/16 :goto_3

    .end local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .end local v12    # "timeout":Lio/ktor/network/util/Timeout;
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/WriterScope;

    .line 85
    .local v6, "$this$writer":Lio/ktor/utils/io/WriterScope;
    nop

    .line 86
    :try_start_6
    iget-object v7, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$selectable:Lio/ktor/network/selector/Selectable;

    sget-object v8, Lio/ktor/network/selector/SelectInterest;->READ:Lio/ktor/network/selector/SelectInterest;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lio/ktor/network/selector/Selectable;->interestOp(Lio/ktor/network/selector/SelectInterest;Z)V

    .line 88
    iget-object v7, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getSocketTimeout()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v4

    :goto_0
    if-eqz v7, :cond_1

    .line 89
    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    const-string v9, "reading-direct"

    iget-object v7, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {v7}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getSocketTimeout()J

    move-result-wide v10

    new-instance v7, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1$timeout$1;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-direct {v7, v12, v4}, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1$timeout$1;-><init>(Lio/ktor/utils/io/ByteChannel;Lkotlin/coroutines/Continuation;)V

    move-object v13, v7

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v15}, Lio/ktor/network/util/UtilsKt;->createTimeout$default(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/network/util/Timeout;

    move-result-object v7

    goto :goto_1

    .line 93
    .end local v6    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    :cond_1
    move-object v7, v4

    .line 88
    :goto_1
    move-object v6, v7

    move-object v13, v6

    .line 96
    .restart local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :goto_2
    iget-object v6, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-interface {v6}, Lio/ktor/utils/io/ByteChannel;->isClosedForWrite()Z

    move-result v6

    if-nez v6, :cond_f

    .line 97
    iget-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iget-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    move-object v12, v13

    .local v12, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    const/4 v6, 0x0

    .line 147
    .local v6, "$i$f$withTimeout":I
    if-nez v12, :cond_8

    .line 148
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    const/4 v7, 0x0

    .line 98
    .restart local v7    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    move-object v12, v11

    check-cast v12, Lio/ktor/utils/io/ByteWriteChannel;

    iput-object v13, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$5:Ljava/lang/Object;

    const/4 v14, 0x1

    iput v14, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->label:I

    invoke-static {v12, v10, v2}, Lio/ktor/network/sockets/CIOReaderKt;->access$readFrom(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/channels/ReadableByteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne v12, v0, :cond_2

    .line 84
    return-object v0

    .line 98
    :cond_2
    move/from16 v16, v6

    move-object v6, v5

    move-object v5, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move/from16 v7, v16

    .end local v5    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "$i$f$withTimeout":I
    .local v8, "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    :goto_3
    :try_start_7
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 100
    .local v5, "rc":I
    if-ne v5, v3, :cond_3

    .line 101
    .end local v5    # "rc":I
    check-cast v12, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v12}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 102
    goto/16 :goto_7

    .line 105
    .restart local v5    # "rc":I
    :cond_3
    if-gtz v5, :cond_7

    .line 107
    .end local v5    # "rc":I
    invoke-interface {v12}, Lio/ktor/utils/io/ByteChannel;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v5, v6

    .line 109
    .end local v6    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    :goto_4
    nop

    .line 110
    :try_start_8
    iput-object v13, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->label:I

    invoke-static {v10, v9, v2}, Lio/ktor/network/sockets/CIOReaderKt;->access$selectForRead(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    .line 84
    return-object v0

    .line 110
    :cond_4
    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    .line 111
    .end local v8    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .end local v13    # "timeout":Lio/ktor/network/util/Timeout;
    .local v6, "$i$f$withTimeout":I
    .local v7, "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .local v12, "timeout":Lio/ktor/network/util/Timeout;
    :goto_5
    move-object v13, v11

    check-cast v13, Lio/ktor/utils/io/ByteWriteChannel;

    iput-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    const/4 v14, 0x3

    iput v14, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->label:I

    invoke-static {v13, v10, v2}, Lio/ktor/network/sockets/CIOReaderKt;->access$readFrom(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/channels/ReadableByteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-ne v13, v0, :cond_5

    .line 84
    return-object v0

    .line 111
    :cond_5
    move/from16 v16, v6

    move-object v6, v5

    move-object v5, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move/from16 v7, v16

    .end local v5    # "$result":Ljava/lang/Object;
    .end local v12    # "timeout":Lio/ktor/network/util/Timeout;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "$i$f$withTimeout":I
    .restart local v8    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .restart local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :goto_6
    :try_start_9
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v5, :cond_6

    .line 113
    move-object v5, v6

    goto :goto_8

    .line 111
    :cond_6
    move-object v5, v6

    goto :goto_4

    .line 148
    .end local v8    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    :cond_7
    :goto_7
    move-object v5, v6

    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :goto_8
    goto/16 :goto_2

    .line 120
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v7    # "$i$f$withTimeout":I
    .end local v13    # "timeout":Lio/ktor/network/util/Timeout;
    .restart local v6    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v5, v6

    goto/16 :goto_11

    .line 151
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v6, "$i$f$withTimeout":I
    .local v12, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .restart local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :cond_8
    :try_start_a
    invoke-virtual {v12}, Lio/ktor/network/util/Timeout;->start()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 152
    nop

    .line 153
    const/4 v7, 0x0

    .line 98
    .local v7, "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    :try_start_b
    move-object v14, v11

    check-cast v14, Lio/ktor/utils/io/ByteWriteChannel;

    iput-object v13, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$5:Ljava/lang/Object;

    const/4 v15, 0x4

    iput v15, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->label:I

    invoke-static {v14, v10, v2}, Lio/ktor/network/sockets/CIOReaderKt;->access$readFrom(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/channels/ReadableByteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-ne v14, v0, :cond_9

    .line 84
    return-object v0

    .line 98
    :cond_9
    move/from16 v16, v6

    move-object v6, v5

    move-object v5, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move/from16 v7, v16

    .end local v5    # "$result":Ljava/lang/Object;
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "$i$f$withTimeout":I
    .restart local v8    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .local v13, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .local v14, "timeout":Lio/ktor/network/util/Timeout;
    :goto_9
    :try_start_c
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 100
    .local v5, "rc":I
    if-ne v5, v3, :cond_a

    .line 101
    .end local v5    # "rc":I
    check-cast v12, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v12}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 102
    goto/16 :goto_d

    .line 105
    .restart local v5    # "rc":I
    :cond_a
    if-gtz v5, :cond_e

    .line 107
    .end local v5    # "rc":I
    invoke-interface {v12}, Lio/ktor/utils/io/ByteChannel;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v5, v6

    move v6, v7

    move-object v7, v12

    move-object v12, v13

    .line 109
    .end local v7    # "$i$f$withTimeout":I
    .end local v13    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "$i$f$withTimeout":I
    .restart local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    :goto_a
    nop

    .line 110
    :try_start_d
    iput-object v14, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$5:Ljava/lang/Object;

    const/4 v13, 0x5

    iput v13, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->label:I

    invoke-static {v10, v9, v2}, Lio/ktor/network/sockets/CIOReaderKt;->access$selectForRead(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_b

    .line 84
    return-object v0

    .line 110
    :cond_b
    move-object v13, v14

    move-object/from16 v16, v11

    move-object v11, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, v16

    .line 111
    .end local v8    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .end local v14    # "timeout":Lio/ktor/network/util/Timeout;
    .local v7, "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .local v13, "timeout":Lio/ktor/network/util/Timeout;
    :goto_b
    move-object v14, v11

    check-cast v14, Lio/ktor/utils/io/ByteWriteChannel;

    iput-object v13, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$4:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->L$5:Ljava/lang/Object;

    const/4 v15, 0x6

    iput v15, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->label:I

    invoke-static {v14, v10, v2}, Lio/ktor/network/sockets/CIOReaderKt;->access$readFrom(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/channels/ReadableByteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-ne v14, v0, :cond_c

    .line 84
    return-object v0

    .line 111
    :cond_c
    move/from16 v16, v6

    move-object v6, v5

    move-object v5, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move/from16 v7, v16

    .end local v5    # "$result":Ljava/lang/Object;
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "$i$f$withTimeout":I
    .restart local v8    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    .local v13, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .restart local v14    # "timeout":Lio/ktor/network/util/Timeout;
    :goto_c
    :try_start_e
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v5, :cond_d

    .line 113
    move-object v5, v6

    move v6, v7

    move-object v12, v13

    move-object v13, v14

    goto :goto_e

    .line 111
    :cond_d
    move-object v5, v6

    move v6, v7

    move-object v7, v11

    move-object v11, v12

    move-object v12, v13

    goto :goto_a

    .line 113
    .end local v8    # "$i$a$-withTimeout-CIOReaderKt$attachForReadingDirectImpl$1$1":I
    :cond_e
    :goto_d
    move-object v5, v6

    move v6, v7

    move-object v12, v13

    move-object v13, v14

    .end local v7    # "$i$f$withTimeout":I
    .end local v14    # "timeout":Lio/ktor/network/util/Timeout;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v6, "$i$f$withTimeout":I
    .restart local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .local v13, "timeout":Lio/ktor/network/util/Timeout;
    :goto_e
    :try_start_f
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 153
    nop

    .line 155
    :try_start_10
    invoke-virtual {v12}, Lio/ktor/network/util/Timeout;->stop()V

    .line 156
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    move-object v7, v12

    .line 152
    .local v7, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    nop

    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    goto/16 :goto_2

    .line 155
    .end local v5    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "$i$f$withTimeout":I
    .local v13, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    :catchall_2
    move-exception v0

    move-object v5, v6

    move v6, v7

    move-object v12, v13

    .end local v7    # "$i$f$withTimeout":I
    .end local v13    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v6, "$i$f$withTimeout":I
    .restart local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    :goto_f
    invoke-virtual {v12}, Lio/ktor/network/util/Timeout;->stop()V

    .end local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    throw v0

    .line 116
    .end local v6    # "$i$f$withTimeout":I
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .restart local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v13, "timeout":Lio/ktor/network/util/Timeout;
    :cond_f
    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lio/ktor/network/util/Timeout;->finish()V

    nop

    .line 117
    .end local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :cond_10
    iget-object v0, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_13

    .line 118
    iget-object v0, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 120
    iget-object v0, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_12

    .line 121
    nop

    .line 122
    :try_start_11
    invoke-static {}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->getJava7NetworkApisAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 123
    iget-object v0, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->shutdownInput()Ljava/nio/channels/SocketChannel;

    goto :goto_10

    .line 125
    :cond_11
    iget-object v0, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_11
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_10

    .line 127
    :catch_0
    move-exception v0

    .line 130
    :cond_12
    :goto_10
    nop

    .line 131
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 157
    .local v0, "it":Ljava/lang/Throwable;
    :cond_13
    const/4 v3, 0x0

    .line 117
    .local v3, "$i$a$-let-CIOReaderKt$attachForReadingDirectImpl$1$2":I
    nop

    .end local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 120
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-CIOReaderKt$attachForReadingDirectImpl$1$2":I
    .restart local v2    # "this":Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object v3, v0

    :goto_11
    iget-object v0, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_15

    .line 121
    nop

    .line 122
    :try_start_13
    invoke-static {}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->getJava7NetworkApisAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 123
    iget-object v0, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->shutdownInput()Ljava/nio/channels/SocketChannel;

    goto :goto_12

    .line 125
    :cond_14
    iget-object v0, v2, Lio/ktor/network/sockets/CIOReaderKt$attachForReadingDirectImpl$1;->$nioChannel:Ljava/nio/channels/ReadableByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_13
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_13 .. :try_end_13} :catch_1

    goto :goto_12

    .line 127
    :catch_1
    move-exception v0

    :cond_15
    :goto_12
    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
