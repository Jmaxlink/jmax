.class public final Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt;
.super Ljava/lang/Object;
.source "ApplicationResponseFunctionsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationResponseFunctionsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationResponseFunctionsJvm.kt\nio/ktor/server/response/ApplicationResponseFunctionsJvmKt\n+ 2 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,95:1\n26#2,2:96\n29#2,2:101\n26#2,2:103\n29#2,2:108\n26#2,2:110\n29#2,2:115\n26#2,2:117\n29#2,2:122\n26#2,2:124\n29#2,2:129\n26#2,2:131\n29#2,2:136\n17#3,3:98\n17#3,3:105\n17#3,3:112\n17#3,3:119\n17#3,3:126\n17#3,3:133\n*S KotlinDebug\n*F\n+ 1 ApplicationResponseFunctionsJvm.kt\nio/ktor/server/response/ApplicationResponseFunctionsJvmKt\n*L\n25#1:96,2\n25#1:101,2\n40#1:103,2\n40#1:108,2\n52#1:110,2\n52#1:115,2\n60#1:117,2\n60#1:122,2\n76#1:124,2\n76#1:129,2\n93#1:131,2\n93#1:136,2\n25#1:98,3\n40#1:105,3\n52#1:112,3\n60#1:119,3\n76#1:126,3\n93#1:133,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001a8\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0019\u0008\u0002\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a@\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0019\u0008\u0002\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001ab\u0010\u000e\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\'\u0010\u0015\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0016\u00a2\u0006\u0002\u0008\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001a\u001aV\u0010\u000e\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\'\u0010\u0015\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0016\u00a2\u0006\u0002\u0008\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001b\u001ab\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\'\u0010\u001d\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0016\u00a2\u0006\u0002\u0008\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001a\u001aV\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\'\u0010\u001d\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0016\u00a2\u0006\u0002\u0008\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "respondFile",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "file",
        "Ljava/io/File;",
        "configure",
        "Lkotlin/Function1;",
        "Lio/ktor/http/content/OutgoingContent;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "baseDir",
        "fileName",
        "",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondOutputStream",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "status",
        "Lio/ktor/http/HttpStatusCode;",
        "contentLength",
        "",
        "producer",
        "Lkotlin/Function2;",
        "Ljava/io/OutputStream;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondTextWriter",
        "writer",
        "Ljava/io/Writer;",
        "ktor-server-core"
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
.method public static final respondFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondFile"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "configure"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1, v0}, Lio/ktor/server/http/content/LocalFileContentKt;->LocalFileContent$default(Ljava/io/File;Ljava/lang/String;Lio/ktor/http/ContentType;ILjava/lang/Object;)Lio/ktor/server/http/content/LocalFileContent;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .local v0, "message":Lio/ktor/server/http/content/LocalFileContent;
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 110
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_0

    instance-of v3, v0, [B

    if-nez v3, :cond_0

    .line 111
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/server/http/content/LocalFileContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 112
    nop

    .line 113
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 114
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/server/http/content/LocalFileContent;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 111
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 115
    :cond_0
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p4}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    return-object v3

    .line 116
    :cond_1
    nop

    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 53
    return-object v1
.end method

.method public static final respondFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondFile"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 59
    new-instance v0, Lio/ktor/server/http/content/LocalFileContent;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lio/ktor/server/http/content/LocalFileContent;-><init>(Ljava/io/File;Lio/ktor/http/ContentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .local v0, "message":Lio/ktor/server/http/content/LocalFileContent;
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 117
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_0

    instance-of v3, v0, [B

    if-nez v3, :cond_0

    .line 118
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/server/http/content/LocalFileContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 119
    nop

    .line 120
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 121
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/server/http/content/LocalFileContent;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 118
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 122
    :cond_0
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p3}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    return-object v3

    .line 123
    :cond_1
    nop

    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 61
    return-object v1
.end method

.method public static synthetic respondFile$default(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 49
    sget-object p3, Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt$respondFile$2;->INSTANCE:Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt$respondFile$2;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 46
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt;->respondFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic respondFile$default(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p2, Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt$respondFile$4;->INSTANCE:Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt$respondFile$4;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt;->respondFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final respondOutputStream(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondOutputStream"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p3, "contentLength"    # Ljava/lang/Long;
    .param p4, "producer"    # Lkotlin/jvm/functions/Function2;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/ContentType;",
            "Lio/ktor/http/HttpStatusCode;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/OutputStream;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    new-instance v0, Lio/ktor/http/content/OutputStreamContent;

    if-nez p1, :cond_0

    sget-object v1, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {v1}, Lio/ktor/http/ContentType$Application;->getOctetStream()Lio/ktor/http/ContentType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-direct {v0, p4, v1, p2, p3}, Lio/ktor/http/content/OutputStreamContent;-><init>(Lkotlin/jvm/functions/Function2;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;)V

    .line 91
    nop

    .line 93
    .local v0, "message":Lio/ktor/http/content/OutputStreamContent;
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_1

    instance-of v3, v0, [B

    if-nez v3, :cond_1

    .line 132
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/content/OutputStreamContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 133
    nop

    .line 134
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 135
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/content/OutputStreamContent;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 132
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 136
    :cond_1
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p5}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    return-object v3

    .line 137
    :cond_2
    nop

    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 94
    return-object v1
.end method

.method public static final respondOutputStream(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondOutputStream"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p3, "producer"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/ContentType;",
            "Lio/ktor/http/HttpStatusCode;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/OutputStream;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 39
    new-instance v7, Lio/ktor/http/content/OutputStreamContent;

    if-nez p1, :cond_0

    sget-object v0, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {v0}, Lio/ktor/http/ContentType$Application;->getOctetStream()Lio/ktor/http/ContentType;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/http/content/OutputStreamContent;-><init>(Lkotlin/jvm/functions/Function2;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .local v0, "message":Lio/ktor/http/content/OutputStreamContent;
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 103
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_1

    instance-of v3, v0, [B

    if-nez v3, :cond_1

    .line 104
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/content/OutputStreamContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 105
    nop

    .line 106
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 107
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/content/OutputStreamContent;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 104
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 108
    :cond_1
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p4}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    return-object v3

    .line 109
    :cond_2
    nop

    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    return-object v1
.end method

.method public static synthetic respondOutputStream$default(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 85
    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 86
    move-object v2, v0

    goto :goto_0

    .line 85
    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 87
    move-object v3, v0

    goto :goto_1

    .line 85
    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 88
    move-object v4, v0

    goto :goto_2

    .line 85
    :cond_2
    move-object v4, p3

    :goto_2
    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt;->respondOutputStream(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic respondOutputStream$default(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 34
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 35
    move-object p1, v0

    .line 34
    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 36
    move-object p2, v0

    .line 34
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt;->respondOutputStream(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final respondTextWriter(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondTextWriter"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p3, "contentLength"    # Ljava/lang/Long;
    .param p4, "writer"    # Lkotlin/jvm/functions/Function2;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/ContentType;",
            "Lio/ktor/http/HttpStatusCode;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/Writer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 75
    new-instance v0, Lio/ktor/http/content/WriterContent;

    invoke-static {p0, p1}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->defaultTextContentType(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;)Lio/ktor/http/ContentType;

    move-result-object v1

    invoke-direct {v0, p4, v1, p2, p3}, Lio/ktor/http/content/WriterContent;-><init>(Lkotlin/jvm/functions/Function2;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;)V

    .line 76
    .local v0, "message":Lio/ktor/http/content/WriterContent;
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 124
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_0

    instance-of v3, v0, [B

    if-nez v3, :cond_0

    .line 125
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/content/WriterContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 126
    nop

    .line 127
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 128
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/content/WriterContent;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 125
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 129
    :cond_0
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p5}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    return-object v3

    .line 130
    :cond_1
    nop

    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 77
    return-object v1
.end method

.method public static final respondTextWriter(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondTextWriter"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p3, "writer"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/ContentType;",
            "Lio/ktor/http/HttpStatusCode;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/Writer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 24
    new-instance v7, Lio/ktor/http/content/WriterContent;

    invoke-static {p0, p1}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->defaultTextContentType(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;)Lio/ktor/http/ContentType;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/http/content/WriterContent;-><init>(Lkotlin/jvm/functions/Function2;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .local v0, "message":Lio/ktor/http/content/WriterContent;
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 96
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_0

    instance-of v3, v0, [B

    if-nez v3, :cond_0

    .line 97
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/content/WriterContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 98
    nop

    .line 99
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 100
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/content/WriterContent;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 97
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 101
    :cond_0
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p4}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    return-object v3

    .line 102
    :cond_1
    nop

    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    return-object v1
.end method

.method public static synthetic respondTextWriter$default(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 69
    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 70
    move-object v2, v0

    goto :goto_0

    .line 69
    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 71
    move-object v3, v0

    goto :goto_1

    .line 69
    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 72
    move-object v4, v0

    goto :goto_2

    .line 69
    :cond_2
    move-object v4, p3

    :goto_2
    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt;->respondTextWriter(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic respondTextWriter$default(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 19
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 20
    move-object p1, v0

    .line 19
    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 21
    move-object p2, v0

    .line 19
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/response/ApplicationResponseFunctionsJvmKt;->respondTextWriter(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
