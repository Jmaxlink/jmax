.class public final Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt;
.super Ljava/lang/Object;
.source "ApplicationReceiveFunctionsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationReceiveFunctionsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationReceiveFunctionsJvm.kt\nio/ktor/server/request/ApplicationReceiveFunctionsJvmKt\n+ 2 ApplicationReceiveFunctions.kt\nio/ktor/server/request/ApplicationReceiveFunctionsKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,17:1\n68#2:18\n69#2:22\n17#3,3:19\n*S KotlinDebug\n*F\n+ 1 ApplicationReceiveFunctionsJvm.kt\nio/ktor/server/request/ApplicationReceiveFunctionsJvmKt\n*L\n16#1:18\n16#1:22\n16#1:19,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0004"
    }
    d2 = {
        "receiveStream",
        "Ljava/io/InputStream;",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final receiveStream(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/InputStream;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;

    invoke-direct {v0, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$receiveStream":I
    const/4 v1, 0x0

    .local v1, "$i$f$receive":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local v1    # "$i$f$receive":I
    .end local p0    # "$i$f$receiveStream":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$receiveStream":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .local v2, "$i$f$receiveStream":I
    .local p0, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v3, 0x0

    .line 18
    .local v3, "$i$f$receive":I
    const/4 v4, 0x0

    .end local p0    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .local v4, "$i$f$typeInfo":I
    const-class v5, Ljava/io/InputStream;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 19
    nop

    .line 20
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 21
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Ljava/io/InputStream;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 18
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const/4 v5, 0x1

    iput v5, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsJvmKt$receiveStream$1;->label:I

    invoke-static {p0, v4, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    .line 16
    return-object v1

    .line 18
    :cond_1
    move v1, v3

    .end local v3    # "$i$f$receive":I
    .restart local v1    # "$i$f$receive":I
    :goto_1
    if-eqz p0, :cond_2

    .line 16
    .end local v1    # "$i$f$receive":I
    return-object p0

    .line 22
    .restart local v1    # "$i$f$receive":I
    :cond_2
    new-instance p0, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v3, 0x0

    .local v3, "$i$f$typeInfo":I
    const-class v4, Ljava/io/InputStream;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 19
    nop

    .line 20
    .local v4, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 21
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v6, Ljava/io/InputStream;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 22
    .end local v3    # "$i$f$typeInfo":I
    .end local v4    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v5    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-virtual {v3}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final receiveStream$$forInline(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$receiveStream"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/InputStream;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    .local v0, "$i$f$receiveStream":I
    move-object v1, p0

    .local v1, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 18
    .local v2, "$i$f$receive":I
    const/4 v3, 0x0

    .local v3, "$i$f$typeInfo":I
    const-class v4, Ljava/io/InputStream;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 19
    nop

    .line 20
    .local v4, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 21
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v6, Ljava/io/InputStream;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 18
    .end local v3    # "$i$f$typeInfo":I
    .end local v4    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v5    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v1, v6, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-eqz v3, :cond_0

    .line 22
    nop

    .line 16
    .end local v1    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$receive":I
    return-object v3

    .line 22
    .restart local v1    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .restart local v2    # "$i$f$receive":I
    :cond_0
    new-instance v3, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Ljava/io/InputStream;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 19
    nop

    .line 20
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 21
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Ljava/io/InputStream;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v7

    .line 22
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-virtual {v7}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw v3
.end method
