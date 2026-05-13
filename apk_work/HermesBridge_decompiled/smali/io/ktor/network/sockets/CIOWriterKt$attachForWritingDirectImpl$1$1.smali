.class final Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CIOWriter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/LookAheadSuspendSession;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIOWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIOWriter.kt\nio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1\n+ 2 Utils.kt\nio/ktor/network/util/UtilsKt\n*L\n1#1,136:1\n82#2,10:137\n*S KotlinDebug\n*F\n+ 1 CIOWriter.kt\nio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1\n*L\n107#1:137,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/LookAheadSuspendSession;"
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
    c = "io.ktor.network.sockets.CIOWriterKt$attachForWritingDirectImpl$1$1"
    f = "CIOWriter.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x64,
        0x70,
        0x70
    }
    m = "invokeSuspend"
    n = {
        "$this$lookAheadSuspend",
        "timeout",
        "$this$lookAheadSuspend",
        "timeout",
        "buffer",
        "rc",
        "$this$lookAheadSuspend",
        "timeout",
        "buffer",
        "rc",
        "$this$withTimeout$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field final synthetic $$this$reader:Lio/ktor/utils/io/ReaderScope;

.field final synthetic $channel:Lio/ktor/utils/io/ByteChannel;

.field final synthetic $nioChannel:Ljava/nio/channels/WritableByteChannel;

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

.field L$7:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lio/ktor/utils/io/ReaderScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/WritableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            "Lio/ktor/utils/io/ReaderScope;",
            "Lio/ktor/utils/io/ByteChannel;",
            "Ljava/nio/channels/WritableByteChannel;",
            "Lio/ktor/network/selector/Selectable;",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iput-object p2, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$$this$reader:Lio/ktor/utils/io/ReaderScope;

    iput-object p3, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iput-object p4, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    iput-object p5, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iput-object p6, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;

    iget-object v1, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iget-object v2, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$$this$reader:Lio/ktor/utils/io/ReaderScope;

    iget-object v3, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    iget-object v4, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v5, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iget-object v6, p0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;-><init>(Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lio/ktor/utils/io/ReaderScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/WritableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public final invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/LookAheadSuspendSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 88
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$f$withTimeout":I
    const/4 v7, 0x0

    .local v7, "$i$a$-withTimeout-CIOWriterKt$attachForWritingDirectImpl$1$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$7:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    check-cast v10, Ljava/nio/channels/WritableByteChannel;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lio/ktor/network/util/Timeout;

    .local v11, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    iget-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    .local v12, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v13, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/nio/ByteBuffer;

    .local v13, "buffer":Ljava/nio/ByteBuffer;
    iget-object v14, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lio/ktor/network/util/Timeout;

    .local v14, "timeout":Lio/ktor/network/util/Timeout;
    iget-object v15, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/LookAheadSuspendSession;

    .local v15, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    .line 145
    .end local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingDirectImpl$1$1$1":I
    .end local v12    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v13    # "buffer":Ljava/nio/ByteBuffer;
    .end local v14    # "timeout":Lio/ktor/network/util/Timeout;
    .end local v15    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 88
    .end local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v11    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$withTimeout":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingDirectImpl$1$1$1":I
    iget-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lio/ktor/network/selector/SelectorManager;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/selector/Selectable;

    iget-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/nio/channels/WritableByteChannel;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    .local v11, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/nio/ByteBuffer;

    .local v12, "buffer":Ljava/nio/ByteBuffer;
    iget-object v13, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/ktor/network/util/Timeout;

    .local v13, "timeout":Lio/ktor/network/util/Timeout;
    iget-object v14, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/LookAheadSuspendSession;

    .local v14, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .end local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingDirectImpl$1$1$1":I
    .end local v11    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    .end local v13    # "timeout":Lio/ktor/network/util/Timeout;
    .end local v14    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/network/util/Timeout;

    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    iget-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/LookAheadSuspendSession;

    .local v7, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_3

    .end local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "timeout":Lio/ktor/network/util/Timeout;
    .end local v7    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/LookAheadSuspendSession;

    .line 89
    .local v6, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    iget-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

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

    .line 90
    iget-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$$this$reader:Lio/ktor/utils/io/ReaderScope;

    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {v7}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getSocketTimeout()J

    move-result-wide v10

    new-instance v7, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1$timeout$1;

    iget-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-direct {v7, v9, v4}, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1$timeout$1;-><init>(Lio/ktor/utils/io/ByteChannel;Lkotlin/coroutines/Continuation;)V

    move-object v13, v7

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v9, "writing-direct"

    const/4 v12, 0x0

    invoke-static/range {v8 .. v15}, Lio/ktor/network/util/UtilsKt;->createTimeout$default(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/network/util/Timeout;

    move-result-object v7

    goto :goto_1

    .line 94
    :cond_1
    move-object v7, v4

    .line 89
    :goto_1
    move-object/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, v16

    .line 97
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    .restart local v7    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :goto_2
    nop

    .line 98
    const/4 v8, 0x0

    invoke-interface {v7, v8, v3}, Lio/ktor/utils/io/LookAheadSuspendSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 99
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    if-nez v8, :cond_5

    .line 100
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v7, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$7:Ljava/lang/Object;

    iput v3, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->label:I

    invoke-interface {v7, v3, v8}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_2

    .line 88
    return-object v0

    .line 100
    :cond_2
    move-object/from16 v16, v6

    move-object v6, v5

    move-object v5, v8

    move-object v8, v7

    move-object/from16 v7, v16

    .end local v5    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "timeout":Lio/ktor/network/util/Timeout;
    .local v8, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :goto_3
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_2

    .line 120
    .end local v8    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lio/ktor/network/util/Timeout;->finish()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    nop

    .end local v7    # "timeout":Lio/ktor/network/util/Timeout;
    :cond_4
    return-object v4

    .line 104
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    .local v7, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    :cond_5
    :goto_4
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 105
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 107
    .local v9, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$nioChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selectable:Lio/ktor/network/selector/Selectable;

    iget-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->$selector:Lio/ktor/network/selector/SelectorManager;

    move-object v13, v6

    .local v13, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    const/4 v14, 0x0

    .line 137
    .local v14, "$i$f$withTimeout":I
    if-nez v13, :cond_a

    .line 138
    .end local v13    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    const/4 v13, 0x0

    move/from16 v16, v13

    move-object v13, v6

    move v6, v14

    move-object v14, v7

    move/from16 v7, v16

    move-object/from16 v17, v12

    move-object v12, v8

    move-object/from16 v8, v17

    move-object/from16 v18, v11

    move-object v11, v9

    move-object/from16 v9, v18

    .line 109
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .local v6, "$i$f$withTimeout":I
    .local v7, "$i$a$-withTimeout-CIOWriterKt$attachForWritingDirectImpl$1$1$1":I
    .restart local v11    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v12    # "buffer":Ljava/nio/ByteBuffer;
    .local v13, "timeout":Lio/ktor/network/util/Timeout;
    .local v14, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :goto_5
    invoke-interface {v10, v12}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v15

    iput v15, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 110
    iget v15, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v15, :cond_7

    .line 111
    sget-object v15, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    invoke-interface {v9, v15, v3}, Lio/ktor/network/selector/Selectable;->interestOp(Lio/ktor/network/selector/SelectInterest;Z)V

    .line 112
    sget-object v15, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    iput-object v14, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$7:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->label:I

    invoke-interface {v8, v9, v15, v2}, Lio/ktor/network/selector/SelectorManager;->select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_6

    .line 88
    return-object v0

    .line 114
    :cond_6
    :goto_6
    nop

    :cond_7
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 115
    :cond_9
    :goto_7
    nop

    .line 138
    .end local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingDirectImpl$1$1$1":I
    move-object v8, v12

    move-object v6, v13

    move-object v7, v14

    goto/16 :goto_b

    .line 141
    .end local v11    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    .local v7, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .local v13, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .local v14, "$i$f$withTimeout":I
    :cond_a
    invoke-virtual {v13}, Lio/ktor/network/util/Timeout;->start()V

    .line 142
    nop

    .line 143
    const/4 v4, 0x0

    move-object v15, v7

    move v7, v4

    move/from16 v16, v14

    move-object v14, v6

    move/from16 v6, v16

    move-object/from16 v17, v13

    move-object v13, v8

    move-object v8, v12

    move-object v12, v9

    move-object v9, v11

    move-object/from16 v11, v17

    .line 109
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .local v6, "$i$f$withTimeout":I
    .local v7, "$i$a$-withTimeout-CIOWriterKt$attachForWritingDirectImpl$1$1$1":I
    .local v11, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .local v12, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .local v13, "buffer":Ljava/nio/ByteBuffer;
    .local v14, "timeout":Lio/ktor/network/util/Timeout;
    .restart local v15    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :goto_8
    :try_start_1
    invoke-interface {v10, v13}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 110
    iget v4, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v4, :cond_c

    .line 111
    sget-object v4, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    invoke-interface {v9, v4, v3}, Lio/ktor/network/selector/Selectable;->interestOp(Lio/ktor/network/selector/SelectInterest;Z)V

    .line 112
    sget-object v4, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    iput-object v15, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$5:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$6:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->L$7:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v2, Lio/ktor/network/sockets/CIOWriterKt$attachForWritingDirectImpl$1$1;->label:I

    invoke-interface {v8, v9, v4, v2}, Lio/ktor/network/selector/SelectorManager;->select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_b

    .line 88
    return-object v0

    .line 114
    :cond_b
    :goto_9
    nop

    :cond_c
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v3, :cond_d

    goto :goto_a

    :cond_d
    const/4 v3, 0x1

    goto :goto_8

    .line 115
    :cond_e
    :goto_a
    nop

    .end local v7    # "$i$a$-withTimeout-CIOWriterKt$attachForWritingDirectImpl$1$1$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    nop

    .line 145
    invoke-virtual {v11}, Lio/ktor/network/util/Timeout;->stop()V

    .line 146
    .end local v11    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    move-object v3, v11

    .line 142
    .local v3, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    move-object v11, v12

    move-object v8, v13

    move-object v6, v14

    move-object v7, v15

    .line 117
    .end local v3    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .end local v12    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v13    # "buffer":Ljava/nio/ByteBuffer;
    .end local v14    # "timeout":Lio/ktor/network/util/Timeout;
    .end local v15    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    .local v7, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .local v11, "rc":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_b
    iget v3, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v7, v3}, Lio/ktor/utils/io/LookAheadSuspendSession;->consumed(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .end local v11    # "rc":Lkotlin/jvm/internal/Ref$IntRef;
    goto/16 :goto_4

    .line 145
    .end local v7    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .local v6, "$i$f$withTimeout":I
    .local v11, "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    :goto_c
    invoke-virtual {v11}, Lio/ktor/network/util/Timeout;->stop()V

    throw v0

    .line 104
    .end local v11    # "$this$withTimeout$iv":Lio/ktor/network/util/Timeout;
    .local v6, "timeout":Lio/ktor/network/util/Timeout;
    .restart local v7    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    :cond_f
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
