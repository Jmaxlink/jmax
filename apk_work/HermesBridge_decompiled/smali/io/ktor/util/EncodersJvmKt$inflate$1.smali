.class final Lio/ktor/util/EncodersJvmKt$inflate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EncodersJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/EncodersJvmKt;->inflate(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Z)Lio/ktor/utils/io/ByteReadChannel;
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
    value = "SMAP\nEncodersJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodersJvm.kt\nio/ktor/util/EncodersJvmKt$inflate$1\n+ 2 ByteReadChannel.kt\nio/ktor/utils/io/ByteReadChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n232#2,2:161\n232#2,2:164\n1#3:163\n*S KotlinDebug\n*F\n+ 1 EncodersJvm.kt\nio/ktor/util/EncodersJvmKt$inflate$1\n*L\n86#1:161,2\n96#1:164,2\n*E\n"
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
    c = "io.ktor.util.EncodersJvmKt$inflate$1"
    f = "EncodersJvm.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6
    }
    l = {
        0x44,
        0x55,
        0xa1,
        0xa4,
        0x67,
        0x6d,
        0x79
    }
    m = "invokeSuspend"
    n = {
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "magic",
        "format",
        "flags",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "magic",
        "format",
        "flags",
        "extraLen",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "n$iv",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "totalSize",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "totalSize",
        "$this$writer",
        "readBuffer",
        "writeBuffer",
        "inflater",
        "checksum",
        "totalSize"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "S$0",
        "B$0",
        "B$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "S$0",
        "B$0",
        "B$1",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5"
    }
.end annotation


# instance fields
.field final synthetic $gzip:Z

.field final synthetic $source:Lio/ktor/utils/io/ByteReadChannel;

.field B$0:B

.field B$1:B

.field I$0:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field S$0:S

.field label:I


# direct methods
.method constructor <init>(ZLio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/util/EncodersJvmKt$inflate$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lio/ktor/util/EncodersJvmKt$inflate$1;->$gzip:Z

    iput-object p2, p0, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lio/ktor/util/EncodersJvmKt$inflate$1;

    iget-boolean v1, p0, Lio/ktor/util/EncodersJvmKt$inflate$1;->$gzip:Z

    iget-object v2, p0, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/util/EncodersJvmKt$inflate$1;-><init>(ZLio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
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

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/EncodersJvmKt$inflate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/util/EncodersJvmKt$inflate$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/util/EncodersJvmKt$inflate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/EncodersJvmKt$inflate$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    const-string v3, " bytes"

    const-string v4, "Unable to discard "

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget v4, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->I$0:I

    iget-object v5, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    .local v10, "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v11, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/zip/CRC32;

    .local v11, "checksum":Ljava/util/zip/CRC32;
    iget-object v12, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/zip/Inflater;

    .local v12, "inflater":Ljava/util/zip/Inflater;
    iget-object v13, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/nio/ByteBuffer;

    .local v13, "writeBuffer":Ljava/nio/ByteBuffer;
    iget-object v14, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/nio/ByteBuffer;

    .local v14, "readBuffer":Ljava/nio/ByteBuffer;
    iget-object v15, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/WriterScope;

    .local v15, "$this$writer":Lio/ktor/utils/io/WriterScope;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v3

    goto/16 :goto_d

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "checksum":Ljava/util/zip/CRC32;
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget v4, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->I$0:I

    iget-object v5, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    .restart local v10    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v11, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/zip/CRC32;

    .restart local v11    # "checksum":Ljava/util/zip/CRC32;
    iget-object v12, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/zip/Inflater;

    .restart local v12    # "inflater":Ljava/util/zip/Inflater;
    iget-object v13, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/nio/ByteBuffer;

    .restart local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    iget-object v14, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/nio/ByteBuffer;

    .restart local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    iget-object v15, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/WriterScope;

    .restart local v15    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v3

    goto/16 :goto_b

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "checksum":Ljava/util/zip/CRC32;
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    .local v4, "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v5, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/zip/CRC32;

    .local v5, "checksum":Ljava/util/zip/CRC32;
    iget-object v10, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, Ljava/util/zip/Inflater;

    .restart local v12    # "inflater":Ljava/util/zip/Inflater;
    iget-object v10, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    move-object v13, v10

    check-cast v13, Ljava/nio/ByteBuffer;

    .restart local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    iget-object v10, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    move-object v14, v10

    check-cast v14, Ljava/nio/ByteBuffer;

    .restart local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    iget-object v10, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/WriterScope;

    .local v10, "$this$writer":Lio/ktor/utils/io/WriterScope;
    :try_start_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v3

    goto/16 :goto_9

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v5    # "checksum":Ljava/util/zip/CRC32;
    .end local v10    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    :pswitch_3
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, "$i$f$discardExact":I
    iget-wide v11, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->J$0:J

    .local v11, "n$iv":J
    iget-object v13, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/util/zip/CRC32;

    .local v13, "checksum":Ljava/util/zip/CRC32;
    iget-object v14, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/util/zip/Inflater;

    .local v14, "inflater":Ljava/util/zip/Inflater;
    iget-object v15, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v15, Ljava/nio/ByteBuffer;

    .local v15, "writeBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/nio/ByteBuffer;

    .local v8, "readBuffer":Ljava/nio/ByteBuffer;
    iget-object v7, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/WriterScope;

    .local v7, "$this$writer":Lio/ktor/utils/io/WriterScope;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v5

    goto/16 :goto_6

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v7    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .end local v8    # "readBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "$i$f$discardExact":I
    .end local v11    # "n$iv":J
    .end local v13    # "checksum":Ljava/util/zip/CRC32;
    .end local v14    # "inflater":Ljava/util/zip/Inflater;
    .end local v15    # "writeBuffer":Ljava/nio/ByteBuffer;
    :pswitch_4
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "$i$f$discardExact":I
    iget-wide v10, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->J$0:J

    .local v10, "extraLen":J
    iget-byte v12, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$1:B

    .local v12, "flags":I
    iget-byte v13, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$0:B

    .local v13, "format":B
    iget-short v14, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->S$0:S

    .local v14, "magic":S
    iget-object v15, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v15, Ljava/util/zip/CRC32;

    .local v15, "checksum":Ljava/util/zip/CRC32;
    iget-object v6, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/zip/Inflater;

    .local v6, "inflater":Ljava/util/zip/Inflater;
    iget-object v5, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    .local v5, "writeBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    .local v9, "readBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/WriterScope;

    .local v1, "$this$writer":Lio/ktor/utils/io/WriterScope;
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v16, v8

    move-object v8, v7

    goto/16 :goto_2

    .end local v1    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v5    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "inflater":Ljava/util/zip/Inflater;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$f$discardExact":I
    .end local v9    # "readBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "extraLen":J
    .end local v12    # "flags":I
    .end local v13    # "format":B
    .end local v14    # "magic":S
    .end local v15    # "checksum":Ljava/util/zip/CRC32;
    :pswitch_5
    move-object/from16 v1, p0

    .local v1, "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    iget-byte v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$1:B

    .local v5, "flags":I
    iget-byte v6, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$0:B

    .local v6, "format":B
    iget-short v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->S$0:S

    .local v7, "magic":S
    iget-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/util/zip/CRC32;

    .local v8, "checksum":Ljava/util/zip/CRC32;
    iget-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/zip/Inflater;

    .local v9, "inflater":Ljava/util/zip/Inflater;
    iget-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    .local v10, "writeBuffer":Ljava/nio/ByteBuffer;
    iget-object v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/nio/ByteBuffer;

    .local v11, "readBuffer":Ljava/nio/ByteBuffer;
    iget-object v12, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/WriterScope;

    .local v12, "$this$writer":Lio/ktor/utils/io/WriterScope;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v6

    move v14, v7

    move-object v15, v8

    move-object v6, v9

    move-object v8, v10

    move-object v9, v11

    move-object v7, v2

    move/from16 v19, v5

    move-object v5, v1

    move-object v1, v12

    move/from16 v12, v19

    goto/16 :goto_1

    .end local v1    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "flags":I
    .end local v6    # "format":B
    .end local v7    # "magic":S
    .end local v8    # "checksum":Ljava/util/zip/CRC32;
    .end local v9    # "inflater":Ljava/util/zip/Inflater;
    .end local v10    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "readBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    :pswitch_6
    move-object/from16 v1, p0

    .restart local v1    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    iget-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/zip/CRC32;

    .local v5, "checksum":Ljava/util/zip/CRC32;
    iget-object v6, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/zip/Inflater;

    .local v6, "inflater":Ljava/util/zip/Inflater;
    iget-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/nio/ByteBuffer;

    .local v7, "writeBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/nio/ByteBuffer;

    .local v8, "readBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/WriterScope;

    .local v9, "$this$writer":Lio/ktor/utils/io/WriterScope;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto :goto_0

    .end local v1    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "checksum":Ljava/util/zip/CRC32;
    .end local v6    # "inflater":Ljava/util/zip/Inflater;
    .end local v7    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "readBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    .restart local v1    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    iget-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    move-object v9, v5

    check-cast v9, Lio/ktor/utils/io/WriterScope;

    .line 62
    .restart local v9    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v5

    invoke-interface {v5}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 63
    .restart local v8    # "readBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v5

    invoke-interface {v5}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 64
    .restart local v7    # "writeBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/util/zip/Inflater;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/zip/Inflater;-><init>(Z)V

    move-object v6, v5

    .line 65
    .restart local v6    # "inflater":Ljava/util/zip/Inflater;
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 67
    .restart local v5    # "checksum":Ljava/util/zip/CRC32;
    iget-boolean v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$gzip:Z

    if-eqz v10, :cond_e

    .line 68
    iget-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    move-object v11, v1

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    const/4 v12, 0x1

    iput v12, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    const/16 v12, 0xa

    invoke-interface {v10, v12, v11}, Lio/ktor/utils/io/ByteReadChannel;->readPacket(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_0

    .line 61
    return-object v0

    .line 68
    :cond_0
    move-object/from16 v19, v5

    move-object v5, v2

    move-object v2, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v6, v19

    .line 61
    .end local v2    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "checksum":Ljava/util/zip/CRC32;
    .local v7, "inflater":Ljava/util/zip/Inflater;
    .local v8, "writeBuffer":Ljava/nio/ByteBuffer;
    .local v9, "readBuffer":Ljava/nio/ByteBuffer;
    .local v10, "$this$writer":Lio/ktor/utils/io/WriterScope;
    :goto_0
    check-cast v2, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 69
    .local v2, "header":Lio/ktor/utils/io/core/ByteReadPacket;
    move-object v11, v2

    check-cast v11, Lio/ktor/utils/io/core/Input;

    invoke-static {v11}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readShortLittleEndian(Lio/ktor/utils/io/core/Input;)S

    move-result v11

    .line 70
    .local v11, "magic":S
    invoke-virtual {v2}, Lio/ktor/utils/io/core/ByteReadPacket;->readByte()B

    move-result v12

    .line 71
    .local v12, "format":B
    invoke-virtual {v2}, Lio/ktor/utils/io/core/ByteReadPacket;->readByte()B

    move-result v13

    .line 81
    .local v13, "flags":I
    move-object v14, v2

    check-cast v14, Lio/ktor/utils/io/core/Input;

    invoke-static {v14}, Lio/ktor/utils/io/core/InputKt;->discard(Lio/ktor/utils/io/core/Input;)J

    .line 84
    .end local v2    # "header":Lio/ktor/utils/io/core/ByteReadPacket;
    and-int/lit8 v2, v13, 0x4

    if-eqz v2, :cond_4

    .line 85
    iget-object v2, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    move-object v14, v1

    check-cast v14, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-short v11, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->S$0:S

    iput-byte v12, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$0:B

    iput-byte v13, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$1:B

    const/4 v15, 0x2

    iput v15, v1, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-interface {v2, v14}, Lio/ktor/utils/io/ByteReadChannel;->readShort(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 61
    return-object v0

    .line 85
    :cond_1
    move-object v15, v6

    move-object v6, v7

    move v14, v11

    move-object v7, v5

    move-object v5, v1

    move-object v1, v10

    move/from16 v19, v13

    move v13, v12

    move/from16 v12, v19

    .end local v10    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .end local v11    # "magic":S
    .local v1, "$this$writer":Lio/ktor/utils/io/WriterScope;
    .local v5, "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .local v6, "inflater":Ljava/util/zip/Inflater;
    .local v7, "$result":Ljava/lang/Object;
    .local v12, "flags":I
    .local v13, "format":B
    .restart local v14    # "magic":S
    .restart local v15    # "checksum":Ljava/util/zip/CRC32;
    :goto_1
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-long v10, v2

    .line 86
    .local v10, "extraLen":J
    iget-object v2, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    .local v2, "$this$discardExact$iv":Lio/ktor/utils/io/ByteReadChannel;
    const/16 v16, 0x0

    .line 161
    .local v16, "$i$f$discardExact":I
    move-object/from16 p1, v7

    .end local v7    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v1, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v9, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v8, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v6, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v15, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-short v14, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->S$0:S

    iput-byte v13, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$0:B

    iput-byte v12, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->B$1:B

    iput-wide v10, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->J$0:J

    move-object/from16 v17, v1

    .end local v1    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .local v17, "$this$writer":Lio/ktor/utils/io/WriterScope;
    const/4 v1, 0x3

    iput v1, v5, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-interface {v2, v10, v11, v7}, Lio/ktor/utils/io/ByteReadChannel;->discard(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v2    # "$this$discardExact$iv":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v7, v0, :cond_2

    .line 61
    return-object v0

    .line 161
    :cond_2
    move-object v2, v5

    move-object v5, v8

    move-object/from16 v1, v17

    move-object/from16 v8, p1

    .end local v17    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .local v2, "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .local v5, "writeBuffer":Ljava/nio/ByteBuffer;
    .local v8, "$result":Ljava/lang/Object;
    :goto_2
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    cmp-long v7, v17, v10

    if-nez v7, :cond_3

    .line 162
    move-object v7, v1

    move v1, v12

    move v12, v13

    move v11, v14

    move-object v13, v15

    move-object v15, v5

    move-object v14, v6

    move-object v5, v8

    move-object v8, v9

    goto :goto_3

    .line 161
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v14    # "magic":S
    .end local v15    # "checksum":Ljava/util/zip/CRC32;
    .end local v16    # "$i$f$discardExact":I
    .local v1, "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "checksum":Ljava/util/zip/CRC32;
    .local v7, "inflater":Ljava/util/zip/Inflater;
    .local v8, "writeBuffer":Ljava/nio/ByteBuffer;
    .local v10, "$this$writer":Lio/ktor/utils/io/WriterScope;
    .restart local v11    # "magic":S
    .local v12, "format":B
    .local v13, "flags":I
    :cond_4
    move-object v2, v1

    move-object v14, v7

    move-object v15, v8

    move-object v8, v9

    move-object v7, v10

    move v1, v13

    move-object v13, v6

    .line 89
    .end local v6    # "checksum":Ljava/util/zip/CRC32;
    .end local v9    # "readBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .local v1, "flags":I
    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .local v7, "$this$writer":Lio/ktor/utils/io/WriterScope;
    .local v8, "readBuffer":Ljava/nio/ByteBuffer;
    .local v13, "checksum":Ljava/util/zip/CRC32;
    .local v14, "inflater":Ljava/util/zip/Inflater;
    .local v15, "writeBuffer":Ljava/nio/ByteBuffer;
    :goto_3
    const/16 v6, -0x74e1

    if-ne v11, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_d

    .line 90
    .end local v11    # "magic":S
    const/16 v6, 0x8

    if-ne v12, v6, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_c

    .line 91
    .end local v12    # "format":B
    invoke-static {v1, v6}, Lio/ktor/util/EncodersJvmKt;->access$has(II)Z

    move-result v9

    const/4 v6, 0x1

    xor-int/2addr v9, v6

    if-eqz v9, :cond_b

    .line 92
    const/16 v9, 0x10

    invoke-static {v1, v9}, Lio/ktor/util/EncodersJvmKt;->access$has(II)Z

    move-result v9

    xor-int/2addr v9, v6

    if-eqz v9, :cond_a

    .line 95
    const/4 v6, 0x2

    invoke-static {v1, v6}, Lio/ktor/util/EncodersJvmKt;->access$has(II)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 96
    .end local v1    # "flags":I
    iget-object v1, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    .local v1, "$this$discardExact$iv":Lio/ktor/utils/io/ByteReadChannel;
    const-wide/16 v11, 0x2

    .local v11, "n$iv":J
    const/4 v10, 0x0

    .line 164
    .local v10, "$i$f$discardExact":I
    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v7, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v15, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v14, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-wide v11, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->J$0:J

    const/4 v9, 0x4

    iput v9, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-interface {v1, v11, v12, v6}, Lio/ktor/utils/io/ByteReadChannel;->discard(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$this$discardExact$iv":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v1, v0, :cond_7

    .line 61
    return-object v0

    .line 164
    :cond_7
    move-object/from16 v19, v5

    move-object v5, v1

    move-object/from16 v1, v19

    .end local v5    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_6
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v11

    if-nez v5, :cond_8

    .line 165
    move-object v3, v1

    move-object v9, v7

    move-object v5, v13

    move-object v12, v14

    move-object v13, v15

    move-object v14, v8

    goto/16 :goto_7

    .line 164
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local v10    # "$i$f$discardExact":I
    .end local v11    # "n$iv":J
    .local v1, "flags":I
    .restart local v5    # "$result":Ljava/lang/Object;
    :cond_9
    move-object v3, v5

    move-object v9, v7

    move-object v5, v13

    move-object v12, v14

    move-object v13, v15

    move-object v14, v8

    goto :goto_7

    .line 163
    .end local v1    # "flags":I
    :cond_a
    const/4 v0, 0x0

    .line 92
    .local v0, "$i$a$-check-EncodersJvmKt$inflate$1$4":I
    nop

    .end local v0    # "$i$a$-check-EncodersJvmKt$inflate$1$4":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Gzip file comment not supported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    .end local v7    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .end local v8    # "readBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "checksum":Ljava/util/zip/CRC32;
    .end local v14    # "inflater":Ljava/util/zip/Inflater;
    .end local v15    # "writeBuffer":Ljava/nio/ByteBuffer;
    :cond_b
    const/4 v0, 0x0

    .line 91
    .local v0, "$i$a$-check-EncodersJvmKt$inflate$1$3":I
    nop

    .end local v0    # "$i$a$-check-EncodersJvmKt$inflate$1$3":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Gzip file name not supported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    .restart local v12    # "format":B
    :cond_c
    const/4 v0, 0x0

    .line 90
    .local v0, "$i$a$-check-EncodersJvmKt$inflate$1$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deflater method unsupported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-EncodersJvmKt$inflate$1$2":I
    .end local v12    # "format":B
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    .local v11, "magic":S
    :cond_d
    const/4 v0, 0x0

    .line 89
    .local v0, "$i$a$-check-EncodersJvmKt$inflate$1$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GZIP magic invalid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-EncodersJvmKt$inflate$1$1":I
    .end local v11    # "magic":S
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .local v1, "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .local v2, "$result":Ljava/lang/Object;
    .local v5, "checksum":Ljava/util/zip/CRC32;
    .local v6, "inflater":Ljava/util/zip/Inflater;
    .local v7, "writeBuffer":Ljava/nio/ByteBuffer;
    .restart local v8    # "readBuffer":Ljava/nio/ByteBuffer;
    .local v9, "$this$writer":Lio/ktor/utils/io/WriterScope;
    :cond_e
    move-object v3, v2

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    move-object v2, v1

    .line 100
    .end local v1    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v6    # "inflater":Ljava/util/zip/Inflater;
    .end local v7    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "readBuffer":Ljava/nio/ByteBuffer;
    .local v2, "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v12, "inflater":Ljava/util/zip/Inflater;
    .local v13, "writeBuffer":Ljava/nio/ByteBuffer;
    .local v14, "readBuffer":Ljava/nio/ByteBuffer;
    :goto_7
    nop

    .line 101
    :try_start_3
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v4, v1

    move-object v10, v9

    .line 102
    .end local v9    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .restart local v4    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v10, "$this$writer":Lio/ktor/utils/io/WriterScope;
    :goto_8
    iget-object v1, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v1}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v1

    if-nez v1, :cond_13

    .line 103
    iget-object v1, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v10, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-interface {v1, v14, v6}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v1, v0, :cond_f

    .line 61
    return-object v0

    .line 103
    :cond_f
    move-object/from16 v19, v3

    move-object v3, v1

    move-object/from16 v1, v19

    .end local v3    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_9
    :try_start_4
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_12

    .line 104
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 106
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v12, v3, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v1

    .line 108
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_a
    :try_start_5
    invoke-virtual {v12}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v12}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-nez v1, :cond_11

    .line 109
    iget v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v10}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Ljava/util/zip/Checksum;

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v10, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    iput v1, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->I$0:I

    const/4 v9, 0x6

    iput v9, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-static {v12, v6, v13, v7, v8}, Lio/ktor/util/EncodersJvmKt;->access$inflateTo(Ljava/util/zip/Inflater;Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;Ljava/util/zip/Checksum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v6, v0, :cond_10

    .line 61
    return-object v0

    .line 109
    :cond_10
    move-object v11, v5

    move-object v15, v10

    move-object v5, v4

    move-object v10, v5

    move v4, v1

    move-object v1, v3

    move-object v3, v6

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v5    # "checksum":Ljava/util/zip/CRC32;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v10, "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .local v11, "checksum":Ljava/util/zip/CRC32;
    .local v15, "$this$writer":Lio/ktor/utils/io/WriterScope;
    :goto_b
    :try_start_6
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 110
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v12}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v1

    move-object v4, v10

    move-object v5, v11

    move-object v10, v15

    goto :goto_a

    .line 113
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v11    # "checksum":Ljava/util/zip/CRC32;
    .end local v15    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v5    # "checksum":Ljava/util/zip/CRC32;
    .local v10, "$this$writer":Lio/ktor/utils/io/WriterScope;
    :cond_11
    :try_start_7
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto/16 :goto_8

    .line 103
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_12
    move-object v3, v1

    goto/16 :goto_8

    .line 139
    .end local v4    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v5    # "checksum":Ljava/util/zip/CRC32;
    .end local v10    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    :catchall_0
    move-exception v0

    move-object v3, v1

    goto/16 :goto_12

    .line 116
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v5    # "checksum":Ljava/util/zip/CRC32;
    .restart local v10    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    :cond_13
    iget-object v1, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->$source:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v1}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 118
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v11, v5

    move-object v15, v10

    move-object v5, v4

    .line 120
    .end local v4    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .local v5, "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v11    # "checksum":Ljava/util/zip/CRC32;
    .restart local v15    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    :goto_c
    invoke-virtual {v12}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-nez v1, :cond_15

    .line 121
    iget v4, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v15}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v1

    move-object v6, v11

    check-cast v6, Ljava/util/zip/Checksum;

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v15, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$4:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$5:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->L$6:Ljava/lang/Object;

    iput v4, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->I$0:I

    const/4 v8, 0x7

    iput v8, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->label:I

    invoke-static {v12, v1, v13, v6, v7}, Lio/ktor/util/EncodersJvmKt;->access$inflateTo(Ljava/util/zip/Inflater;Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;Ljava/util/zip/Checksum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-ne v1, v0, :cond_14

    .line 61
    return-object v0

    .line 121
    :cond_14
    move-object v10, v5

    move-object/from16 v19, v3

    move-object v3, v1

    move-object/from16 v1, v19

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v10, "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_d
    :try_start_8
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 122
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v12}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v3, v1

    move-object v5, v10

    goto :goto_c

    .line 125
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v10    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v15    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v5    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_15
    :try_start_9
    iget-boolean v0, v2, Lio/ktor/util/EncodersJvmKt$inflate$1;->$gzip:Z

    if-eqz v0, :cond_1c

    .line 126
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_16

    const/4 v6, 0x1

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_1b

    .line 130
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 132
    .local v0, "expectedChecksum":I
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v4, 0x4

    add-int/2addr v1, v4

    invoke-virtual {v14, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 134
    .local v1, "expectedSize":I
    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v4, v6

    if-ne v4, v0, :cond_17

    const/4 v6, 0x1

    goto :goto_f

    :cond_17
    const/4 v6, 0x0

    .end local v0    # "expectedChecksum":I
    .end local v11    # "checksum":Ljava/util/zip/CRC32;
    :goto_f
    if-eqz v6, :cond_1a

    .line 135
    iget v0, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v0, v1, :cond_18

    const/4 v8, 0x1

    goto :goto_10

    :cond_18
    const/4 v8, 0x0

    :goto_10
    if-eqz v8, :cond_19

    goto :goto_11

    .line 163
    :cond_19
    const/4 v0, 0x0

    .line 135
    .local v0, "$i$a$-check-EncodersJvmKt$inflate$1$8":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gzip size invalid. Expected "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", actual "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v0    # "$i$a$-check-EncodersJvmKt$inflate$1$8":I
    .end local v5    # "totalSize":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    throw v0

    .line 163
    .end local v1    # "expectedSize":I
    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "inflater":Ljava/util/zip/Inflater;
    .restart local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    :cond_1a
    const/4 v0, 0x0

    .line 134
    .local v0, "$i$a$-check-EncodersJvmKt$inflate$1$7":I
    const-string v1, "Gzip checksum invalid."

    .end local v0    # "$i$a$-check-EncodersJvmKt$inflate$1$7":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    throw v0

    .line 126
    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "inflater":Ljava/util/zip/Inflater;
    .restart local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    :cond_1b
    const/4 v0, 0x0

    .line 127
    .local v0, "$i$a$-check-EncodersJvmKt$inflate$1$6":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 8 bytes in the trailer. Actual: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " $"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .end local v0    # "$i$a$-check-EncodersJvmKt$inflate$1$6":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    throw v0

    .line 137
    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "inflater":Ljava/util/zip/Inflater;
    .restart local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    :cond_1c
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 142
    :goto_11
    invoke-virtual {v12}, Ljava/util/zip/Inflater;->end()V

    .line 143
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0, v14}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 144
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0, v13}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 145
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    move-object v0, v13

    .local v0, "writeBuffer":Ljava/nio/ByteBuffer;
    move-object v1, v14

    .local v1, "readBuffer":Ljava/nio/ByteBuffer;
    move-object v4, v12

    .line 146
    .local v4, "inflater":Ljava/util/zip/Inflater;
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v5

    .line 137
    .end local v0    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "readBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "inflater":Ljava/util/zip/Inflater;
    .restart local v12    # "inflater":Ljava/util/zip/Inflater;
    .restart local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    :cond_1d
    :try_start_a
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    throw v1

    .line 116
    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "inflater":Ljava/util/zip/Inflater;
    .restart local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    :cond_1e
    move-object v0, v1

    .line 163
    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 116
    .local v1, "$i$a$-let-EncodersJvmKt$inflate$1$5":I
    nop

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 139
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-EncodersJvmKt$inflate$1$5":I
    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "inflater":Ljava/util/zip/Inflater;
    .restart local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v0

    .line 140
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_12
    nop

    .end local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v12    # "inflater":Ljava/util/zip/Inflater;
    .end local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 142
    .end local v0    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "this":Lio/ktor/util/EncodersJvmKt$inflate$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "inflater":Ljava/util/zip/Inflater;
    .restart local v13    # "writeBuffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "readBuffer":Ljava/nio/ByteBuffer;
    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v12}, Ljava/util/zip/Inflater;->end()V

    .line 143
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0, v14}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 144
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0, v13}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
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
