.class public abstract Lio/ktor/server/engine/BaseApplicationResponse;
.super Ljava/lang/Object;
.source "BaseApplicationResponse.kt"

# interfaces
.implements Lio/ktor/server/response/ApplicationResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooLong;,
        Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;,
        Lio/ktor/server/engine/BaseApplicationResponse$Companion;,
        Lio/ktor/server/engine/BaseApplicationResponse$InvalidHeaderForContent;,
        Lio/ktor/server/engine/BaseApplicationResponse$ResponseAlreadySentException;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseApplicationResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseApplicationResponse.kt\nio/ktor/server/engine/BaseApplicationResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Readers.kt\nio/ktor/util/cio/ReadersKt\n*L\n1#1,322:1\n1#2:323\n22#3,13:324\n22#3,13:337\n22#3,13:350\n*S KotlinDebug\n*F\n+ 1 BaseApplicationResponse.kt\nio/ktor/server/engine/BaseApplicationResponse\n*L\n169#1:324,13\n197#1:337,13\n208#1:350,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u0000 A2\u00020\u0001:\u0005?@ABCB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0004J\u0018\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#H\u0017J\u0019\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020&H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\'J\u0019\u0010(\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010+J\u0019\u0010,\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020-H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010.J\u0019\u0010/\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00100J\u0019\u00101\u001a\u00020\u001a2\u0006\u00102\u001a\u000203H\u00a4@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104J\u0019\u00105\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u000206H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107J\u0011\u00108\u001a\u000209H\u00a4@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010:J\u0010\u0010;\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020\u0006H$J\n\u0010=\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010=\u001a\u00020\u001a2\u0006\u0010>\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011R\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006D"
    }
    d2 = {
        "Lio/ktor/server/engine/BaseApplicationResponse;",
        "Lio/ktor/server/response/ApplicationResponse;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Lio/ktor/server/application/ApplicationCall;)V",
        "_status",
        "Lio/ktor/http/HttpStatusCode;",
        "getCall",
        "()Lio/ktor/server/application/ApplicationCall;",
        "cookies",
        "Lio/ktor/server/response/ResponseCookies;",
        "getCookies",
        "()Lio/ktor/server/response/ResponseCookies;",
        "cookies$delegate",
        "Lkotlin/Lazy;",
        "isCommitted",
        "",
        "()Z",
        "<set-?>",
        "isSent",
        "pipeline",
        "Lio/ktor/server/response/ApplicationSendPipeline;",
        "getPipeline",
        "()Lio/ktor/server/response/ApplicationSendPipeline;",
        "responded",
        "commitHeaders",
        "",
        "content",
        "Lio/ktor/http/content/OutgoingContent;",
        "ensureLength",
        "expected",
        "",
        "actual",
        "push",
        "builder",
        "Lio/ktor/server/response/ResponsePushBuilder;",
        "respondFromBytes",
        "bytes",
        "",
        "([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondFromChannel",
        "readChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondNoContent",
        "Lio/ktor/http/content/OutgoingContent$NoContent;",
        "(Lio/ktor/http/content/OutgoingContent$NoContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondOutgoingContent",
        "(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondUpgrade",
        "upgrade",
        "Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;",
        "(Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondWriteChannelContent",
        "Lio/ktor/http/content/OutgoingContent$WriteChannelContent;",
        "(Lio/ktor/http/content/OutgoingContent$WriteChannelContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "responseChannel",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setStatus",
        "statusCode",
        "status",
        "value",
        "BodyLengthIsTooLong",
        "BodyLengthIsTooSmall",
        "Companion",
        "InvalidHeaderForContent",
        "ResponseAlreadySentException",
        "ktor-server-host-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/ktor/server/engine/BaseApplicationResponse$Companion;

.field private static final EngineResponseAttributeKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/engine/BaseApplicationResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _status:Lio/ktor/http/HttpStatusCode;

.field private final call:Lio/ktor/server/application/ApplicationCall;

.field private final cookies$delegate:Lkotlin/Lazy;

.field private isSent:Z

.field private final pipeline:Lio/ktor/server/response/ApplicationSendPipeline;

.field private responded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/engine/BaseApplicationResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/engine/BaseApplicationResponse;->Companion:Lio/ktor/server/engine/BaseApplicationResponse$Companion;

    .line 298
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "EngineResponse"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/engine/BaseApplicationResponse;->EngineResponseAttributeKey:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/application/ApplicationCall;)V
    .locals 4
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationResponse;->call:Lio/ktor/server/application/ApplicationCall;

    .line 32
    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$cookies$2;

    invoke-direct {v0, p0}, Lio/ktor/server/engine/BaseApplicationResponse$cookies$2;-><init>(Lio/ktor/server/engine/BaseApplicationResponse;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->cookies$delegate:Lkotlin/Lazy;

    .line 46
    nop

    .line 44
    new-instance v0, Lio/ktor/server/response/ApplicationSendPipeline;

    .line 45
    iget-object v1, p0, Lio/ktor/server/engine/BaseApplicationResponse;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationEnvironment;->getDevelopmentMode()Z

    move-result v1

    .line 44
    invoke-direct {v0, v1}, Lio/ktor/server/response/ApplicationSendPipeline;-><init>(Z)V

    .line 46
    move-object v1, v0

    .local v1, "$this$pipeline_u24lambda_u240":Lio/ktor/server/response/ApplicationSendPipeline;
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$a$-apply-BaseApplicationResponse$pipeline$1":I
    iget-object v3, p0, Lio/ktor/server/engine/BaseApplicationResponse;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/server/application/Application;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    check-cast v3, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v1, v3}, Lio/ktor/server/response/ApplicationSendPipeline;->resetFrom(Lio/ktor/util/pipeline/Pipeline;)V

    .line 48
    nop

    .line 46
    .end local v1    # "$this$pipeline_u24lambda_u240":Lio/ktor/server/response/ApplicationSendPipeline;
    .end local v2    # "$i$a$-apply-BaseApplicationResponse$pipeline$1":I
    iput-object v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->pipeline:Lio/ktor/server/response/ApplicationSendPipeline;

    .line 21
    return-void
.end method

.method public static final synthetic access$getEngineResponseAttributeKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 21
    sget-object v0, Lio/ktor/server/engine/BaseApplicationResponse;->EngineResponseAttributeKey:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method private final ensureLength(JJ)V
    .locals 1
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 221
    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 222
    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 223
    return-void

    .line 222
    :cond_0
    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooSmall;-><init>(JJ)V

    throw v0

    .line 221
    :cond_1
    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooLong;

    invoke-direct {v0, p1, p2}, Lio/ktor/server/engine/BaseApplicationResponse$BodyLengthIsTooLong;-><init>(J)V

    throw v0
.end method

.method static synthetic respondFromBytes$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/BaseApplicationResponse;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;

    iget v1, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;-><init>(Lio/ktor/server/engine/BaseApplicationResponse;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 192
    iget v2, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->label:I

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

    .local p0, "$i$f$use":I
    const/4 p1, 0x0

    .local p1, "$i$a$-use-BaseApplicationResponse$respondFromBytes$3":I
    iget-object v1, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteWriteChannel;

    .local v1, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 343
    .end local p1    # "$i$a$-use-BaseApplicationResponse$respondFromBytes$3":I
    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 192
    .end local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "$i$f$use":I
    :pswitch_1
    iget-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->L$0:Ljava/lang/Object;

    check-cast p0, [B

    .local p0, "bytes":[B
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "bytes":[B
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 193
    .local p0, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    .local p1, "bytes":[B
    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v2

    sget-object v3, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v3}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/ktor/server/response/ResponseHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "length":J
    const/4 v4, 0x0

    .line 194
    .local v4, "$i$a$-let-BaseApplicationResponse$respondFromBytes$2":I
    array-length v5, p1

    int-to-long v5, v5

    invoke-direct {p0, v2, v3, v5, v6}, Lio/ktor/server/engine/BaseApplicationResponse;->ensureLength(JJ)V

    .line 195
    nop

    .line 193
    .end local v2    # "length":J
    .end local v4    # "$i$a$-let-BaseApplicationResponse$respondFromBytes$2":I
    nop

    .line 197
    :cond_1
    iput-object p1, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->label:I

    invoke-virtual {p0, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->responseChannel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    if-ne p0, v1, :cond_2

    .line 192
    return-object v1

    :cond_2
    :goto_1
    check-cast p0, Lio/ktor/utils/io/ByteWriteChannel;

    .local p0, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v2, 0x0

    .line 337
    .local v2, "$i$f$use":I
    nop

    .line 341
    nop

    .line 342
    move-object v3, p0

    .local v3, "$this$respondFromBytes_u24lambda_u245":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v4, 0x0

    .line 198
    .local v4, "$i$a$-use-BaseApplicationResponse$respondFromBytes$3":I
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$3$1;

    const/4 v7, 0x0

    invoke-direct {v6, v3, p1, v7}, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$3$1;-><init>(Lio/ktor/utils/io/ByteWriteChannel;[BLkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondFromBytes$1;->label:I

    invoke-static {v5, v6, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "$this$respondFromBytes_u24lambda_u245":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p1    # "bytes":[B
    if-ne v5, v1, :cond_3

    .line 192
    return-object v1

    .line 198
    :cond_3
    move-object v1, p0

    move p0, v2

    move p1, v4

    .line 201
    .end local v2    # "$i$f$use":I
    .end local v4    # "$i$a$-use-BaseApplicationResponse$respondFromBytes$3":I
    .restart local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "$i$f$use":I
    .local p1, "$i$a$-use-BaseApplicationResponse$respondFromBytes$3":I
    :goto_2
    nop

    .line 342
    .end local p1    # "$i$a$-use-BaseApplicationResponse$respondFromBytes$3":I
    nop

    .line 347
    invoke-static {v1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 348
    .end local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    move-object p1, v1

    .line 349
    .local p1, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    nop

    .line 202
    .end local p0    # "$i$f$use":I
    .end local p1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 343
    .restart local v2    # "$i$f$use":I
    .local p0, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    :catchall_1
    move-exception p1

    move-object v1, p0

    move p0, v2

    .line 344
    .end local v2    # "$i$f$use":I
    .restart local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "$i$f$use":I
    .local p1, "cause$iv":Ljava/lang/Throwable;
    :goto_3
    :try_start_2
    invoke-interface {v1, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 345
    nop

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "$i$f$use":I
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 347
    .end local p1    # "cause$iv":Ljava/lang/Throwable;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local p0    # "$i$f$use":I
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception p1

    invoke-static {v1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic respondFromChannel$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/BaseApplicationResponse;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;

    iget v2, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;-><init>(Lio/ktor/server/engine/BaseApplicationResponse;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 207
    iget v4, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->label:I

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
    const/4 v2, 0x0

    .local v2, "$i$f$use":I
    const/4 v0, 0x0

    .local v0, "$i$a$-use-BaseApplicationResponse$respondFromChannel$2":I
    iget-wide v4, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->J$0:J

    .local v4, "copied":J
    iget-object v6, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .local v6, "length":Ljava/lang/Long;
    iget-object v7, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteWriteChannel;

    .local v7, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v8, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lio/ktor/server/engine/BaseApplicationResponse;

    .local v8, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v3

    goto/16 :goto_4

    .end local v0    # "$i$a$-use-BaseApplicationResponse$respondFromChannel$2":I
    .end local v2    # "$i$f$use":I
    .end local v4    # "copied":J
    .end local v6    # "length":Ljava/lang/Long;
    .end local v7    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v8    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "$i$f$use":I
    const/4 v4, 0x0

    .local v4, "$i$a$-use-BaseApplicationResponse$respondFromChannel$2":I
    iget-object v6, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .restart local v6    # "length":Ljava/lang/Long;
    iget-object v7, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v7    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v8, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteReadChannel;

    .local v8, "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v9, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/server/engine/BaseApplicationResponse;

    .local v9, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v3

    goto/16 :goto_3

    .line 356
    .end local v4    # "$i$a$-use-BaseApplicationResponse$respondFromChannel$2":I
    .end local v6    # "length":Ljava/lang/Long;
    .end local v8    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    .end local v9    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 207
    .end local v2    # "$i$f$use":I
    .end local v7    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_2
    iget-object v2, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    .local v2, "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v4, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/server/engine/BaseApplicationResponse;

    .local v4, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v2

    move-object v6, v3

    goto :goto_1

    .end local v2    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    .end local v4    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :pswitch_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .restart local v4    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    move-object/from16 v2, p1

    .line 208
    .restart local v2    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    iput-object v4, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->label:I

    invoke-virtual {v4, v1}, Lio/ktor/server/engine/BaseApplicationResponse;->responseChannel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 207
    return-object v0

    .line 208
    :cond_1
    move-object v8, v2

    .line 207
    .end local v2    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v8    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    :goto_1
    move-object v7, v6

    check-cast v7, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v7    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v2, 0x0

    .line 350
    .local v2, "$i$f$use":I
    nop

    .line 354
    nop

    .line 355
    move-object v6, v7

    .local v6, "$this$respondFromChannel_u24lambda_u246":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v9, 0x0

    .line 209
    .local v9, "$i$a$-use-BaseApplicationResponse$respondFromChannel$2":I
    :try_start_2
    invoke-virtual {v4}, Lio/ktor/server/engine/BaseApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v10

    sget-object v11, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v11}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/ktor/server/response/ResponseHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object v10, v5

    .line 210
    .local v10, "length":Ljava/lang/Long;
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$2$copied$1;

    invoke-direct {v12, v8, v6, v10, v5}, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$2$copied$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iput-object v4, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$3:Ljava/lang/Object;

    const/4 v13, 0x2

    iput v13, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->label:I

    invoke-static {v11, v12, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    .end local v6    # "$this$respondFromChannel_u24lambda_u246":Lio/ktor/utils/io/ByteWriteChannel;
    if-ne v11, v0, :cond_3

    .line 207
    return-object v0

    .line 210
    :cond_3
    move-object v6, v10

    move/from16 v16, v9

    move-object v9, v4

    move/from16 v4, v16

    .end local v10    # "length":Ljava/lang/Long;
    .local v4, "$i$a$-use-BaseApplicationResponse$respondFromChannel$2":I
    .local v6, "length":Ljava/lang/Long;
    .local v9, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :goto_3
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 214
    .local v10, "copied":J
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 215
    iput-object v9, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->L$3:Ljava/lang/Object;

    iput-wide v10, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->J$0:J

    const/4 v5, 0x3

    iput v5, v1, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->label:I

    const-wide/16 v12, 0x1

    invoke-interface {v8, v12, v13, v1}, Lio/ktor/utils/io/ByteReadChannel;->discard(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v8    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v5, v0, :cond_4

    .line 207
    return-object v0

    .line 215
    :cond_4
    move v0, v4

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-wide v4, v10

    .end local v6    # "length":Ljava/lang/Long;
    .end local v10    # "copied":J
    .restart local v0    # "$i$a$-use-BaseApplicationResponse$respondFromChannel$2":I
    .local v4, "copied":J
    .local v7, "length":Ljava/lang/Long;
    .local v8, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_4
    :try_start_3
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 216
    .local v10, "discarded":J
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v14, v4, v10

    invoke-direct {v9, v12, v13, v14, v15}, Lio/ktor/server/engine/BaseApplicationResponse;->ensureLength(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    .end local v9    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    move-object v7, v8

    goto :goto_5

    .line 356
    .end local v0    # "$i$a$-use-BaseApplicationResponse$respondFromChannel$2":I
    .end local v4    # "copied":J
    .end local v7    # "length":Ljava/lang/Long;
    .end local v10    # "discarded":J
    :catchall_1
    move-exception v0

    move-object v7, v8

    goto :goto_6

    .line 355
    .end local v8    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .local v7, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_5
    :goto_5
    nop

    .line 360
    invoke-static {v7}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 361
    .end local v7    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    move-object v0, v7

    .line 362
    .local v0, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    nop

    .line 218
    .end local v0    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v2    # "$i$f$use":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 357
    .local v0, "cause$iv":Ljava/lang/Throwable;
    .restart local v2    # "$i$f$use":I
    .restart local v7    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_6
    :try_start_4
    invoke-interface {v7, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 358
    nop

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$f$use":I
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v7    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 360
    .end local v0    # "cause$iv":Ljava/lang/Throwable;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$f$use":I
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v7    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    :catchall_2
    move-exception v0

    invoke-static {v7}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic respondNoContent$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/http/content/OutgoingContent$NoContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/engine/BaseApplicationResponse;
    .param p1, "content"    # Lio/ktor/http/content/OutgoingContent$NoContent;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/BaseApplicationResponse;",
            "Lio/ktor/http/content/OutgoingContent$NoContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 162
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static synthetic respondOutgoingContent$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/BaseApplicationResponse;",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;

    iget v1, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;-><init>(Lio/ktor/server/engine/BaseApplicationResponse;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 111
    iget v2, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->label:I

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
    iget-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/server/engine/BaseApplicationResponse;

    .local p0, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .end local p0    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :pswitch_1
    iget-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteReadChannel;

    .local p0, "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    iget-object p1, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/server/engine/BaseApplicationResponse;

    .local p1, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 144
    .end local p1    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 111
    .end local p0    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_2
    iget-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/server/engine/BaseApplicationResponse;

    .local p0, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .end local p0    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :pswitch_3
    iget-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/server/engine/BaseApplicationResponse;

    .restart local p0    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p0    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :pswitch_4
    iget-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/server/engine/BaseApplicationResponse;

    .restart local p0    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :pswitch_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    .restart local p0    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    .local p1, "content":Lio/ktor/http/content/OutgoingContent;
    nop

    .line 113
    instance-of v2, p1, Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {p0, p1}, Lio/ktor/server/engine/BaseApplicationResponse;->commitHeaders(Lio/ktor/http/content/OutgoingContent;)V

    .line 115
    move-object v2, p1

    check-cast v2, Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;

    iput-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->label:I

    invoke-virtual {p0, v2, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondUpgrade(Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    if-ne p1, v1, :cond_1

    .line 111
    return-object v1

    .line 115
    :cond_1
    :goto_1
    goto/16 :goto_7

    .line 119
    .restart local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    :cond_2
    instance-of v2, p1, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    if-eqz v2, :cond_4

    .line 121
    move-object v2, p1

    check-cast v2, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    invoke-virtual {v2}, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;->bytes()[B

    move-result-object v2

    .line 123
    .local v2, "bytes":[B
    invoke-virtual {p0, p1}, Lio/ktor/server/engine/BaseApplicationResponse;->commitHeaders(Lio/ktor/http/content/OutgoingContent;)V

    .line 124
    .end local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    iput-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->label:I

    invoke-virtual {p0, v2, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondFromBytes([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "bytes":[B
    if-ne p1, v1, :cond_3

    .line 111
    return-object v1

    .line 124
    :cond_3
    :goto_2
    goto :goto_7

    .line 128
    .restart local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    :cond_4
    instance-of v2, p1, Lio/ktor/http/content/OutgoingContent$WriteChannelContent;

    if-eqz v2, :cond_6

    .line 130
    invoke-virtual {p0, p1}, Lio/ktor/server/engine/BaseApplicationResponse;->commitHeaders(Lio/ktor/http/content/OutgoingContent;)V

    .line 132
    move-object v2, p1

    check-cast v2, Lio/ktor/http/content/OutgoingContent$WriteChannelContent;

    iput-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->label:I

    invoke-virtual {p0, v2, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondWriteChannelContent(Lio/ktor/http/content/OutgoingContent$WriteChannelContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    if-ne p1, v1, :cond_5

    .line 111
    return-object v1

    .line 132
    :cond_5
    :goto_3
    goto :goto_7

    .line 136
    .restart local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    :cond_6
    instance-of v2, p1, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    if-eqz v2, :cond_8

    .line 138
    move-object v2, p1

    check-cast v2, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v2}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->readFrom()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v2

    .line 139
    .local v2, "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    nop

    .line 141
    :try_start_1
    invoke-virtual {p0, p1}, Lio/ktor/server/engine/BaseApplicationResponse;->commitHeaders(Lio/ktor/http/content/OutgoingContent;)V

    .line 142
    .end local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    iput-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->label:I

    invoke-virtual {p0, v2, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondFromChannel(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_7

    .line 111
    return-object v1

    .line 142
    :cond_7
    move-object p1, p0

    move-object p0, v2

    .line 144
    .end local v2    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    .local p0, "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    .local p1, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    :goto_4
    invoke-static {p0}, Lio/ktor/utils/io/ByteReadChannelKt;->cancel(Lio/ktor/utils/io/ByteReadChannel;)Z

    .line 145
    .end local p0    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    move-object p0, p1

    goto :goto_7

    .line 144
    .end local p1    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    .restart local v2    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_1
    move-exception p1

    move-object p0, v2

    .end local v2    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p0    # "readChannel":Lio/ktor/utils/io/ByteReadChannel;
    :goto_5
    invoke-static {p0}, Lio/ktor/utils/io/ByteReadChannelKt;->cancel(Lio/ktor/utils/io/ByteReadChannel;)Z

    throw p1

    .line 149
    .local p0, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    .local p1, "content":Lio/ktor/http/content/OutgoingContent;
    :cond_8
    instance-of v2, p1, Lio/ktor/http/content/OutgoingContent$NoContent;

    if-eqz v2, :cond_a

    .line 150
    invoke-virtual {p0, p1}, Lio/ktor/server/engine/BaseApplicationResponse;->commitHeaders(Lio/ktor/http/content/OutgoingContent;)V

    .line 151
    move-object v2, p1

    check-cast v2, Lio/ktor/http/content/OutgoingContent$NoContent;

    iput-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondOutgoingContent$1;->label:I

    invoke-virtual {p0, v2, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondNoContent(Lio/ktor/http/content/OutgoingContent$NoContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    if-ne p1, v1, :cond_9

    .line 111
    return-object v1

    .line 154
    :cond_9
    :goto_6
    nop

    :cond_a
    :goto_7
    iput-boolean v3, p0, Lio/ktor/server/engine/BaseApplicationResponse;->isSent:Z

    .line 155
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

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

.method static synthetic respondWriteChannelContent$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/http/content/OutgoingContent$WriteChannelContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/BaseApplicationResponse;",
            "Lio/ktor/http/content/OutgoingContent$WriteChannelContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;

    iget v1, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;-><init>(Lio/ktor/server/engine/BaseApplicationResponse;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 167
    iget v2, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

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

    .local p0, "$i$f$use":I
    const/4 p1, 0x0

    .local p1, "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    iget-object v1, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteWriteChannel;

    .local v1, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/utils/io/ClosedWriteChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 330
    .end local p1    # "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 176
    .restart local p1    # "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    :catch_0
    move-exception v2

    goto :goto_3

    .line 167
    .end local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "$i$f$use":I
    .end local p1    # "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    :pswitch_1
    iget-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/http/content/OutgoingContent$WriteChannelContent;

    .local p0, "content":Lio/ktor/http/content/OutgoingContent$WriteChannelContent;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "content":Lio/ktor/http/content/OutgoingContent$WriteChannelContent;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 169
    .local p0, "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    .local p1, "content":Lio/ktor/http/content/OutgoingContent$WriteChannelContent;
    iput-object p1, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->label:I

    invoke-virtual {p0, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->responseChannel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this":Lio/ktor/server/engine/BaseApplicationResponse;
    if-ne p0, v1, :cond_1

    .line 167
    return-object v1

    :cond_1
    :goto_1
    check-cast p0, Lio/ktor/utils/io/ByteWriteChannel;

    .local p0, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v2, 0x0

    .line 324
    .local v2, "$i$f$use":I
    nop

    .line 328
    nop

    .line 329
    move-object v5, p0

    .local v5, "$this$respondWriteChannelContent_u24lambda_u243":Lio/ktor/utils/io/ByteWriteChannel;
    const/4 v6, 0x0

    .line 172
    .local v6, "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    nop

    .line 173
    :try_start_1
    sget-object v7, Lkotlinx/coroutines/Dispatchers;->INSTANCE:Lkotlinx/coroutines/Dispatchers;

    invoke-static {v7}, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt;->getIOBridge(Lkotlinx/coroutines/Dispatchers;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$2$1;

    invoke-direct {v8, p1, v5, v4}, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$2$1;-><init>(Lio/ktor/http/content/OutgoingContent$WriteChannelContent;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object p0, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->L$0:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, p2, Lio/ktor/server/engine/BaseApplicationResponse$respondWriteChannelContent$1;->label:I

    invoke-static {v7, v8, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Lio/ktor/utils/io/ClosedWriteChannelException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "$this$respondWriteChannelContent_u24lambda_u243":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p1    # "content":Lio/ktor/http/content/OutgoingContent$WriteChannelContent;
    if-ne v3, v1, :cond_2

    .line 167
    return-object v1

    .line 173
    :cond_2
    move-object v1, p0

    move p0, v2

    move p1, v6

    .end local v2    # "$i$f$use":I
    .end local v6    # "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    .restart local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "$i$f$use":I
    .local p1, "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    :goto_2
    nop

    .line 186
    nop

    .line 329
    .end local p1    # "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    nop

    .line 334
    invoke-static {v1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 335
    .end local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    move-object p1, v1

    .line 336
    .local p1, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    nop

    .line 187
    .end local p0    # "$i$f$use":I
    .end local p1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 330
    .restart local v2    # "$i$f$use":I
    .local p0, "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    :catchall_1
    move-exception p1

    move-object v1, p0

    move p0, v2

    goto :goto_4

    .line 176
    .restart local v6    # "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    :catch_1
    move-exception p1

    move-object v1, p0

    move p0, v2

    move-object v2, p1

    move p1, v6

    .line 177
    .end local v6    # "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    .restart local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .local v2, "closed":Lio/ktor/utils/io/ClosedWriteChannelException;
    .local p0, "$i$f$use":I
    .local p1, "$i$a$-use-BaseApplicationResponse$respondWriteChannelContent$2":I
    :goto_3
    :try_start_2
    new-instance v5, Lio/ktor/util/cio/ChannelWriteException;

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-direct {v5, v4, v6, v3, v4}, Lio/ktor/util/cio/ChannelWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "$i$f$use":I
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    .end local v2    # "closed":Lio/ktor/utils/io/ClosedWriteChannelException;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local p0    # "$i$f$use":I
    .local p1, "cause$iv":Ljava/lang/Throwable;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_4
    :try_start_3
    invoke-interface {v1, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 332
    nop

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "$i$f$use":I
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 334
    .end local p1    # "cause$iv":Ljava/lang/Throwable;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v1    # "$this$use$iv":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local p0    # "$i$f$use":I
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception p1

    invoke-static {v1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final commitHeaders(Lio/ktor/http/content/OutgoingContent;)V
    .locals 9
    .param p1, "content"    # Lio/ktor/http/content/OutgoingContent;

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->responded:Z

    if-nez v0, :cond_8

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->responded:Z

    .line 57
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 59
    .local v1, "transferEncodingSet":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 323
    .local v2, "it":Lio/ktor/http/HttpStatusCode;
    const/4 v3, 0x0

    .line 59
    .local v3, "$i$a$-let-BaseApplicationResponse$commitHeaders$1":I
    invoke-virtual {p0, v2}, Lio/ktor/server/engine/BaseApplicationResponse;->status(Lio/ktor/http/HttpStatusCode;)V

    .end local v2    # "it":Lio/ktor/http/HttpStatusCode;
    .end local v3    # "$i$a$-let-BaseApplicationResponse$commitHeaders$1":I
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationResponse;->status()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v2}, Lio/ktor/http/HttpStatusCode$Companion;->getOK()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/ktor/server/engine/BaseApplicationResponse;->status(Lio/ktor/http/HttpStatusCode;)V

    goto :goto_0

    .line 60
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v2

    new-instance v3, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;

    invoke-direct {v3, v1, p1, p0}, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/ktor/http/content/OutgoingContent;Lio/ktor/server/engine/BaseApplicationResponse;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3}, Lio/ktor/http/Headers;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 79
    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->getContentLength()Ljava/lang/Long;

    move-result-object v2

    .line 80
    .local v2, "contentLength":Ljava/lang/Long;
    nop

    .line 81
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 83
    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v4

    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/ktor/server/engine/LongKt;->toStringFast(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lio/ktor/server/response/ResponseHeaders;->append(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 85
    :cond_2
    iget-boolean v4, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_4

    .line 86
    nop

    .line 87
    instance-of v4, p1, Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;

    if-nez v4, :cond_4

    .line 89
    instance-of v4, p1, Lio/ktor/http/content/OutgoingContent$NoContent;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v4

    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v4, v5, v6, v3}, Lio/ktor/server/response/ResponseHeaders;->append(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v4

    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chunked"

    invoke-virtual {v4, v5, v6, v3}, Lio/ktor/server/response/ResponseHeaders;->append(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v4

    if-eqz v4, :cond_5

    .local v4, "it":Lio/ktor/http/ContentType;
    const/4 v5, 0x0

    .line 96
    .local v5, "$i$a$-let-BaseApplicationResponse$commitHeaders$3":I
    invoke-virtual {p0}, Lio/ktor/server/engine/BaseApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v6

    sget-object v7, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lio/ktor/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Lio/ktor/server/response/ResponseHeaders;->append(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    nop

    .line 95
    .end local v4    # "it":Lio/ktor/http/ContentType;
    .end local v5    # "$i$a$-let-BaseApplicationResponse$commitHeaders$3":I
    nop

    .line 99
    :cond_5
    iget-object v3, p0, Lio/ktor/server/engine/BaseApplicationResponse;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v3

    sget-object v4, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getConnection()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/ktor/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "connection":Ljava/lang/String;
    if-eqz v3, :cond_7

    iget-object v4, p0, Lio/ktor/server/engine/BaseApplicationResponse;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/server/response/ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v4

    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getConnection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/ktor/server/response/ResponseHeaders;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 101
    nop

    .line 102
    const-string v4, "close"

    invoke-static {v3, v4, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "Connection"

    if-eqz v5, :cond_6

    move-object v0, p0

    check-cast v0, Lio/ktor/server/response/ApplicationResponse;

    invoke-static {v0, v6, v4}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 103
    :cond_6
    const-string v4, "keep-alive"

    invoke-static {v3, v4, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lio/ktor/server/response/ApplicationResponse;

    invoke-static {v0, v6, v4}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_7
    :goto_3
    return-void

    .line 54
    .end local v1    # "transferEncodingSet":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v2    # "contentLength":Ljava/lang/Long;
    .end local v3    # "connection":Ljava/lang/String;
    :cond_8
    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$ResponseAlreadySentException;

    invoke-direct {v0}, Lio/ktor/server/engine/BaseApplicationResponse$ResponseAlreadySentException;-><init>()V

    throw v0
.end method

.method public final getCall()Lio/ktor/server/application/ApplicationCall;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->call:Lio/ktor/server/application/ApplicationCall;

    return-object v0
.end method

.method public getCookies()Lio/ktor/server/response/ResponseCookies;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->cookies$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/server/response/ResponseCookies;

    return-object v0
.end method

.method public final getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->pipeline:Lio/ktor/server/response/ApplicationSendPipeline;

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->responded:Z

    return v0
.end method

.method public final isSent()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->isSent:Z

    return v0
.end method

.method public push(Lio/ktor/server/response/ResponsePushBuilder;)V
    .locals 3
    .param p1, "builder"    # Lio/ktor/server/response/ResponsePushBuilder;
    .annotation runtime Lio/ktor/server/response/UseHttp2Push;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    move-object v0, p0

    check-cast v0, Lio/ktor/server/response/ApplicationResponse;

    invoke-interface {p1}, Lio/ktor/server/response/ResponsePushBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/URLBuilder;->buildString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefetch"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/ktor/server/http/LinkHeaderKt;->link(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected respondFromBytes([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondFromBytes$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected respondFromChannel(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondFromChannel$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected respondNoContent(Lio/ktor/http/content/OutgoingContent$NoContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent$NoContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondNoContent$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/http/content/OutgoingContent$NoContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected respondOutgoingContent(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondOutgoingContent$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract respondUpgrade(Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected respondWriteChannelContent(Lio/ktor/http/content/OutgoingContent$WriteChannelContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent$WriteChannelContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondWriteChannelContent$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/http/content/OutgoingContent$WriteChannelContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract responseChannel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected abstract setStatus(Lio/ktor/http/HttpStatusCode;)V
.end method

.method public status()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationResponse;->_status:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public status(Lio/ktor/http/HttpStatusCode;)V
    .locals 1
    .param p1, "value"    # Lio/ktor/http/HttpStatusCode;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationResponse;->_status:Lio/ktor/http/HttpStatusCode;

    .line 39
    invoke-virtual {p0, p1}, Lio/ktor/server/engine/BaseApplicationResponse;->setStatus(Lio/ktor/http/HttpStatusCode;)V

    .line 40
    return-void
.end method
