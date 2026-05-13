.class public final Lio/ktor/http/cio/CIOMultipartDataBase;
.super Ljava/lang/Object;
.source "CIOMultipartDataBase.kt"

# interfaces
.implements Lio/ktor/http/content/MultiPartData;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIOMultipartDataBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIOMultipartDataBase.kt\nio/ktor/http/cio/CIOMultipartDataBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,221:1\n1#2:222\n*E\n"
.end annotation

.annotation runtime Lio/ktor/util/InternalAPI;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B;\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u000eJ\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0013H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u0015H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ)\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J \u0010%\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lio/ktor/http/cio/CIOMultipartDataBase;",
        "Lio/ktor/http/content/MultiPartData;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "channel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "contentType",
        "",
        "contentLength",
        "",
        "formFieldLimit",
        "",
        "inMemoryFileUploadLimit",
        "(Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;II)V",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "events",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "Lio/ktor/http/cio/MultipartEvent;",
        "eventToData",
        "Lio/ktor/http/content/PartData;",
        "event",
        "(Lio/ktor/http/cio/MultipartEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "partToData",
        "part",
        "Lio/ktor/http/cio/MultipartEvent$MultipartPart;",
        "(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readPart",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readPartSuspend",
        "withTempFile",
        "headers",
        "Lio/ktor/http/cio/HttpHeadersMap;",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lio/ktor/http/cio/HttpHeadersMap;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withoutTempFile",
        "ktor-http-cio"
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
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final events:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/http/cio/MultipartEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final formFieldLimit:I

.field private final inMemoryFileUploadLimit:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;II)V
    .locals 1
    .param p1, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "channel"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p3, "contentType"    # Ljava/lang/CharSequence;
    .param p4, "contentLength"    # Ljava/lang/Long;
    .param p5, "formFieldLimit"    # I
    .param p6, "inMemoryFileUploadLimit"    # I

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/ktor/http/cio/CIOMultipartDataBase;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 31
    iput p5, p0, Lio/ktor/http/cio/CIOMultipartDataBase;->formFieldLimit:I

    .line 32
    iput p6, p0, Lio/ktor/http/cio/CIOMultipartDataBase;->inMemoryFileUploadLimit:I

    .line 34
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, p2, p3, p4}, Lio/ktor/http/cio/MultipartKt;->parseMultipart(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/http/cio/CIOMultipartDataBase;->events:Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 26
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 26
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    .line 31
    const/high16 p5, 0x10000

    move v5, p5

    goto :goto_0

    .line 26
    :cond_0
    move v5, p5

    :goto_0
    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    .line 32
    move v6, v5

    goto :goto_1

    .line 26
    :cond_1
    move v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lio/ktor/http/cio/CIOMultipartDataBase;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;II)V

    .line 178
    return-void
.end method

.method public static final synthetic access$eventToData(Lio/ktor/http/cio/CIOMultipartDataBase;Lio/ktor/http/cio/MultipartEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/CIOMultipartDataBase;
    .param p1, "event"    # Lio/ktor/http/cio/MultipartEvent;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2}, Lio/ktor/http/cio/CIOMultipartDataBase;->eventToData(Lio/ktor/http/cio/MultipartEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$partToData(Lio/ktor/http/cio/CIOMultipartDataBase;Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/CIOMultipartDataBase;
    .param p1, "part"    # Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2}, Lio/ktor/http/cio/CIOMultipartDataBase;->partToData(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readPartSuspend(Lio/ktor/http/cio/CIOMultipartDataBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/CIOMultipartDataBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1}, Lio/ktor/http/cio/CIOMultipartDataBase;->readPartSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$withTempFile(Lio/ktor/http/cio/CIOMultipartDataBase;Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lio/ktor/http/cio/HttpHeadersMap;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/CIOMultipartDataBase;
    .param p1, "part"    # Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .param p2, "headers"    # Lio/ktor/http/cio/HttpHeadersMap;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/http/cio/CIOMultipartDataBase;->withTempFile(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lio/ktor/http/cio/HttpHeadersMap;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final eventToData(Lio/ktor/http/cio/MultipartEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/cio/MultipartEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/PartData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;

    iget v1, v0, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;-><init>(Lio/ktor/http/cio/CIOMultipartDataBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, p2, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;->label:I

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
    iget-object p1, p2, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/cio/MultipartEvent;

    .local p1, "event":Lio/ktor/http/cio/MultipartEvent;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    goto :goto_1

    .end local p1    # "event":Lio/ktor/http/cio/MultipartEvent;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 57
    .local v2, "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    .restart local p1    # "event":Lio/ktor/http/cio/MultipartEvent;
    nop

    .line 58
    nop

    .line 59
    :try_start_1
    instance-of v3, p1, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    iput-object p1, p2, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p2, Lio/ktor/http/cio/CIOMultipartDataBase$eventToData$1;->label:I

    invoke-direct {v2, v3, p2}, Lio/ktor/http/cio/CIOMultipartDataBase;->partToData(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    if-ne v3, v1, :cond_1

    .line 56
    return-object v1

    .line 59
    :cond_1
    :goto_1
    check-cast v3, Lio/ktor/http/content/PartData;

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p1}, Lio/ktor/http/cio/MultipartEvent;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    const/4 v3, 0x0

    :goto_2
    nop

    .line 57
    return-object v3

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lio/ktor/http/cio/MultipartEvent;->release()V

    .line 67
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final partToData(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/cio/MultipartEvent$MultipartPart;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/PartData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;

    iget v2, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;-><init>(Lio/ktor/http/cio/CIOMultipartDataBase;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 71
    iget v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "buffer"

    const/4 v8, 0x0

    const/4 v9, 0x0

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
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    goto/16 :goto_8

    :pswitch_1
    iget-object v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    .local v4, "buffer":Ljava/nio/ByteBuffer;
    iget-object v5, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/cio/HttpHeadersMap;

    .local v5, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    iget-object v10, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    .local v10, "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    iget-object v11, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/http/cio/CIOMultipartDataBase;

    .local v11, "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v3

    goto/16 :goto_6

    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v10    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .end local v11    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :pswitch_2
    iget-object v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    .restart local v4    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v5, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/cio/HttpHeadersMap;

    .restart local v5    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    iget-object v10, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    .restart local v10    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    iget-object v11, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/http/cio/CIOMultipartDataBase;

    .restart local v11    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v10    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .end local v11    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :pswitch_3
    iget-object v0, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/http/cio/HttpHeadersMap;

    .local v0, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    iget-object v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    .local v4, "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v3

    goto :goto_4

    .end local v0    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v4    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    :pswitch_4
    iget-object v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    .restart local v4    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    iget-object v10, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/http/cio/CIOMultipartDataBase;

    .local v10, "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v3

    goto :goto_1

    .end local v4    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .end local v10    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :pswitch_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p0

    .restart local v10    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    move-object/from16 v4, p1

    .line 72
    .restart local v4    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    invoke-virtual {v4}, Lio/ktor/http/cio/MultipartEvent$MultipartPart;->getHeaders()Lkotlinx/coroutines/Deferred;

    move-result-object v11

    iput-object v10, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$1:Ljava/lang/Object;

    iput v6, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->label:I

    invoke-interface {v11, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_1

    .line 71
    return-object v0

    :cond_1
    :goto_1
    check-cast v11, Lio/ktor/http/cio/HttpHeadersMap;

    .line 74
    .local v11, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    const-string v12, "Content-Disposition"

    invoke-virtual {v11, v12}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 222
    .local v12, "it":Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 74
    .local v13, "$i$a$-let-CIOMultipartDataBase$partToData$contentDisposition$1":I
    sget-object v14, Lio/ktor/http/ContentDisposition;->Companion:Lio/ktor/http/ContentDisposition$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/ktor/http/ContentDisposition$Companion;->parse(Ljava/lang/String;)Lio/ktor/http/ContentDisposition;

    move-result-object v12

    .end local v12    # "it":Ljava/lang/CharSequence;
    .end local v13    # "$i$a$-let-CIOMultipartDataBase$partToData$contentDisposition$1":I
    goto :goto_2

    :cond_2
    move-object v12, v9

    .line 75
    .local v12, "contentDisposition":Lio/ktor/http/ContentDisposition;
    :goto_2
    if-eqz v12, :cond_3

    const-string v13, "filename"

    invoke-virtual {v12, v13}, Lio/ktor/http/ContentDisposition;->parameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_3
    move-object v13, v9

    .end local v12    # "contentDisposition":Lio/ktor/http/ContentDisposition;
    :goto_3
    move-object v12, v13

    .line 77
    .local v12, "filename":Ljava/lang/String;
    nop

    .end local v12    # "filename":Ljava/lang/String;
    if-nez v12, :cond_5

    .line 78
    invoke-virtual {v4}, Lio/ktor/http/cio/MultipartEvent$MultipartPart;->getBody()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v6

    iget v7, v10, Lio/ktor/http/cio/CIOMultipartDataBase;->formFieldLimit:I

    int-to-long v12, v7

    iput-object v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->label:I

    invoke-interface {v6, v12, v13, v1}, Lio/ktor/utils/io/ByteReadChannel;->readRemaining(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    .end local v10    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    if-ne v6, v0, :cond_4

    .line 71
    return-object v0

    .line 78
    :cond_4
    move-object v0, v11

    .line 71
    .end local v11    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .restart local v0    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :goto_4
    check-cast v6, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 80
    .local v6, "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    nop

    .line 81
    :try_start_0
    new-instance v7, Lio/ktor/http/content/PartData$FormItem;

    move-object v10, v6

    check-cast v10, Lio/ktor/utils/io/core/Input;

    invoke-static {v10, v8, v8, v5, v9}, Lio/ktor/utils/io/core/Input;->readText$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$2;

    invoke-direct {v8, v4}, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$2;-><init>(Lio/ktor/http/cio/MultipartEvent$MultipartPart;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    new-instance v9, Lio/ktor/http/cio/CIOHeaders;

    invoke-direct {v9, v0}, Lio/ktor/http/cio/CIOHeaders;-><init>(Lio/ktor/http/cio/HttpHeadersMap;)V

    check-cast v9, Lio/ktor/http/Headers;

    invoke-direct {v7, v5, v8, v9}, Lio/ktor/http/content/PartData$FormItem;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v0    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v4    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 81
    .end local v6    # "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    return-object v7

    .line 83
    .restart local v6    # "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    throw v0

    .line 88
    .end local v6    # "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    .restart local v4    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .restart local v10    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    .restart local v11    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :cond_5
    iget v12, v10, Lio/ktor/http/cio/CIOMultipartDataBase;->inMemoryFileUploadLimit:I

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 89
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Lio/ktor/http/cio/MultipartEvent$MultipartPart;->getBody()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v13

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$2:Ljava/lang/Object;

    iput-object v12, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$3:Ljava/lang/Object;

    iput v5, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->label:I

    invoke-interface {v13, v12, v1}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    .line 71
    return-object v0

    .line 89
    :cond_6
    move-object v5, v11

    move-object v11, v10

    move-object v10, v4

    move-object v4, v12

    .line 91
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .local v10, "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .local v11, "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :goto_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-lez v12, :cond_8

    .line 92
    invoke-virtual {v10}, Lio/ktor/http/cio/MultipartEvent$MultipartPart;->getBody()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v12

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$3:Ljava/lang/Object;

    const/4 v13, 0x4

    iput v13, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->label:I

    invoke-interface {v12, v4, v1}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v0, :cond_7

    .line 71
    return-object v0

    .line 92
    :cond_7
    :goto_6
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_9

    move v8, v6

    goto :goto_7

    .line 94
    :cond_8
    nop

    .line 91
    :cond_9
    :goto_7
    nop

    .line 97
    .local v8, "completeRead":Z
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    if-eqz v8, :cond_a

    .line 100
    .end local v8    # "completeRead":Z
    .end local v11    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-direct {v0, v7, v8, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0, v9, v6, v9}, Lio/ktor/utils/io/streams/InputKt;->asInput$default(Ljava/io/InputStream;Lio/ktor/utils/io/pool/ObjectPool;ILjava/lang/Object;)Lio/ktor/utils/io/core/Input;

    move-result-object v0

    .line 101
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .local v0, "input":Lio/ktor/utils/io/core/Input;
    new-instance v4, Lio/ktor/http/content/PartData$FileItem;

    new-instance v6, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$3;

    invoke-direct {v6, v0}, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$3;-><init>(Lio/ktor/utils/io/core/Input;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    new-instance v7, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$4;

    invoke-direct {v7, v10}, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$4;-><init>(Lio/ktor/http/cio/MultipartEvent$MultipartPart;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lio/ktor/http/cio/CIOHeaders;

    invoke-direct {v8, v5}, Lio/ktor/http/cio/CIOHeaders;-><init>(Lio/ktor/http/cio/HttpHeadersMap;)V

    check-cast v8, Lio/ktor/http/Headers;

    invoke-direct {v4, v6, v7, v8}, Lio/ktor/http/content/PartData$FileItem;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    return-object v4

    .line 104
    .end local v0    # "input":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v11    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :cond_a
    const-string v6, "io.ktor.http.content.multipart.skipTempFile"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "true"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 105
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v10, v5, v4}, Lio/ktor/http/cio/CIOMultipartDataBase;->withoutTempFile(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lio/ktor/http/cio/HttpHeadersMap;Ljava/nio/ByteBuffer;)Lio/ktor/http/content/PartData;

    move-result-object v0

    return-object v0

    .line 107
    :cond_b
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v9, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v1, Lio/ktor/http/cio/CIOMultipartDataBase$partToData$1;->label:I

    invoke-direct {v11, v10, v5, v4, v1}, Lio/ktor/http/cio/CIOMultipartDataBase;->withTempFile(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lio/ktor/http/cio/HttpHeadersMap;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v10    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .end local v11    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    if-ne v4, v0, :cond_c

    .line 71
    return-object v0

    .line 107
    :cond_c
    :goto_8
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readPartSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/PartData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;

    iget v1, v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;-><init>(Lio/ktor/http/cio/CIOMultipartDataBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 45
    iget v2, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v2, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/cio/CIOMultipartDataBase;

    .local v2, "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .end local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :pswitch_1
    iget-object v2, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/cio/CIOMultipartDataBase;

    .restart local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .line 51
    .end local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :catch_0
    move-exception v1

    goto :goto_4

    .line 45
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 46
    .restart local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    nop

    .line 47
    :goto_1
    nop

    .line 48
    :try_start_2
    iget-object v3, v2, Lio/ktor/http/cio/CIOMultipartDataBase;->events:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->label:I

    invoke-interface {v3, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v3, v1, :cond_1

    .line 45
    return-object v1

    .line 48
    :cond_1
    move-object v5, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v5

    .line 45
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :goto_2
    :try_start_3
    check-cast v0, Lio/ktor/http/cio/MultipartEvent;

    .line 49
    .local v0, "event":Lio/ktor/http/cio/MultipartEvent;
    iput-object v3, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPartSuspend$1;->label:I

    invoke-direct {v3, v0, p1}, Lio/ktor/http/cio/CIOMultipartDataBase;->eventToData(Lio/ktor/http/cio/MultipartEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v0    # "event":Lio/ktor/http/cio/MultipartEvent;
    if-ne v4, v2, :cond_2

    .line 45
    return-object v2

    .line 49
    :cond_2
    move-object v0, v4

    :goto_3
    check-cast v0, Lio/ktor/http/content/PartData;
    :try_end_3
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_3

    .line 222
    .end local v3    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    .local v0, "it":Lio/ktor/http/content/PartData;
    const/4 v2, 0x0

    .line 49
    .local v2, "$i$a$-let-CIOMultipartDataBase$readPartSuspend$2":I
    return-object v0

    .end local v0    # "it":Lio/ktor/http/content/PartData;
    .end local v2    # "$i$a$-let-CIOMultipartDataBase$readPartSuspend$2":I
    .restart local v3    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :cond_3
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 51
    .end local v3    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 52
    .end local v1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_4
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final withTempFile(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lio/ktor/http/cio/HttpHeadersMap;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/cio/MultipartEvent$MultipartPart;",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/PartData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;

    iget v2, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;-><init>(Lio/ktor/http/cio/CIOMultipartDataBase;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 133
    iget v4, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->label:I

    const/4 v5, 0x0

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
    const/4 v4, 0x0

    .local v4, "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    const/4 v6, 0x0

    .local v6, "$i$a$-use-CIOMultipartDataBase$withTempFile$2$1":I
    iget-object v7, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$6:Ljava/lang/Object;

    check-cast v7, Ljava/nio/channels/FileChannel;

    .local v7, "out":Ljava/nio/channels/FileChannel;
    iget-object v8, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$5:Ljava/lang/Object;

    check-cast v8, Ljava/io/Closeable;

    iget-object v9, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/io/Closeable;

    iget-object v10, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/io/File;

    .local v10, "tmp":Ljava/io/File;
    iget-object v11, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/nio/ByteBuffer;

    .local v11, "buffer":Ljava/nio/ByteBuffer;
    iget-object v12, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lio/ktor/http/cio/HttpHeadersMap;

    .local v12, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    iget-object v13, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    .local v13, "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    move-object v14, v13

    move v13, v6

    move-object v6, v5

    goto/16 :goto_3

    .line 142
    .end local v6    # "$i$a$-use-CIOMultipartDataBase$withTempFile$2$1":I
    .end local v7    # "out":Ljava/nio/channels/FileChannel;
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    .end local v12    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v13    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_4

    .line 133
    .end local v4    # "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    .end local v10    # "tmp":Ljava/io/File;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p2

    .local v4, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    move-object/from16 v6, p1

    .local v6, "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    move-object/from16 v7, p3

    .line 138
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    const-string v8, "file-upload"

    const-string v9, ".tmp"

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 140
    .restart local v10    # "tmp":Ljava/io/File;
    nop

    .line 141
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v9, v8

    check-cast v9, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    move-object v8, v9

    check-cast v8, Ljava/io/FileOutputStream;

    .local v8, "stream":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 142
    .local v11, "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    check-cast v12, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    :try_start_3
    move-object v8, v12

    check-cast v8, Ljava/nio/channels/FileChannel;

    .local v8, "out":Ljava/nio/channels/FileChannel;
    const/4 v13, 0x0

    .line 143
    .local v13, "$i$a$-use-CIOMultipartDataBase$withTempFile$2$1":I
    const-wide/16 v14, 0x0

    invoke-virtual {v8, v14, v15}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v14, v6

    move-object v6, v5

    move-object/from16 v16, v12

    move-object v12, v4

    move v4, v11

    move-object v11, v7

    move-object v7, v8

    move-object/from16 v8, v16

    .line 145
    .end local v6    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .end local v8    # "out":Ljava/nio/channels/FileChannel;
    .local v4, "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    .local v7, "out":Ljava/nio/channels/FileChannel;
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    .restart local v12    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .local v14, "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    :goto_1
    nop

    .line 146
    :goto_2
    :try_start_4
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 147
    invoke-virtual {v7, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 149
    :cond_1
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v14}, Lio/ktor/http/cio/MultipartEvent$MultipartPart;->getBody()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v15

    iput-object v14, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$5:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->L$6:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v1, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$1;->label:I

    invoke-interface {v15, v11, v1}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v2, v0, :cond_2

    .line 133
    return-object v0

    .line 151
    :cond_2
    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_3
    :try_start_5
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v15, -0x1

    if-eq v3, v15, :cond_3

    .line 152
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v3, v2

    move-object/from16 v2, p0

    goto :goto_1

    .line 154
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3
    nop

    .end local v7    # "out":Ljava/nio/channels/FileChannel;
    .end local v13    # "$i$a$-use-CIOMultipartDataBase$withTempFile$2$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 142
    :try_start_6
    invoke-static {v8, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    nop

    .end local v4    # "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 141
    :try_start_7
    invoke-static {v9, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 161
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 162
    .local v0, "closed":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v3, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$lazyInput$1;

    invoke-direct {v3, v0, v10}, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$lazyInput$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/io/File;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 167
    .local v3, "lazyInput":Lkotlin/Lazy;
    new-instance v4, Lio/ktor/http/content/PartData$FileItem;

    .line 168
    new-instance v5, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$3;

    invoke-direct {v5, v3}, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$3;-><init>(Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 169
    new-instance v6, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;

    invoke-direct {v6, v0, v3, v14, v10}, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/Lazy;Lio/ktor/http/cio/MultipartEvent$MultipartPart;Ljava/io/File;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 175
    new-instance v7, Lio/ktor/http/cio/CIOHeaders;

    invoke-direct {v7, v12}, Lio/ktor/http/cio/CIOHeaders;-><init>(Lio/ktor/http/cio/HttpHeadersMap;)V

    check-cast v7, Lio/ktor/http/Headers;

    .line 167
    invoke-direct {v4, v5, v6, v7}, Lio/ktor/http/content/PartData$FileItem;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    return-object v4

    .line 156
    .end local v0    # "closed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v3    # "lazyInput":Lkotlin/Lazy;
    .end local v12    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .end local v14    # "part":Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_6

    .line 141
    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_5

    .line 142
    .restart local v4    # "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_4

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    .local v3, "$result":Ljava/lang/Object;
    .local v11, "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    :catchall_4
    move-exception v0

    move-object v2, v0

    move v4, v11

    move-object v8, v12

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "tmp":Ljava/io/File;
    .end local v11    # "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    :goto_4
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    .restart local v10    # "tmp":Ljava/io/File;
    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "tmp":Ljava/io/File;
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 141
    .end local v4    # "$i$a$-use-CIOMultipartDataBase$withTempFile$2":I
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v10    # "tmp":Ljava/io/File;
    :catchall_6
    move-exception v0

    move-object v2, v0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "tmp":Ljava/io/File;
    :goto_5
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v10    # "tmp":Ljava/io/File;
    :catchall_7
    move-exception v0

    move-object v4, v0

    :try_start_b
    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v10    # "tmp":Ljava/io/File;
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 156
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v10    # "tmp":Ljava/io/File;
    :catchall_8
    move-exception v0

    .line 157
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_6
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 158
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final withoutTempFile(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lio/ktor/http/cio/HttpHeadersMap;Ljava/nio/ByteBuffer;)Lio/ktor/http/content/PartData;
    .locals 6
    .param p1, "part"    # Lio/ktor/http/cio/MultipartEvent$MultipartPart;
    .param p2, "headers"    # Lio/ktor/http/cio/HttpHeadersMap;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .line 115
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 116
    .local v0, "closed":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v1, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;

    invoke-direct {v1, v0, p3, p1}, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/nio/ByteBuffer;Lio/ktor/http/cio/MultipartEvent$MultipartPart;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 121
    .local v1, "lazyInput":Lkotlin/Lazy;
    new-instance v2, Lio/ktor/http/content/PartData$FileItem;

    .line 122
    new-instance v3, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$1;

    invoke-direct {v3, v1}, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$1;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 123
    new-instance v4, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$2;

    invoke-direct {v4, v0, v1, p1}, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/Lazy;Lio/ktor/http/cio/MultipartEvent$MultipartPart;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 128
    new-instance v5, Lio/ktor/http/cio/CIOHeaders;

    invoke-direct {v5, p2}, Lio/ktor/http/cio/CIOHeaders;-><init>(Lio/ktor/http/cio/HttpHeadersMap;)V

    check-cast v5, Lio/ktor/http/Headers;

    .line 121
    invoke-direct {v2, v3, v4, v5}, Lio/ktor/http/content/PartData$FileItem;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    check-cast v2, Lio/ktor/http/content/PartData;

    return-object v2
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/ktor/http/cio/CIOMultipartDataBase;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public readPart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/PartData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;

    iget v1, v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;-><init>(Lio/ktor/http/cio/CIOMultipartDataBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_2

    :pswitch_1
    iget-object v2, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/cio/CIOMultipartDataBase;

    .local v2, "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .end local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 37
    .restart local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :goto_1
    nop

    .line 38
    iget-object v3, v2, Lio/ktor/http/cio/CIOMultipartDataBase;->events:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/http/cio/MultipartEvent;

    if-nez v3, :cond_2

    .line 42
    const/4 v3, 0x0

    iput-object v3, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->label:I

    invoke-direct {v2, p1}, Lio/ktor/http/cio/CIOMultipartDataBase;->readPartSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    if-ne v2, v1, :cond_1

    .line 36
    return-object v1

    .line 42
    :cond_1
    :goto_2
    return-object v2

    .line 39
    .restart local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    .local v3, "event":Lio/ktor/http/cio/MultipartEvent;
    :cond_2
    iput-object v2, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lio/ktor/http/cio/CIOMultipartDataBase$readPart$1;->label:I

    invoke-direct {v2, v3, p1}, Lio/ktor/http/cio/CIOMultipartDataBase;->eventToData(Lio/ktor/http/cio/MultipartEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "event":Lio/ktor/http/cio/MultipartEvent;
    if-ne v3, v1, :cond_3

    .line 36
    return-object v1

    .line 39
    :cond_3
    move-object v5, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v5

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :goto_3
    check-cast v0, Lio/ktor/http/content/PartData;

    if-eqz v0, :cond_4

    .line 222
    .end local v3    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    .local v0, "it":Lio/ktor/http/content/PartData;
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$a$-let-CIOMultipartDataBase$readPart$2":I
    return-object v0

    .end local v0    # "it":Lio/ktor/http/content/PartData;
    .end local v2    # "$i$a$-let-CIOMultipartDataBase$readPart$2":I
    .restart local v3    # "this":Lio/ktor/http/cio/CIOMultipartDataBase;
    :cond_4
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
