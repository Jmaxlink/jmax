.class public final Lio/ktor/utils/io/ByteChannelSequentialJVM;
.super Lio/ktor/utils/io/ByteChannelSequentialBase;
.source "ByteChannelSequentialJVM.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteChannelSequentialJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelSequentialJVM.kt\nio/ktor/utils/io/ByteChannelSequentialJVM\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ByteBuffers.kt\nio/ktor/utils/io/core/ByteBuffersKt\n+ 4 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n+ 5 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Output.kt\nio/ktor/utils/io/core/Output\n*L\n1#1,256:1\n1#2:257\n1#2:285\n1#2:329\n1#2:373\n1#2:405\n1#2:436\n91#3,5:258\n96#3:271\n97#3:289\n98#3:301\n91#3,5:302\n96#3:315\n97#3:333\n98#3:345\n59#3,5:346\n80#3,5:351\n85#3:359\n64#3:382\n80#3,5:383\n85#3:391\n80#3,5:414\n85#3:422\n9#4,8:263\n18#4,11:290\n9#4,8:307\n18#4,11:334\n95#5,5:272\n100#5,3:282\n104#5:286\n95#5,5:316\n100#5,3:326\n104#5:330\n111#5,5:360\n116#5,3:370\n120#5:374\n111#5,5:392\n116#5,3:402\n120#5:406\n111#5,5:423\n116#5,3:433\n120#5:437\n372#6,5:277\n377#6,2:287\n372#6,5:321\n377#6,2:331\n390#6,5:365\n395#6,2:375\n390#6,5:397\n395#6,2:407\n390#6,5:428\n395#6,2:438\n371#7,3:356\n374#7,5:377\n371#7,3:388\n374#7,5:409\n371#7,3:419\n374#7,5:440\n*S KotlinDebug\n*F\n+ 1 ByteChannelSequentialJVM.kt\nio/ktor/utils/io/ByteChannelSequentialJVM\n*L\n102#1:285\n198#1:329\n220#1:373\n235#1:405\n247#1:436\n102#1:258,5\n102#1:271\n102#1:289\n102#1:301\n198#1:302,5\n198#1:315\n198#1:333\n198#1:345\n220#1:346,5\n220#1:351,5\n220#1:359\n220#1:382\n235#1:383,5\n235#1:391\n247#1:414,5\n247#1:422\n102#1:263,8\n102#1:290,11\n198#1:307,8\n198#1:334,11\n102#1:272,5\n102#1:282,3\n102#1:286\n198#1:316,5\n198#1:326,3\n198#1:330\n220#1:360,5\n220#1:370,3\n220#1:374\n235#1:392,5\n235#1:402,3\n235#1:406\n247#1:423,5\n247#1:433,3\n247#1:437\n102#1:277,5\n102#1:287,2\n198#1:321,5\n198#1:331,2\n220#1:365,5\n220#1:375,2\n235#1:397,5\n235#1:407,2\n247#1:428,5\n247#1:438,2\n220#1:356,3\n220#1:377,5\n235#1:388,3\n235#1:409,5\n247#1:419,3\n247#1:440,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u00014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0017J\u0011\u0010\u000c\u001a\u00020\nH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ,\u0010\u000e\u001a\u0002H\u000f\"\u0004\u0008\u0000\u0010\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u0002H\u000f0\u0011\u00a2\u0006\u0002\u0008\u0013H\u0017\u00a2\u0006\u0002\u0010\u0014J@\u0010\u0015\u001a\u0002H\u000f\"\u0004\u0008\u0000\u0010\u000f2\'\u0010\u0010\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0016\u00a2\u0006\u0002\u0008\u0013H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ-\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001d2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\n0\u0011H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u0019\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J$\u0010!\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\n0\u0011H\u0016J\u0019\u0010%\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001fH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\u0019\u0010&\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J!\u0010\'\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u001dH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)J\u0010\u0010*\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001fH\u0002J\u0010\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u001fH\u0002J-\u0010-\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001d2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\n0\u0011H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u0019\u0010.\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J$\u0010.\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\n0\u0011H\u0016J\u0019\u0010/\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u001fH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\u0019\u00100\u001a\u00020\n2\u0006\u0010,\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\u0019\u00101\u001a\u00020\n2\u0006\u0010,\u001a\u00020\u001fH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J%\u00102\u001a\u00020\n2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00050\u0011H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00103R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00065"
    }
    d2 = {
        "Lio/ktor/utils/io/ByteChannelSequentialJVM;",
        "Lio/ktor/utils/io/ByteChannelSequentialBase;",
        "initial",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "autoFlush",
        "",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;Z)V",
        "attachedJob",
        "Lkotlinx/coroutines/Job;",
        "attachJob",
        "",
        "job",
        "awaitContent",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "lookAhead",
        "R",
        "visitor",
        "Lkotlin/Function1;",
        "Lio/ktor/utils/io/LookAheadSession;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "lookAheadSuspend",
        "Lkotlin/Function2;",
        "Lio/ktor/utils/io/LookAheadSuspendSession;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "read",
        "min",
        "",
        "consumer",
        "Ljava/nio/ByteBuffer;",
        "(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readAvailable",
        "dst",
        "(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "block",
        "readAvailableSuspend",
        "readFully",
        "readFullySuspend",
        "rc0",
        "(Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tryReadAvailable",
        "tryWriteAvailable",
        "src",
        "write",
        "writeAvailable",
        "writeAvailableSuspend",
        "writeFully",
        "writeFullySuspend",
        "writeWhile",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Session",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private volatile attachedJob:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;Z)V
    .locals 7
    .param p1, "initial"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "autoFlush"    # Z

    const-string v0, "initial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lio/ktor/utils/io/ByteChannelSequentialBase;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;ZLio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    return-void
.end method

.method public static final synthetic access$readAvailableSuspend(Lio/ktor/utils/io/ByteChannelSequentialJVM;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 9
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->readAvailableSuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readFullySuspend(Lio/ktor/utils/io/ByteChannelSequentialJVM;Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "rc0"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->readFullySuspend(Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setAttachedJob$p(Lio/ktor/utils/io/ByteChannelSequentialJVM;Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .param p1, "<set-?>"    # Lkotlinx/coroutines/Job;

    .line 9
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM;->attachedJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$writeAvailableSuspend(Lio/ktor/utils/io/ByteChannelSequentialJVM;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 9
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->writeAvailableSuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$writeFullySuspend(Lio/ktor/utils/io/ByteChannelSequentialJVM;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 9
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->writeFullySuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final readAvailableSuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 111
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_2

    :pswitch_1
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .local p1, "dst":Ljava/nio/ByteBuffer;
    iget-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialJVM;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 112
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    iput-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->label:I

    invoke-virtual {v2, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 111
    return-object v1

    .line 112
    :cond_1
    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, -0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 113
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$readAvailableSuspend$1;->label:I

    invoke-virtual {v2, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    if-ne p1, v1, :cond_3

    .line 111
    return-object v1

    .line 113
    :cond_3
    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readFullySuspend(Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 124
    iget v2, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->I$0:I

    .local p1, "count":I
    iget-object p2, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    .local p2, "dst":Ljava/nio/ByteBuffer;
    iget-object v2, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialJVM;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .end local p1    # "count":I
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 125
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .local p1, "dst":Ljava/nio/ByteBuffer;
    .local p2, "rc0":I
    move v3, p2

    move-object p2, p1

    move p1, v3

    .line 127
    .local p1, "count":I
    .local p2, "dst":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    iput-object v2, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->L$1:Ljava/lang/Object;

    iput p1, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->I$0:I

    const/4 v3, 0x1

    iput v3, p3, Lio/ktor/utils/io/ByteChannelSequentialJVM$readFullySuspend$1;->label:I

    invoke-virtual {v2, v3, p3}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 124
    return-object v1

    .line 128
    :cond_1
    move-object v6, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "Channel closed"

    if-eqz v0, :cond_3

    .line 129
    invoke-direct {v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->tryReadAvailable(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 130
    .local v0, "rc":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 131
    add-int/2addr p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .end local v0    # "rc":I
    goto :goto_1

    .line 130
    .restart local v0    # "rc":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v0    # "rc":I
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    :cond_4
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final tryReadAvailable(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getAvailableForRead()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, -0x1

    return v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getReadable()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->prepareFlushedBytes()V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getReadable()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    invoke-static {v0, p1}, Lio/ktor/utils/io/core/ByteBuffersKt;->readAvailable(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 149
    .local v0, "count":I
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->afterRead(I)V

    .line 150
    return v0

    .line 257
    .local v0, "it":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    .line 138
    .local v1, "$i$a$-let-ByteChannelSequentialJVM$tryReadAvailable$1":I
    throw v0
.end method

.method private final tryWriteAvailable(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 62
    .local v0, "srcRemaining":I
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getAvailableForWrite()I

    move-result v1

    .line 64
    .local v1, "availableForWrite":I
    nop

    .line 65
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v3, "Channel closed for write"

    invoke-direct {v2, v3}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    :cond_0
    throw v2

    .line 66
    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    if-gt v0, v1, :cond_3

    .line 68
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getWritable()Lio/ktor/utils/io/core/BytePacketBuilder;

    move-result-object v2

    check-cast v2, Lio/ktor/utils/io/core/Output;

    invoke-static {v2, p1}, Lio/ktor/utils/io/core/OutputArraysJVMKt;->writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V

    .line 69
    move v2, v0

    goto :goto_0

    .line 71
    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 74
    .local v2, "oldLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 75
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getWritable()Lio/ktor/utils/io/core/BytePacketBuilder;

    move-result-object v3

    check-cast v3, Lio/ktor/utils/io/core/Output;

    invoke-static {v3, p1}, Lio/ktor/utils/io/core/OutputArraysJVMKt;->writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V

    .line 76
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 77
    move v2, v1

    .line 64
    .end local v2    # "oldLimit":I
    :goto_0
    nop

    .line 81
    .local v2, "count":I
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->afterWrite(I)V

    .line 82
    return v2
.end method

.method private final writeAvailableSuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_2

    :pswitch_1
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .local p1, "src":Ljava/nio/ByteBuffer;
    iget-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialJVM;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 41
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    iput-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->label:I

    invoke-virtual {v2, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 40
    return-object v1

    .line 42
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeAvailableSuspend$1;->label:I

    invoke-virtual {v2, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->writeAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    if-ne p1, v1, :cond_2

    .line 40
    return-object v1

    .line 42
    :cond_2
    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final writeFullySuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .local p1, "src":Ljava/nio/ByteBuffer;
    iget-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialJVM;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 53
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    iput-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p2, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeFullySuspend$1;->label:I

    invoke-virtual {v2, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 52
    return-object v1

    .line 55
    :cond_1
    :goto_2
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->tryWriteAvailable(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 56
    .local v3, "count":I
    invoke-virtual {v2, v3}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->afterWrite(I)V

    .end local v3    # "count":I
    goto :goto_1

    .line 58
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public attachJob(Lkotlinx/coroutines/Job;)V
    .locals 7
    .param p1, "job"    # Lkotlinx/coroutines/Job;
    .annotation runtime Lkotlin/Deprecated;
        message = "\n    We\'re migrating to the new kotlinx-io library.\n    This declaration is deprecated and will be removed in Ktor 4.0.0\n    If you have any problems with migration, please contact us in \n    https://youtrack.jetbrains.com/issue/KTOR-6030/Migrate-to-new-kotlinx.io-library\n    "
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM;->attachedJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 22
    :cond_0
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM;->attachedJob:Lkotlinx/coroutines/Job;

    .line 23
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$attachJob$1;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM$attachJob$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    .line 29
    return-void
.end method

.method public awaitContent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 208
    return-object v0
.end method

.method public lookAhead(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "visitor"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/LookAheadSession;",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use read { } instead."
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookAheadSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "visitor"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use read { } instead."
    .end annotation

    .line 159
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;)V

    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "Buffer\'s position shouldn\'t be rewinded"

    instance-of v2, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;

    iget v3, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->label:I

    move-object v0, v2

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v4, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 193
    iget v5, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->label:I

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v0, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->I$0:I

    .local v0, "min":I
    iget-object v5, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .local v5, "consumer":Lkotlin/jvm/functions/Function1;
    iget-object v8, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteChannelSequentialJVM;

    .local v8, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v4

    goto :goto_2

    .end local v0    # "min":I
    .end local v5    # "consumer":Lkotlin/jvm/functions/Function1;
    .end local v8    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    :pswitch_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p0

    .restart local v8    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    move-object/from16 v5, p2

    .restart local v5    # "consumer":Lkotlin/jvm/functions/Function1;
    move/from16 v9, p1

    .line 194
    .local v9, "min":I
    if-ltz v9, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_b

    .line 196
    iput-object v8, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->L$1:Ljava/lang/Object;

    iput v9, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->I$0:I

    iput v7, v2, Lio/ktor/utils/io/ByteChannelSequentialJVM$read$1;->label:I

    invoke-virtual {v8, v9, v2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_2

    .line 193
    return-object v0

    .line 196
    :cond_2
    move v0, v9

    .end local v9    # "min":I
    .restart local v0    # "min":I
    :goto_2
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 198
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getReadable()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v8

    .local v8, "$this$readDirect$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v9, 0x0

    .line 302
    .local v9, "$i$f$readDirect":I
    nop

    .line 306
    check-cast v8, Lio/ktor/utils/io/core/Input;

    .local v8, "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v10, 0x0

    .line 307
    .local v10, "$i$f$read":I
    nop

    .line 311
    invoke-virtual {v8, v0}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 312
    .end local v0    # "min":I
    .local v11, "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v12

    .line 313
    .local v12, "positionBefore$iv$iv":I
    nop

    .line 314
    :try_start_0
    move-object v0, v11

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "it$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 315
    .local v13, "$i$a$-read-ByteBuffersKt$readDirect$2$iv":I
    nop

    .local v0, "$this$readDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 316
    .local v14, "$i$f$readDirect":I
    nop

    .line 320
    nop

    .local v0, "$this$read$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 321
    .local v15, "$i$f$read":I
    nop

    .line 325
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v17

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v16, "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v18, "endExclusive$iv$iv":I
    move/from16 p1, v17

    .local p1, "start$iv$iv":I
    move-object/from16 p2, v16

    .end local v16    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local p2, "memory$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 326
    .local v16, "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv$iv":I
    move/from16 v6, p1

    .end local p1    # "start$iv$iv":I
    .local v6, "start$iv$iv":I
    sub-int v7, v18, v6

    move-object/from16 v19, v2

    move-object/from16 v2, p2

    .end local p2    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v2, "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v19, "$continuation":Lkotlin/coroutines/Continuation;
    :try_start_1
    invoke-static {v2, v6, v7}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v2, v7

    .line 327
    .local v2, "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    nop

    .local v7, "bb":Ljava/nio/ByteBuffer;
    const/16 v20, 0x0

    .line 199
    .local v20, "$i$a$-readDirect-ByteChannelSequentialJVM$read$2":I
    invoke-interface {v5, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    nop

    .line 327
    .end local v5    # "consumer":Lkotlin/jvm/functions/Function1;
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    .end local v20    # "$i$a$-readDirect-ByteChannelSequentialJVM$read$2":I
    nop

    .line 328
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int v7, v18, v6

    if-ne v5, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .end local v6    # "start$iv$iv":I
    .end local v18    # "endExclusive$iv$iv":I
    :goto_3
    if-eqz v6, :cond_6

    .line 330
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 325
    .end local v2    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv$iv":I
    move v2, v5

    .line 331
    .local v2, "rc$iv$iv$iv":I
    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    nop

    .line 320
    .end local v0    # "$this$read$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "rc$iv$iv$iv":I
    .end local v15    # "$i$f$read":I
    nop

    .line 333
    .end local v14    # "$i$f$readDirect":I
    nop

    .line 314
    .end local v13    # "$i$a$-read-ByteBuffersKt$readDirect$2$iv":I
    nop

    .line 334
    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0

    .line 335
    .local v0, "positionAfter$iv$iv":I
    if-lt v0, v12, :cond_5

    .line 338
    .end local v12    # "positionBefore$iv$iv":I
    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 339
    invoke-virtual {v8, v11}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_4

    .line 341
    .end local v11    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_4
    invoke-virtual {v8, v0}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 343
    .end local v0    # "positionAfter$iv$iv":I
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    :goto_4
    nop

    .line 344
    nop

    .line 345
    .end local v10    # "$i$f$read":I
    nop

    .line 201
    .end local v9    # "$i$f$readDirect":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 336
    .restart local v0    # "positionAfter$iv$iv":I
    .restart local v9    # "$i$f$readDirect":I
    .restart local v10    # "$i$f$read":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    .local v0, "$this$read$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .local v2, "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v11    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v12    # "positionBefore$iv$iv":I
    .restart local v13    # "$i$a$-read-ByteBuffersKt$readDirect$2$iv":I
    .restart local v14    # "$i$f$readDirect":I
    .restart local v15    # "$i$f$read":I
    .restart local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv$iv":I
    :cond_6
    const/4 v5, 0x0

    .line 328
    .local v5, "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv$iv":I
    :try_start_2
    const-string v6, "Buffer\'s limit change is not allowed"

    .end local v5    # "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv$iv":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "$i$f$readDirect":I
    .end local v10    # "$i$f$read":I
    .end local v11    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "positionBefore$iv$iv":I
    .end local v19    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    .end local v0    # "$this$read$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v13    # "$i$a$-read-ByteBuffersKt$readDirect$2$iv":I
    .end local v14    # "$i$f$readDirect":I
    .end local v15    # "$i$f$read":I
    .end local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv$iv":I
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v9    # "$i$f$readDirect":I
    .restart local v10    # "$i$f$read":I
    .restart local v11    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v12    # "positionBefore$iv$iv":I
    .restart local v19    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v19    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v19    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_5
    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v2

    .line 335
    .local v2, "positionAfter$iv$iv":I
    if-lt v2, v12, :cond_8

    .line 338
    .end local v12    # "positionBefore$iv$iv":I
    invoke-virtual {v11}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v1

    if-ne v2, v1, :cond_7

    .line 339
    invoke-virtual {v8, v11}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_6

    .line 341
    .end local v11    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_7
    invoke-virtual {v8, v2}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .end local v2    # "positionAfter$iv$iv":I
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    :goto_6
    throw v0

    .line 336
    .restart local v2    # "positionAfter$iv$iv":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    .end local v19    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "min":I
    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :cond_9
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 196
    .end local v9    # "$i$f$readDirect":I
    .end local v10    # "$i$f$read":I
    .local v5, "consumer":Lkotlin/jvm/functions/Function1;
    .local v8, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    :cond_a
    move-object/from16 v19, v2

    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v19    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel closed while "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " bytes expected"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .end local v0    # "min":I
    .end local v19    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v9, "min":I
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readAvailable(ILkotlin/jvm/functions/Function1;)I
    .locals 24
    .param p1, "min"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Buffer\'s position shouldn\'t be rewinded"

    const-string v0, "block"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    .line 95
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getAvailableForRead()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 96
    const/4 v0, -0x1

    return v0

    .line 99
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->prepareFlushedBytes()V

    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, "result":I
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getReadable()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v5

    .local v5, "$this$readDirect$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v6, 0x0

    .line 258
    .local v6, "$i$f$readDirect":I
    nop

    .line 262
    move-object v7, v5

    check-cast v7, Lio/ktor/utils/io/core/Input;

    .local v7, "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x0

    .line 263
    .local v8, "$i$f$read":I
    nop

    .line 267
    invoke-virtual {v7, v1}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v9, v0

    .line 268
    .local v9, "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v9}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v10

    .line 269
    .local v10, "positionBefore$iv$iv":I
    nop

    .line 270
    :try_start_0
    move-object v0, v9

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "it$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 271
    .local v11, "$i$a$-read-ByteBuffersKt$readDirect$2$iv":I
    move-object v12, v0

    .local v12, "$this$readDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 272
    .local v13, "$i$f$readDirect":I
    nop

    .line 276
    move-object v14, v12

    .local v14, "$this$read$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 277
    .local v15, "$i$f$read":I
    nop

    .line 281
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v17

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .local v16, "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v18, "endExclusive$iv$iv":I
    move/from16 v19, v17

    .local v19, "start$iv$iv":I
    move-object/from16 v17, v16

    .end local v16    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v17, "memory$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 282
    .local v16, "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv$iv":I
    move-object/from16 v20, v0

    move/from16 v0, v19

    .end local v19    # "start$iv$iv":I
    .local v0, "start$iv$iv":I
    .local v20, "it$iv":Lio/ktor/utils/io/core/Buffer;
    sub-int v1, v18, v0

    move/from16 v19, v4

    move-object/from16 v4, v17

    .end local v17    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v4, "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v19, "result":I
    :try_start_1
    invoke-static {v4, v0, v1}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 283
    .local v1, "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    move-object/from16 v17, v1

    .local v17, "it":Ljava/nio/ByteBuffer;
    const/16 v21, 0x0

    .line 103
    .local v21, "$i$a$-readDirect-ByteChannelSequentialJVM$readAvailable$3":I
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    .line 104
    .local v22, "position":I
    move-object/from16 v23, v4

    move-object/from16 v4, v17

    .end local v17    # "it":Ljava/nio/ByteBuffer;
    .local v4, "it":Ljava/nio/ByteBuffer;
    .local v23, "memory$iv$iv":Ljava/nio/ByteBuffer;
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-int v17, v17, v22

    .line 106
    .end local v19    # "result":I
    .local v17, "result":I
    nop

    .line 283
    .end local v4    # "it":Ljava/nio/ByteBuffer;
    .end local v21    # "$i$a$-readDirect-ByteChannelSequentialJVM$readAvailable$3":I
    .end local v22    # "position":I
    nop

    .line 284
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int v2, v18, v0

    if-ne v4, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 286
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 281
    .end local v0    # "start$iv$iv":I
    .end local v1    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv$iv":I
    .end local v18    # "endExclusive$iv$iv":I
    .end local v23    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    move v0, v2

    .line 287
    .local v0, "rc$iv$iv$iv":I
    invoke-virtual {v14, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    nop

    .line 276
    .end local v0    # "rc$iv$iv$iv":I
    .end local v14    # "$this$read$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$read":I
    nop

    .line 289
    .end local v12    # "$this$readDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$readDirect":I
    nop

    .line 270
    .end local v11    # "$i$a$-read-ByteBuffersKt$readDirect$2$iv":I
    .end local v20    # "it$iv":Lio/ktor/utils/io/core/Buffer;
    nop

    .line 290
    invoke-virtual {v9}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0

    .line 291
    .local v0, "positionAfter$iv$iv":I
    if-lt v0, v10, :cond_3

    .line 294
    invoke-virtual {v9}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 295
    invoke-virtual {v7, v9}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {v7, v0}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 299
    .end local v0    # "positionAfter$iv$iv":I
    :goto_1
    nop

    .line 300
    nop

    .line 301
    .end local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "$i$f$read":I
    .end local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v10    # "positionBefore$iv$iv":I
    nop

    .line 108
    .end local v5    # "$this$readDirect$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v6    # "$i$f$readDirect":I
    return v17

    .line 292
    .restart local v0    # "positionAfter$iv$iv":I
    .restart local v5    # "$this$readDirect$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .restart local v6    # "$i$f$readDirect":I
    .restart local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "$i$f$read":I
    .restart local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "positionBefore$iv$iv":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    .local v0, "start$iv$iv":I
    .restart local v1    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v11    # "$i$a$-read-ByteBuffersKt$readDirect$2$iv":I
    .restart local v12    # "$this$readDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$f$readDirect":I
    .restart local v14    # "$this$read$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v15    # "$i$f$read":I
    .restart local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv$iv":I
    .restart local v18    # "endExclusive$iv$iv":I
    .restart local v20    # "it$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v23    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    :cond_4
    const/4 v2, 0x0

    .line 284
    .local v2, "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv$iv":I
    :try_start_3
    const-string v4, "Buffer\'s limit change is not allowed"

    .end local v2    # "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1$iv$iv":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "$this$readDirect$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v6    # "$i$f$readDirect":I
    .end local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "$i$f$read":I
    .end local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v10    # "positionBefore$iv$iv":I
    .end local v17    # "result":I
    .end local p1    # "min":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    .end local v0    # "start$iv$iv":I
    .end local v1    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "$i$a$-read-ByteBuffersKt$readDirect$2$iv":I
    .end local v12    # "$this$readDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$readDirect":I
    .end local v14    # "$this$read$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$read":I
    .end local v16    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2$iv$iv":I
    .end local v18    # "endExclusive$iv$iv":I
    .end local v20    # "it$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v23    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v5    # "$this$readDirect$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .restart local v6    # "$i$f$readDirect":I
    .restart local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "$i$f$read":I
    .restart local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "positionBefore$iv$iv":I
    .restart local v17    # "result":I
    .restart local p1    # "min":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v0

    move/from16 v4, v17

    goto :goto_2

    .end local v17    # "result":I
    .restart local v19    # "result":I
    :catchall_1
    move-exception v0

    move/from16 v4, v19

    goto :goto_2

    .end local v19    # "result":I
    .local v4, "result":I
    :catchall_2
    move-exception v0

    move/from16 v19, v4

    :goto_2
    invoke-virtual {v9}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v1

    .line 291
    .local v1, "positionAfter$iv$iv":I
    if-lt v1, v10, :cond_6

    .line 294
    invoke-virtual {v9}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 295
    invoke-virtual {v7, v9}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_3

    .line 297
    :cond_5
    invoke-virtual {v7, v1}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .end local v1    # "positionAfter$iv$iv":I
    :goto_3
    throw v0

    .line 292
    .restart local v1    # "positionAfter$iv$iv":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    .end local v1    # "positionAfter$iv$iv":I
    .end local v9    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v10    # "positionBefore$iv$iv":I
    :cond_7
    invoke-static/range {p1 .. p1}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 257
    .end local v4    # "result":I
    .end local v5    # "$this$readDirect$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v6    # "$i$f$readDirect":I
    .end local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "$i$f$read":I
    .local v0, "it":Ljava/lang/Throwable;
    :cond_8
    const/4 v1, 0x0

    .line 93
    .local v1, "$i$a$-let-ByteChannelSequentialJVM$readAvailable$2":I
    throw v0
.end method

.method public readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->tryReadAvailable(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 87
    .local v0, "rc":I
    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 89
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->readAvailableSuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->tryReadAvailable(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 118
    .local v0, "rc":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 119
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->readFullySuspend(Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 118
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Channel closed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;

    iget v2, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 229
    iget v4, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->label:I

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v0, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->I$0:I

    .local v0, "min":I
    iget-object v4, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "block":Lkotlin/jvm/functions/Function1;
    iget-object v6, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteChannelSequentialJVM;

    .local v6, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "min":I
    .end local v4    # "block":Lkotlin/jvm/functions/Function1;
    .end local v6    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p0

    .restart local v6    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    move-object/from16 v4, p2

    .restart local v4    # "block":Lkotlin/jvm/functions/Function1;
    move/from16 v7, p1

    .line 230
    .local v7, "min":I
    invoke-virtual {v6}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosed()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 231
    .end local v4    # "block":Lkotlin/jvm/functions/Function1;
    .end local v7    # "min":I
    invoke-virtual {v6}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    .end local v6    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    if-nez v0, :cond_1

    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v4, "Channel closed for write"

    invoke-direct {v0, v4}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :cond_1
    throw v0

    .line 234
    .restart local v4    # "block":Lkotlin/jvm/functions/Function1;
    .restart local v6    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .restart local v7    # "min":I
    :cond_2
    iput-object v6, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->L$1:Ljava/lang/Object;

    iput v7, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->I$0:I

    iput v5, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$write$1;->label:I

    invoke-virtual {v6, v7, v1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_3

    .line 229
    return-object v0

    .line 234
    :cond_3
    move v0, v7

    .line 235
    .end local v7    # "min":I
    .restart local v0    # "min":I
    :goto_1
    invoke-virtual {v6}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getWritable()Lio/ktor/utils/io/core/BytePacketBuilder;

    move-result-object v7

    .local v7, "$this$writeByteBufferDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v8, 0x0

    .line 383
    .local v8, "$i$f$writeByteBufferDirect":I
    nop

    .line 387
    check-cast v7, Lio/ktor/utils/io/core/Output;

    .local v7, "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v9, 0x0

    .line 388
    .local v9, "$i$f$write":I
    invoke-virtual {v7, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v10

    .line 389
    .end local v0    # "min":I
    .local v10, "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 390
    :try_start_0
    move-object v0, v10

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .end local v10    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "it$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 391
    .local v10, "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    nop

    .local v0, "$this$writeDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 392
    .local v11, "$i$f$writeDirect":I
    nop

    .line 396
    nop

    .local v0, "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 397
    .local v12, "$i$f$write":I
    nop

    .line 401
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v14

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    .local v13, "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v14, "start$iv$iv":I
    .local v15, "endExclusive$iv$iv":I
    const/16 v16, 0x0

    .line 402
    .local v16, "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    sub-int v5, v15, v14

    invoke-static {v13, v14, v5}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 403
    .end local v13    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v5, "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    move-object v13, v5

    .local v13, "it":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    .line 235
    .local v17, "$i$a$-writeByteBufferDirect-ByteChannelSequentialJVM$write$count$1":I
    invoke-interface {v4, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    nop

    .line 404
    .end local v4    # "block":Lkotlin/jvm/functions/Function1;
    .end local v13    # "it":Ljava/nio/ByteBuffer;
    .end local v17    # "$i$a$-writeByteBufferDirect-ByteChannelSequentialJVM$write$count$1":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int v13, v15, v14

    const/16 v17, 0x0

    if-ne v4, v13, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move/from16 v4, v17

    .end local v14    # "start$iv$iv":I
    .end local v15    # "endExclusive$iv$iv":I
    :goto_2
    if-eqz v4, :cond_7

    .line 406
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 401
    .end local v5    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    nop

    .line 407
    .local v4, "rc$iv$iv$iv":I
    invoke-virtual {v0, v4}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    nop

    .line 396
    .end local v0    # "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "rc$iv$iv$iv":I
    .end local v12    # "$i$f$write":I
    nop

    .line 391
    .end local v11    # "$i$f$writeDirect":I
    nop

    .line 390
    .end local v10    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    move v0, v4

    .line 409
    .local v0, "result$iv$iv":I
    if-ltz v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move/from16 v5, v17

    :goto_3
    if-eqz v5, :cond_6

    .line 411
    nop

    .line 413
    .end local v0    # "result$iv$iv":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 411
    .end local v7    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    nop

    .line 387
    .end local v9    # "$i$f$write":I
    nop

    .line 235
    .end local v8    # "$i$f$writeByteBufferDirect":I
    nop

    .line 236
    .local v0, "count":I
    invoke-virtual {v6, v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->afterWrite(I)V

    .line 237
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 405
    .end local v6    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .local v0, "result$iv$iv":I
    .restart local v7    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeByteBufferDirect":I
    .restart local v9    # "$i$f$write":I
    :cond_6
    const/4 v4, 0x0

    .line 409
    .local v4, "$i$a$-check-Output$write$1$iv$iv":I
    :try_start_1
    const-string v5, "The returned value shouldn\'t be negative"

    .end local v4    # "$i$a$-check-Output$write$1$iv$iv":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v7    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeByteBufferDirect":I
    .end local v9    # "$i$f$write":I
    throw v4

    .line 405
    .local v0, "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v5    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v7    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeByteBufferDirect":I
    .restart local v9    # "$i$f$write":I
    .restart local v10    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    .restart local v11    # "$i$f$writeDirect":I
    .restart local v12    # "$i$f$write":I
    .restart local v16    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    :cond_7
    const/4 v4, 0x0

    .line 404
    .local v4, "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv$iv":I
    const-string v6, "Buffer\'s limit change is not allowed"

    .end local v4    # "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv$iv":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v7    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v8    # "$i$f$writeByteBufferDirect":I
    .end local v9    # "$i$f$write":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .end local v0    # "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    .end local v11    # "$i$f$writeDirect":I
    .end local v12    # "$i$f$write":I
    .end local v16    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v7    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v8    # "$i$f$writeByteBufferDirect":I
    .restart local v9    # "$i$f$write":I
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeAvailable(ILkotlin/jvm/functions/Function1;)I
    .locals 24
    .param p1, "min"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "block"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v3, "Channel closed for write"

    invoke-direct {v0, v3}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :cond_0
    throw v0

    .line 215
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getAvailableForWrite()I

    move-result v0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    .line 216
    return v3

    .line 219
    :cond_2
    const/4 v4, 0x0

    .line 220
    .local v4, "result":I
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getWritable()Lio/ktor/utils/io/core/BytePacketBuilder;

    move-result-object v5

    .local v5, "$this$writeDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v6, 0x0

    .line 346
    .local v6, "$i$f$writeDirect":I
    nop

    .line 350
    move-object v7, v5

    .local v7, "$this$writeByteBufferDirect$iv$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v8, 0x0

    .line 351
    .local v8, "$i$f$writeByteBufferDirect":I
    nop

    .line 355
    move-object v9, v7

    check-cast v9, Lio/ktor/utils/io/core/Output;

    .local v9, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v10, 0x0

    .line 356
    .local v10, "$i$f$write":I
    invoke-virtual {v9, v1}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    .line 357
    .local v11, "buffer$iv$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 358
    :try_start_0
    move-object v0, v11

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "it$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 359
    .local v12, "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv$iv":I
    move-object v13, v0

    .local v13, "$this$writeDirect$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 360
    .local v14, "$i$f$writeDirect":I
    nop

    .line 364
    move-object v15, v13

    .local v15, "$this$write$iv$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 365
    .local v16, "$i$f$write":I
    nop

    .line 369
    invoke-virtual {v15}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual {v15}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v18

    invoke-virtual {v15}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v19

    .local v17, "memory$iv$iv$iv":Ljava/nio/ByteBuffer;
    .local v19, "endExclusive$iv$iv$iv":I
    move-object/from16 v20, v17

    .end local v17    # "memory$iv$iv$iv":Ljava/nio/ByteBuffer;
    .local v20, "memory$iv$iv$iv":Ljava/nio/ByteBuffer;
    move/from16 v17, v18

    .local v17, "start$iv$iv$iv":I
    const/16 v18, 0x0

    .line 370
    .local v18, "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv$iv":I
    move/from16 v3, v17

    move-object/from16 v17, v0

    .end local v0    # "it$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .local v3, "start$iv$iv$iv":I
    .local v17, "it$iv$iv":Lio/ktor/utils/io/core/Buffer;
    sub-int v0, v19, v3

    move-object/from16 v1, v20

    .end local v20    # "memory$iv$iv$iv":Ljava/nio/ByteBuffer;
    .local v1, "memory$iv$iv$iv":Ljava/nio/ByteBuffer;
    invoke-static {v1, v3, v0}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 371
    .local v0, "nioBuffer$iv$iv$iv":Ljava/nio/ByteBuffer;
    move-object/from16 v20, v0

    .local v20, "it":Ljava/nio/ByteBuffer;
    const/16 v21, 0x0

    .line 221
    .local v21, "$i$a$-writeDirect-ByteChannelSequentialJVM$writeAvailable$2":I
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    .line 222
    .local v22, "position":I
    move-object/from16 v23, v1

    move-object/from16 v1, v20

    .end local v20    # "it":Ljava/nio/ByteBuffer;
    .local v1, "it":Ljava/nio/ByteBuffer;
    .local v23, "memory$iv$iv$iv":Ljava/nio/ByteBuffer;
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    sub-int v4, v20, v22

    .line 224
    nop

    .line 371
    .end local v1    # "it":Ljava/nio/ByteBuffer;
    .end local v21    # "$i$a$-writeDirect-ByteChannelSequentialJVM$writeAvailable$2":I
    .end local v22    # "position":I
    nop

    .line 372
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v19, v3

    const/16 v20, 0x1

    if-ne v1, v2, :cond_3

    move/from16 v1, v20

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 374
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 369
    .end local v0    # "nioBuffer$iv$iv$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "start$iv$iv$iv":I
    .end local v18    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv$iv":I
    .end local v19    # "endExclusive$iv$iv$iv":I
    .end local v23    # "memory$iv$iv$iv":Ljava/nio/ByteBuffer;
    move v0, v1

    .line 375
    .local v0, "rc$iv$iv$iv$iv":I
    invoke-virtual {v15, v0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    nop

    .line 364
    .end local v0    # "rc$iv$iv$iv$iv":I
    .end local v15    # "$this$write$iv$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$write":I
    nop

    .line 359
    .end local v13    # "$this$writeDirect$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$writeDirect":I
    nop

    .line 358
    .end local v12    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv$iv":I
    .end local v17    # "it$iv$iv":Lio/ktor/utils/io/core/Buffer;
    nop

    .line 377
    .local v0, "result$iv$iv$iv":I
    if-ltz v0, :cond_4

    move/from16 v3, v20

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 379
    nop

    .line 381
    .end local v0    # "result$iv$iv$iv":I
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 379
    .restart local v0    # "result$iv$iv$iv":I
    nop

    .line 355
    .end local v0    # "result$iv$iv$iv":I
    .end local v9    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v10    # "$i$f$write":I
    .end local v11    # "buffer$iv$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 382
    .end local v7    # "$this$writeByteBufferDirect$iv$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v8    # "$i$f$writeByteBufferDirect":I
    nop

    .line 226
    .end local v5    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v6    # "$i$f$writeDirect":I
    return v4

    .line 373
    .restart local v0    # "result$iv$iv$iv":I
    .restart local v5    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v6    # "$i$f$writeDirect":I
    .restart local v7    # "$this$writeByteBufferDirect$iv$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v8    # "$i$f$writeByteBufferDirect":I
    .restart local v9    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v10    # "$i$f$write":I
    .restart local v11    # "buffer$iv$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_5
    const/4 v1, 0x0

    .line 377
    .local v1, "$i$a$-check-Output$write$1$iv$iv$iv":I
    :try_start_1
    const-string v2, "The returned value shouldn\'t be negative"

    .end local v1    # "$i$a$-check-Output$write$1$iv$iv$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "result":I
    .end local v5    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v6    # "$i$f$writeDirect":I
    .end local v7    # "$this$writeByteBufferDirect$iv$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v8    # "$i$f$writeByteBufferDirect":I
    .end local v9    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v10    # "$i$f$write":I
    .end local v11    # "buffer$iv$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p1    # "min":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v1

    .line 373
    .local v0, "nioBuffer$iv$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v3    # "start$iv$iv$iv":I
    .restart local v4    # "result":I
    .restart local v5    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v6    # "$i$f$writeDirect":I
    .restart local v7    # "$this$writeByteBufferDirect$iv$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v8    # "$i$f$writeByteBufferDirect":I
    .restart local v9    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v10    # "$i$f$write":I
    .restart local v11    # "buffer$iv$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v12    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv$iv":I
    .restart local v13    # "$this$writeDirect$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v14    # "$i$f$writeDirect":I
    .restart local v15    # "$this$write$iv$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v16    # "$i$f$write":I
    .restart local v17    # "it$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v18    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv$iv":I
    .restart local v19    # "endExclusive$iv$iv$iv":I
    .restart local v23    # "memory$iv$iv$iv":Ljava/nio/ByteBuffer;
    .restart local p1    # "min":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :cond_6
    const/4 v1, 0x0

    .line 372
    .local v1, "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv$iv$iv":I
    const-string v2, "Buffer\'s limit change is not allowed"

    .end local v1    # "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv$iv$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "result":I
    .end local v5    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v6    # "$i$f$writeDirect":I
    .end local v7    # "$this$writeByteBufferDirect$iv$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v8    # "$i$f$writeByteBufferDirect":I
    .end local v9    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v10    # "$i$f$write":I
    .end local v11    # "buffer$iv$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p1    # "min":I
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .end local v0    # "nioBuffer$iv$iv$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "start$iv$iv$iv":I
    .end local v12    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv$iv":I
    .end local v13    # "$this$writeDirect$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$writeDirect":I
    .end local v15    # "$this$write$iv$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$write":I
    .end local v17    # "it$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv$iv":I
    .end local v19    # "endExclusive$iv$iv$iv":I
    .end local v23    # "memory$iv$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v4    # "result":I
    .restart local v5    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v6    # "$i$f$writeDirect":I
    .restart local v7    # "$this$writeByteBufferDirect$iv$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v8    # "$i$f$writeByteBufferDirect":I
    .restart local v9    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v10    # "$i$f$write":I
    .restart local v11    # "buffer$iv$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p1    # "min":I
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public writeAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->tryWriteAvailable(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 33
    .local v0, "count":I
    nop

    .line 34
    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 33
    return-object v1

    .line 36
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->writeAvailableSuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    return-object v1
.end method

.method public writeFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->tryWriteAvailable(Ljava/nio/ByteBuffer;)I

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 49
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->writeFullySuspend(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    return-object v0
.end method

.method public writeWhile(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;

    iget v2, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 239
    iget v4, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->label:I

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v4, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v4, "shouldContinue":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v6, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .local v6, "block":Lkotlin/jvm/functions/Function1;
    iget-object v7, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteChannelSequentialJVM;

    .local v7, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v21, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v3, v21

    goto :goto_2

    .end local v4    # "shouldContinue":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v6    # "block":Lkotlin/jvm/functions/Function1;
    .end local v7    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    move-object/from16 v6, p1

    move-object v7, v4

    .line 240
    .end local v4    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .restart local v6    # "block":Lkotlin/jvm/functions/Function1;
    .restart local v7    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    :goto_1
    nop

    .line 241
    invoke-virtual {v7}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    .end local v6    # "block":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v7}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v3

    .end local v7    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    if-nez v3, :cond_1

    new-instance v3, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v4, "Channel closed for write"

    invoke-direct {v3, v4}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    :cond_1
    throw v3

    .line 245
    .restart local v6    # "block":Lkotlin/jvm/functions/Function1;
    .restart local v7    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    :cond_2
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 246
    .local v4, "shouldContinue":Lkotlin/jvm/internal/Ref$BooleanRef;
    iput-object v7, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lio/ktor/utils/io/ByteChannelSequentialJVM$writeWhile$1;->label:I

    invoke-virtual {v7, v5, v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_3

    .line 239
    return-object v3

    .line 246
    :cond_3
    move-object/from16 v21, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v3, v21

    .line 247
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$result":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v7}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getWritable()Lio/ktor/utils/io/core/BytePacketBuilder;

    move-result-object v8

    .local v8, "$this$writeByteBufferDirect$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v9, 0x1

    .local v9, "size$iv":I
    const/4 v10, 0x0

    .line 414
    .local v10, "$i$f$writeByteBufferDirect":I
    nop

    .line 418
    check-cast v8, Lio/ktor/utils/io/core/Output;

    .local v8, "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    const/4 v11, 0x0

    .line 419
    .local v11, "$i$f$write":I
    invoke-virtual {v8, v9}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v12

    .line 420
    .end local v9    # "size$iv":I
    .local v12, "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 421
    :try_start_0
    move-object v9, v12

    check-cast v9, Lio/ktor/utils/io/core/Buffer;

    .end local v12    # "buffer$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v9, "it$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 422
    .local v12, "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    nop

    .local v9, "$this$writeDirect$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 423
    .local v13, "$i$f$writeDirect":I
    nop

    .line 427
    nop

    .local v9, "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 428
    .local v14, "$i$f$write":I
    nop

    .line 432
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v17

    .local v15, "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v17, "endExclusive$iv$iv":I
    move/from16 p1, v16

    .local p1, "start$iv$iv":I
    const/16 v16, 0x0

    .line 433
    .local v16, "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    move/from16 v5, p1

    move-object/from16 p1, v0

    .end local p1    # "start$iv$iv":I
    .local v5, "start$iv$iv":I
    sub-int v0, v17, v5

    invoke-static {v15, v5, v0}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 434
    .end local v15    # "memory$iv$iv":Ljava/nio/ByteBuffer;
    .local v0, "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    move-object v15, v0

    .local v15, "it":Ljava/nio/ByteBuffer;
    const/16 v18, 0x0

    .line 248
    .local v18, "$i$a$-writeByteBufferDirect-ByteChannelSequentialJVM$writeWhile$result$1":I
    invoke-interface {v6, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v1

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v20, "$continuation":Lkotlin/coroutines/Continuation;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 249
    nop

    .line 434
    .end local v15    # "it":Ljava/nio/ByteBuffer;
    .end local v18    # "$i$a$-writeByteBufferDirect-ByteChannelSequentialJVM$writeWhile$result$1":I
    nop

    .line 435
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v15, v17, v5

    const/16 v18, 0x0

    if-ne v1, v15, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    move/from16 v1, v18

    .end local v5    # "start$iv$iv":I
    .end local v17    # "endExclusive$iv$iv":I
    :goto_3
    if-eqz v1, :cond_8

    .line 437
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 432
    .end local v0    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    move v0, v1

    .line 438
    .local v0, "rc$iv$iv$iv":I
    invoke-virtual {v9, v0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    nop

    .line 427
    .end local v0    # "rc$iv$iv$iv":I
    .end local v9    # "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$write":I
    nop

    .line 422
    .end local v13    # "$i$f$writeDirect":I
    nop

    .line 421
    .end local v12    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    nop

    .line 440
    .local v0, "result$iv$iv":I
    if-ltz v0, :cond_5

    const/16 v18, 0x1

    :cond_5
    if-eqz v18, :cond_7

    .line 442
    nop

    .line 444
    .end local v0    # "result$iv$iv":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 442
    .end local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    nop

    .line 418
    .end local v11    # "$i$f$write":I
    nop

    .line 247
    .end local v10    # "$i$f$writeByteBufferDirect":I
    nop

    .line 251
    .local v0, "result":I
    invoke-virtual {v7, v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->afterWrite(I)V

    .line 252
    iget-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_6

    .line 254
    .end local v0    # "result":I
    .end local v4    # "shouldContinue":Lkotlin/jvm/internal/Ref$BooleanRef;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 252
    .restart local v0    # "result":I
    .restart local v4    # "shouldContinue":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_6
    move-object v1, v3

    move-object/from16 v0, v20

    const/4 v5, 0x1

    move-object/from16 v3, p1

    goto/16 :goto_1

    .line 436
    .end local v4    # "shouldContinue":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v6    # "block":Lkotlin/jvm/functions/Function1;
    .end local v7    # "this":Lio/ktor/utils/io/ByteChannelSequentialJVM;
    .local v0, "result$iv$iv":I
    .restart local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v10    # "$i$f$writeByteBufferDirect":I
    .restart local v11    # "$i$f$write":I
    :cond_7
    const/4 v1, 0x0

    .line 440
    .local v1, "$i$a$-check-Output$write$1$iv$iv":I
    :try_start_2
    const-string v4, "The returned value shouldn\'t be negative"

    .end local v1    # "$i$a$-check-Output$write$1$iv$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v10    # "$i$f$writeByteBufferDirect":I
    .end local v11    # "$i$f$write":I
    .end local v20    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v1

    .line 436
    .local v0, "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v9    # "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v10    # "$i$f$writeByteBufferDirect":I
    .restart local v11    # "$i$f$write":I
    .restart local v12    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    .restart local v13    # "$i$f$writeDirect":I
    .restart local v14    # "$i$f$write":I
    .restart local v16    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    .restart local v20    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_8
    const/4 v1, 0x0

    .line 435
    .local v1, "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv$iv":I
    const-string v4, "Buffer\'s limit change is not allowed"

    .end local v1    # "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1$iv$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .end local v10    # "$i$f$writeByteBufferDirect":I
    .end local v11    # "$i$f$write":I
    .end local v20    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    .end local v0    # "nioBuffer$iv$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "$this$write$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-write-ByteBuffersKt$writeByteBufferDirect$2$iv":I
    .end local v13    # "$i$f$writeDirect":I
    .end local v14    # "$i$f$write":I
    .end local v16    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3$iv$iv":I
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "this_$iv$iv":Lio/ktor/utils/io/core/Output;
    .restart local v10    # "$i$f$writeByteBufferDirect":I
    .restart local v11    # "$i$f$write":I
    .restart local v20    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v20    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v1

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v20    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_4
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
