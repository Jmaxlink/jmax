.class public final Lio/ktor/server/engine/DefaultTransformKt;
.super Ljava/lang/Object;
.source "DefaultTransform.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTransform.kt\nio/ktor/server/engine/DefaultTransformKt\n+ 2 Packet.kt\nio/ktor/utils/io/core/PacketKt\n*L\n1#1,127:1\n39#2:128\n*S KotlinDebug\n*F\n+ 1 DefaultTransform.kt\nio/ktor/server/engine/DefaultTransformKt\n*L\n111#1:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a-\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\nH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a\n\u0010\u000c\u001a\u00020\r*\u00020\u000e\u001a\n\u0010\u000c\u001a\u00020\r*\u00020\u000f\u001a!\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0080@\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u0016\"\u0018\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u000b\n\u0005\u0008\u009920\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "LOGGER",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "getLOGGER",
        "()Lorg/slf4j/Logger;",
        "withContentType",
        "R",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "block",
        "Lkotlin/Function0;",
        "(Lio/ktor/server/application/ApplicationCall;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "installDefaultTransformations",
        "",
        "Lio/ktor/server/request/ApplicationReceivePipeline;",
        "Lio/ktor/server/response/ApplicationSendPipeline;",
        "readText",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-server-host-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "io.ktor.server.engine.DefaultTransform"

    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/server/engine/DefaultTransformKt;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public static final getLOGGER()Lorg/slf4j/Logger;
    .locals 1

    .line 21
    sget-object v0, Lio/ktor/server/engine/DefaultTransformKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final installDefaultTransformations(Lio/ktor/server/request/ApplicationReceivePipeline;)V
    .locals 3
    .param p0, "$this$installDefaultTransformations"    # Lio/ktor/server/request/ApplicationReceivePipeline;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lio/ktor/server/request/ApplicationReceivePipeline;->Phases:Lio/ktor/server/request/ApplicationReceivePipeline$Phases;

    invoke-virtual {v0}, Lio/ktor/server/request/ApplicationReceivePipeline$Phases;->getTransform()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    new-instance v1, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0, v1}, Lio/ktor/server/request/ApplicationReceivePipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 81
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "AfterTransform"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "afterTransform":Lio/ktor/util/pipeline/PipelinePhase;
    sget-object v1, Lio/ktor/server/request/ApplicationReceivePipeline;->Phases:Lio/ktor/server/request/ApplicationReceivePipeline$Phases;

    invoke-virtual {v1}, Lio/ktor/server/request/ApplicationReceivePipeline$Phases;->getTransform()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lio/ktor/server/request/ApplicationReceivePipeline;->insertPhaseAfter(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 83
    new-instance v1, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;

    invoke-direct {v1, v2}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0, v1}, Lio/ktor/server/request/ApplicationReceivePipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 90
    return-void
.end method

.method public static final installDefaultTransformations(Lio/ktor/server/response/ApplicationSendPipeline;)V
    .locals 3
    .param p0, "$this$installDefaultTransformations"    # Lio/ktor/server/response/ApplicationSendPipeline;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Phases:Lio/ktor/server/response/ApplicationSendPipeline$Phases;

    invoke-virtual {v0}, Lio/ktor/server/response/ApplicationSendPipeline$Phases;->getRender()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    new-instance v1, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0, v1}, Lio/ktor/server/response/ApplicationSendPipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 31
    return-void
.end method

.method public static final readText(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/charset/Charset;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/engine/DefaultTransformKt$readText$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/engine/DefaultTransformKt$readText$1;

    iget v1, v0, Lio/ktor/server/engine/DefaultTransformKt$readText$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/engine/DefaultTransformKt$readText$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/engine/DefaultTransformKt$readText$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/engine/DefaultTransformKt$readText$1;

    invoke-direct {v0, p2}, Lio/ktor/server/engine/DefaultTransformKt$readText$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/engine/DefaultTransformKt$readText$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 107
    iget v2, p2, Lio/ktor/server/engine/DefaultTransformKt$readText$1;->label:I

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
    iget-object p0, p2, Lio/ktor/server/engine/DefaultTransformKt$readText$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/nio/charset/Charset;

    .local p0, "charset":Ljava/nio/charset/Charset;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "charset":Ljava/nio/charset/Charset;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    .local p0, "$this$readText":Lio/ktor/utils/io/ByteReadChannel;
    .local p1, "charset":Ljava/nio/charset/Charset;
    iput-object p1, p2, Lio/ktor/server/engine/DefaultTransformKt$readText$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/server/engine/DefaultTransformKt$readText$1;->label:I

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {p0, v2, v3, p2}, Lio/ktor/utils/io/ByteReadChannel;->readRemaining(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$readText":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 107
    return-object v1

    :cond_1
    :goto_1
    check-cast p0, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 111
    .local p0, "content":Lio/ktor/utils/io/core/ByteReadPacket;
    move-object v1, p0

    .local v1, "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$isEmpty":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v1

    .line 111
    .end local v1    # "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v2    # "$i$f$isEmpty":I
    if-eqz v1, :cond_2

    .line 112
    .end local p0    # "content":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    const-string p0, ""

    return-object p0

    .line 115
    .restart local p0    # "content":Lio/ktor/utils/io/core/ByteReadPacket;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_2
    nop

    .line 116
    :try_start_0
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 119
    :cond_3
    invoke-static {p0, p1}, Lio/ktor/server/engine/DefaultTransformJvmKt;->readTextWithCustomCharset(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 117
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_4
    :goto_2
    move-object p1, p0

    check-cast p1, Lio/ktor/utils/io/core/Input;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Lio/ktor/utils/io/core/Input;->readText$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_3
    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 123
    .end local p0    # "content":Lio/ktor/utils/io/core/ByteReadPacket;
    nop

    .line 115
    .restart local p0    # "content":Lio/ktor/utils/io/core/ByteReadPacket;
    return-object v1

    .line 122
    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final withContentType(Lio/ktor/server/application/ApplicationCall;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6
    .param p0, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 98
    .local v0, "$i$f$withContentType":I
    nop

    .line 99
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-object v1

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "parseFailure":Lio/ktor/http/BadContentTypeFormatException;
    new-instance v2, Lio/ktor/server/plugins/BadRequestException;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal Content-Type header format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v4

    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/ktor/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    .line 101
    invoke-direct {v2, v3, v4}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
