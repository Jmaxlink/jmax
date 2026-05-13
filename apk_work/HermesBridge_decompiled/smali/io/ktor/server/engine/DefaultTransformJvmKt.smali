.class public final Lio/ktor/server/engine/DefaultTransformJvmKt;
.super Ljava/lang/Object;
.source "DefaultTransformJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultTransformJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTransformJvm.kt\nio/ktor/server/engine/DefaultTransformJvmKt\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n*L\n1#1,54:1\n75#2:55\n75#2:56\n75#2:57\n*S KotlinDebug\n*F\n+ 1 DefaultTransformJvm.kt\nio/ktor/server/engine/DefaultTransformJvmKt\n*L\n27#1:55\n36#1:56\n39#1:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a+\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\u0005H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a\u001e\u0010\n\u001a\u00020\u000b*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000c\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\r\u001a\u00020\u000e*\u00020\u000f2\n\u0010\u0010\u001a\u00060\u0011j\u0002`\u0012H\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "receiveGuardedInputStream",
        "Ljava/io/InputStream;",
        "channel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "defaultPlatformTransformations",
        "",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/server/application/ApplicationCall;",
        "query",
        "(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "multiPartData",
        "Lio/ktor/http/content/MultiPartData;",
        "rc",
        "readTextWithCustomCharset",
        "",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
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


# direct methods
.method public static final defaultPlatformTransformations(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$defaultPlatformTransformations"    # Lio/ktor/util/pipeline/PipelineContext;
    .param p1, "query"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Ljava/lang/Object;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 25
    instance-of v0, p1, Lio/ktor/utils/io/ByteReadChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 27
    .local v0, "channel":Lio/ktor/utils/io/ByteReadChannel;
    :cond_1
    move-object v2, p0

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v3, 0x0

    .line 55
    .local v3, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .line 27
    .end local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v3    # "$i$f$getCall":I
    invoke-static {v4}, Lio/ktor/server/application/ApplicationCallKt;->getReceiveType(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v2

    .line 28
    const-class v3, Ljava/io/InputStream;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lio/ktor/server/engine/DefaultTransformJvmKt;->receiveGuardedInputStream(Lio/ktor/utils/io/ByteReadChannel;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1

    .line 29
    :cond_2
    const-class v3, Lio/ktor/http/content/MultiPartData;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v0}, Lio/ktor/server/engine/DefaultTransformJvmKt;->multiPartData(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/http/content/MultiPartData;

    move-result-object v1

    goto :goto_1

    .line 30
    :cond_3
    nop

    .line 27
    :goto_1
    return-object v1
.end method

.method public static final multiPartData(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/http/content/MultiPartData;
    .locals 11
    .param p0, "$this$multiPartData"    # Lio/ktor/util/pipeline/PipelineContext;
    .param p1, "rc"    # Lio/ktor/utils/io/ByteReadChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ")",
            "Lio/ktor/http/content/MultiPartData;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v0, p0

    .local v0, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v1, 0x0

    .line 56
    .local v1, "$i$f$getCall":I
    invoke-virtual {v0}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/server/application/ApplicationCall;

    .line 36
    .end local v0    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v1    # "$i$f$getCall":I
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->header(Lio/ktor/server/request/ApplicationRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    .local v0, "contentType":Ljava/lang/String;
    move-object v1, p0

    .local v1, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$f$getCall":I
    invoke-virtual {v1}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/server/application/ApplicationCall;

    .line 39
    .end local v1    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v2    # "$i$f$getCall":I
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v1

    sget-object v2, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->header(Lio/ktor/server/request/ApplicationRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v6, v1

    .line 40
    .local v6, "contentLength":Ljava/lang/Long;
    new-instance v1, Lio/ktor/http/cio/CIOMultipartDataBase;

    .line 41
    invoke-virtual {p0}, Lio/ktor/util/pipeline/PipelineContext;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 42
    nop

    .line 43
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    .line 44
    nop

    .line 40
    const/16 v9, 0x30

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v10}, Lio/ktor/http/cio/CIOMultipartDataBase;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lio/ktor/http/content/MultiPartData;

    return-object v1

    .line 37
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v6    # "contentLength":Ljava/lang/Long;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content-Type header is required for multipart processing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final readTextWithCustomCharset(Lio/ktor/utils/io/core/ByteReadPacket;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$readTextWithCustomCharset"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/InputStreamReader;

    .line 49
    invoke-static {p0}, Lio/ktor/utils/io/streams/StreamsKt;->inputStream(Lio/ktor/utils/io/core/ByteReadPacket;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Reader;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final receiveGuardedInputStream(Lio/ktor/utils/io/ByteReadChannel;)Ljava/io/InputStream;
    .locals 2
    .param p0, "channel"    # Lio/ktor/utils/io/ByteReadChannel;

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->toInputStream$default(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
