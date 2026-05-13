.class final Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CIOWriter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/CIOWriterKt;->attachForWritingImpl(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/WritableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lio/ktor/utils/io/ReaderJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/ReaderScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIOWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIOWriter.kt\nio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1\n+ 2 Utils.kt\nio/ktor/network/util/UtilsKt\n*L\n1#1,136:1\n82#2,10:137\n*S KotlinDebug\n*F\n+ 1 CIOWriter.kt\nio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1\n*L\n47#1:137,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/ReaderScope;"
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
    c = "io.ktor.network.sockets.CIOWriterKt$attachForWritingImpl$1"
    f = "CIOWriter.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x27,
        0x34,
        0x34
    }
    m = "invokeSuspend"
    n = {
        "timeout",
        "timeout",
        "rc",
        "timeout",
        "rc",
        "$this$withTimeout$iv"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $buffer:Ljava/nio/ByteBuffer;

.field final synthetic $channel:Lio/ktor/utils/io/ByteChannel;

.field final synthetic $nioChannel:Ljava/nio/channels/WritableByteChannel;

.field final synthetic $pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectable:Lio/ktor/network/selector/Selectable;

.field final synthetic $selector:Lio/ktor/network/selector/SelectorManager;

.field final synthetic $socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/utils/io/pool/ObjectPool;Ljava/nio/channels/WritableByteChannel;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteChannel;",
            "Lio/ktor/network/selector/Selectable;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/nio/channels/WritableByteChannel;",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iput-object p2, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$buffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iput-object p4, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iput-object p5, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iput-object p6, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    iput-object p7, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;

    iget-object v1, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iget-object v2, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iget-object v4, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iget-object v5, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v6, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v7, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;-><init>(Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/utils/io/pool/ObjectPool;Ljava/nio/channels/WritableByteChannel;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v9, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlin/coroutines/Continuation;

    return-object v9
.end method

.method public final invoke(Lio/ktor/utils/io/ReaderScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ReaderScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/ReaderScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->invoke(Lio/ktor/utils/io/ReaderScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 27
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$f$withTimeout":I
    const/4 v7, 0x0

    .local v7, "$i$a$-withTimeout-CIOWriterKt$attachForWritingImpl$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/nio/channels/WritableByteChannel;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lio/ktor/network/util/Timeout;

    .local v12, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    iget-object v13, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    .local v13, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v14, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/network/util/Timeout;

    .local v14, "timeout":Lio/ktor/network/util/Timeout;
    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    .line 145
    .end local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingImpl$1$1":I
    .end local v13    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "timeout":Lio/ktor/network/util/Timeout;
    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 27
    .end local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$withTimeout":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingImpl$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/nio/channels/WritableByteChannel;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    .local v12, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v13, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/network/util/Timeout;

    .local v13, "timeout":Lio/ktor/network/util/Timeout;
    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_6

    .end local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingImpl$1$1":I
    .end local v12    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v13    # "timeout":Lio/ktor/network/util/Timeout;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/network/util/Timeout;

    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    :try_start_2
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v6

    move-object v6, v5

    goto :goto_3

    .end local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "timeout":Lio/ktor/network/util/Timeout;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ReaderScope;

    .line 28
    .local v6, "$this$reader":Lio/ktor/utils/io/ReaderScope;
    nop

    .line 29
    :try_start_3
    iget-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

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

    .line 30
    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    const-string v9, "writing"

    iget-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {v7}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getSocketTimeout()J

    move-result-wide v10

    new-instance v7, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1$timeout$1;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-direct {v7, v12, v4}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1$timeout$1;-><init>(Lio/ktor/utils/io/ByteChannel;Lkotlin/coroutines/Continuation;)V

    move-object v13, v7

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v15}, Lio/ktor/network/util/UtilsKt;->createTimeout$default(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/network/util/Timeout;

    move-result-object v7

    goto :goto_1

    .line 34
    .end local v6    # "$this$reader":Lio/ktor/utils/io/ReaderScope;
    :cond_1
    move-object v7, v4

    .line 29
    :goto_1
    move-object v6, v7

    .line 37
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    :goto_2
    nop

    .line 38
    iget-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 39
    iget-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iget-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$buffer:Ljava/nio/ByteBuffer;

    move-object v9, v2

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$5:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$6:Ljava/lang/Object;

    iput v3, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->label:I

    invoke-interface {v7, v8, v9}, Lio/ktor/utils/io/ByteChannel;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v7, v0, :cond_2

    .line 27
    return-object v0

    .line 39
    :cond_2
    move-object/from16 v16, v6

    move-object v6, v5

    move-object v5, v7

    move-object/from16 v7, v16

    .end local v5    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "timeout":Lio/ktor/network/util/Timeout;
    :goto_3
    :try_start_4
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 40
    nop

    .line 60
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lio/ktor/network/util/Timeout;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    nop

    .line 62
    .end local v7    # "timeout":Lio/ktor/network/util/Timeout;
    :cond_3
    iget-object v0, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v3, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 63
    iget-object v0, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_5

    .line 64
    nop

    .line 65
    :try_start_5
    invoke-static {}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->getJava7NetworkApisAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->shutdownOutput()Ljava/nio/channels/SocketChannel;

    goto :goto_4

    .line 68
    :cond_4
    iget-object v0, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_5
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 70
    :catch_0
    move-exception v0

    .line 73
    :cond_5
    :goto_4
    nop

    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 42
    .restart local v7    # "timeout":Lio/ktor/network/util/Timeout;
    :cond_6
    :try_start_6
    iget-object v5, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v6

    move-object v6, v7

    .line 44
    .end local v7    # "timeout":Lio/ktor/network/util/Timeout;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    :goto_5
    :try_start_7
    iget-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 45
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 47
    .local v7, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$buffer:Ljava/nio/ByteBuffer;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    move-object v12, v6

    .local v12, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    const/4 v13, 0x0

    .line 137
    .local v13, "$i$f$withTimeout":I
    if-nez v12, :cond_b

    .line 138
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    const/4 v12, 0x0

    move/from16 v16, v13

    move-object v13, v6

    move/from16 v6, v16

    move/from16 v17, v12

    move-object v12, v7

    move/from16 v7, v17

    move-object/from16 v18, v11

    move-object v11, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    .line 49
    .local v6, "$i$f$withTimeout":I
    .local v7, "$i$a$-withTimeout-CIOWriterKt$attachForWritingImpl$1$1":I
    .local v12, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .local v13, "timeout":Lio/ktor/network/util/Timeout;
    :cond_7
    invoke-interface {v11, v10}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v14

    iput v14, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 50
    iget v14, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v14, :cond_9

    .line 51
    sget-object v14, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    invoke-interface {v9, v14, v3}, Lio/ktor/network/selector/Selectable;->interestOp(Lio/ktor/network/selector/SelectInterest;Z)V

    .line 52
    sget-object v14, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    iput-object v13, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$4:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$5:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$6:Ljava/lang/Object;

    const/4 v15, 0x2

    iput v15, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->label:I

    invoke-interface {v8, v9, v14, v2}, Lio/ktor/network/selector/SelectorManager;->select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v0, :cond_8

    .line 27
    return-object v0

    .line 54
    :cond_8
    :goto_6
    nop

    :cond_9
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_a

    iget v14, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v14, :cond_7

    .line 55
    .end local v12    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_a
    nop

    .line 138
    .end local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingImpl$1$1":I
    move-object v6, v13

    goto :goto_a

    .line 141
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    .local v7, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .local v12, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .local v13, "$i$f$withTimeout":I
    :cond_b
    invoke-virtual {v12}, Lio/ktor/network/util/Timeout;->start()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 142
    nop

    .line 143
    const/4 v14, 0x0

    move/from16 v16, v14

    move-object v14, v6

    move v6, v13

    move-object v13, v7

    move/from16 v7, v16

    move-object/from16 v17, v11

    move-object v11, v8

    move-object/from16 v8, v17

    move-object/from16 v18, v10

    move-object v10, v9

    move-object/from16 v9, v18

    .line 49
    .local v6, "$i$f$withTimeout":I
    .local v7, "$i$a$-withTimeout-CIOWriterKt$attachForWritingImpl$1$1":I
    .local v13, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "timeout":Lio/ktor/network/util/Timeout;
    :goto_7
    :try_start_8
    invoke-interface {v11, v10}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v15

    iput v15, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 50
    iget v15, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v15, :cond_d

    .line 51
    sget-object v15, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    invoke-interface {v9, v15, v3}, Lio/ktor/network/selector/Selectable;->interestOp(Lio/ktor/network/selector/SelectInterest;Z)V

    .line 52
    sget-object v15, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    iput-object v14, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$4:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$5:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->L$6:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->label:I

    invoke-interface {v8, v9, v15, v2}, Lio/ktor/network/selector/SelectorManager;->select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_c

    .line 27
    return-object v0

    .line 54
    :cond_c
    :goto_8
    nop

    :cond_d
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v3, :cond_e

    goto :goto_9

    :cond_e
    const/4 v3, 0x1

    goto :goto_7

    .line 55
    .end local v13    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_f
    :goto_9
    nop

    .end local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingImpl$1$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 143
    nop

    .line 145
    :try_start_9
    invoke-virtual {v12}, Lio/ktor/network/util/Timeout;->stop()V

    .line 146
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    move-object v3, v12

    .line 142
    .local v3, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    move-object v6, v14

    .line 57
    .end local v3    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .end local v14    # "timeout":Lio/ktor/network/util/Timeout;
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    :goto_a
    iget-object v3, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$selectable:Lio/ktor/network/selector/Selectable;

    sget-object v7, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Lio/ktor/network/selector/Selectable;->interestOp(Lio/ktor/network/selector/SelectInterest;Z)V

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 145
    .local v6, "$i$f$withTimeout":I
    .restart local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    :goto_b
    invoke-virtual {v12}, Lio/ktor/network/util/Timeout;->stop()V

    .end local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
    .end local v5    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 44
    .end local v12    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .restart local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 62
    .end local v5    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v5, v6

    goto :goto_c

    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object v3, v0

    :goto_c
    iget-object v0, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 63
    iget-object v0, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_12

    .line 64
    nop

    .line 65
    :try_start_a
    invoke-static {}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->getJava7NetworkApisAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    iget-object v0, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->shutdownOutput()Ljava/nio/channels/SocketChannel;

    goto :goto_d

    .line 68
    :cond_11
    iget-object v0, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingImpl$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_a
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_d

    .line 70
    :catch_1
    move-exception v0

    :cond_12
    :goto_d
    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
