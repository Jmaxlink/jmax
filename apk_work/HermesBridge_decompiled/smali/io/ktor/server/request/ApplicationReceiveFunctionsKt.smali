.class public final Lio/ktor/server/request/ApplicationReceiveFunctionsKt;
.super Ljava/lang/Object;
.source "ApplicationReceiveFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationReceiveFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationReceiveFunctions.kt\nio/ktor/server/request/ApplicationReceiveFunctionsKt\n+ 2 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,217:1\n180#1:230\n68#1:231\n69#1:235\n180#1:236\n68#1,2:237\n68#1:239\n69#1:243\n68#1,2:244\n68#1:246\n69#1:250\n68#1,2:251\n68#1:253\n69#1:257\n68#1,2:258\n17#2,3:218\n17#2,3:221\n17#2,3:224\n17#2,3:227\n17#2,3:232\n17#2,3:240\n17#2,3:247\n17#2,3:254\n*S KotlinDebug\n*F\n+ 1 ApplicationReceiveFunctions.kt\nio/ktor/server/request/ApplicationReceiveFunctionsKt\n*L\n172#1:230\n172#1:231\n172#1:235\n172#1:236\n172#1:237,2\n180#1:239\n180#1:243\n180#1:244,2\n187#1:246\n187#1:250\n187#1:251,2\n194#1:253\n194#1:257\n194#1:258,2\n61#1:218,3\n68#1:221,3\n69#1:224,3\n76#1:227,3\n172#1:232,3\n180#1:240,3\n187#1:247,3\n194#1:254,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a!\u0010\u0003\u001a\u0002H\u0004\"\n\u0008\u0000\u0010\u0004\u0018\u0001*\u00020\u0005*\u00020\u0006H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a#\u0010\u0003\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a-\u0010\u0003\u001a\u0002H\u0004\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0005*\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u000cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a\u0015\u0010\u000e\u001a\u00020\u000f*\u00020\u0006H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0015\u0010\u0010\u001a\u00020\u0011*\u00020\u0006H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u001f\u0010\u0012\u001a\u0004\u0018\u0001H\u0004\"\u0006\u0008\u0000\u0010\u0004\u0018\u0001*\u00020\u0006H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a%\u0010\u0012\u001a\u0004\u0018\u0001H\u0004\"\u0004\u0008\u0000\u0010\u0004*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a#\u0010\u0013\u001a\u0004\u0018\u0001H\u0004\"\n\u0008\u0000\u0010\u0004\u0018\u0001*\u00020\u0005*\u00020\u0006H\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a)\u0010\u0013\u001a\u0004\u0018\u0001H\u0004\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0005*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a/\u0010\u0013\u001a\u0004\u0018\u0001H\u0004\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0005*\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u000cH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a\u0015\u0010\u0014\u001a\u00020\u0015*\u00020\u0006H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0015\u0010\u0016\u001a\u00020\u0017*\u00020\u0006H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000*\n\u0010\u0018\"\u00020\u00192\u00020\u0019\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "DoubleReceivePreventionTokenKey",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/server/request/DoubleReceivePreventionToken;",
        "receive",
        "T",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "typeInfo",
        "Lio/ktor/util/reflect/TypeInfo;",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "type",
        "Lkotlin/reflect/KClass;",
        "(Lio/ktor/server/application/ApplicationCall;Lkotlin/reflect/KClass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "receiveMultipart",
        "Lio/ktor/http/content/MultiPartData;",
        "receiveNullable",
        "receiveOrNull",
        "receiveParameters",
        "Lio/ktor/http/Parameters;",
        "receiveText",
        "",
        "ContentTransformationException",
        "Lio/ktor/server/plugins/ContentTransformationException;",
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


# static fields
.field private static final DoubleReceivePreventionTokenKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/request/DoubleReceivePreventionToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 208
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "DoubleReceivePreventionToken"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->DoubleReceivePreventionTokenKey:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public static final receive(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;

    invoke-direct {v0, p2}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 121
    iget v2, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;->label:I

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
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$receive":Lio/ktor/server/application/ApplicationCall;
    .local p1, "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$3;->label:I

    invoke-static {p0, p1, p2}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$receive":Lio/ktor/server/application/ApplicationCall;
    .end local p1    # "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    if-ne p0, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic receive(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$receive"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    .local v0, "$i$f$receive":I
    const/4 v1, 0x0

    .local v1, "$i$f$typeInfo":I
    const/4 v2, 0x6

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 221
    const/4 v4, 0x0

    move-object v5, v4

    .line 222
    .local v5, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 223
    .local v6, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v7, 0x4

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v6, v8, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v8

    .line 68
    .end local v1    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v8, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-eqz v1, :cond_0

    .line 69
    return-object v1

    :cond_0
    new-instance v1, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v5, 0x0

    .local v5, "$i$f$typeInfo":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 224
    move-object v2, v4

    .line 225
    .local v2, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 226
    .local v4, "reifiedType$iv":Ljava/lang/reflect/Type;
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 69
    .end local v2    # "kType$iv":Lkotlin/reflect/KType;
    .end local v4    # "reifiedType$iv":Ljava/lang/reflect/Type;
    .end local v5    # "$i$f$typeInfo":I
    invoke-virtual {v3}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw v1
.end method

.method public static final receive(Lio/ktor/server/application/ApplicationCall;Lkotlin/reflect/KClass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;

    invoke-direct {v0, p2}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 84
    iget v2, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;->label:I

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
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    .local p0, "$this$receive":Lio/ktor/server/application/ApplicationCall;
    .local p1, "type":Lkotlin/reflect/KClass;
    invoke-static {p1}, Lio/ktor/server/application/internal/TypeUtilsJvmKt;->starProjectedTypeBridge(Lkotlin/reflect/KClass;)Lkotlin/reflect/KType;

    move-result-object v2

    .line 86
    .local v2, "kotlinType":Lkotlin/reflect/KType;
    new-instance v3, Lio/ktor/util/reflect/TypeInfo;

    invoke-static {v2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->getPlatformType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v3, p1, v4, v2}, Lio/ktor/util/reflect/TypeInfo;-><init>(Lkotlin/reflect/KClass;Ljava/lang/reflect/Type;Lkotlin/reflect/KType;)V

    const/4 v4, 0x1

    iput v4, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receive$2;->label:I

    invoke-static {p0, v3, p2}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v2    # "kotlinType":Lkotlin/reflect/KType;
    .end local p0    # "$this$receive":Lio/ktor/server/application/ApplicationCall;
    .end local p1    # "type":Lkotlin/reflect/KClass;
    if-ne p0, v1, :cond_1

    .line 84
    return-object v1

    .line 86
    :cond_1
    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final receiveChannel(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;

    invoke-direct {v0, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 180
    iget v2, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;->label:I

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

    .local p0, "$i$f$receiveChannel":I
    const/4 v1, 0x0

    .local v1, "$i$f$receive":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local v1    # "$i$f$receive":I
    .end local p0    # "$i$f$receiveChannel":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$receiveChannel":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .local v2, "$i$f$receiveChannel":I
    .local p0, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v3, 0x0

    .line 239
    .local v3, "$i$f$receive":I
    const/4 v4, 0x0

    .end local p0    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 240
    nop

    .line 241
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 242
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 239
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const/4 v5, 0x1

    iput v5, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveChannel$1;->label:I

    invoke-static {p0, v4, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    .line 180
    return-object v1

    .line 239
    :cond_1
    move v1, v3

    .end local v3    # "$i$f$receive":I
    .restart local v1    # "$i$f$receive":I
    :goto_1
    if-eqz p0, :cond_2

    .line 180
    .end local v1    # "$i$f$receive":I
    return-object p0

    .line 243
    .restart local v1    # "$i$f$receive":I
    :cond_2
    new-instance p0, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v3, 0x0

    .local v3, "$i$f$typeInfo":I
    const-class v4, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 240
    nop

    .line 241
    .local v4, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 242
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v6, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 243
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

.method private static final receiveChannel$$forInline(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$receiveChannel"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    .local v0, "$i$f$receiveChannel":I
    move-object v1, p0

    .local v1, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 244
    .local v2, "$i$f$receive":I
    const/4 v3, 0x0

    .local v3, "$i$f$typeInfo":I
    const-class v4, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 240
    nop

    .line 241
    .local v4, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 242
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v6, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 244
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

    .line 245
    nop

    .line 180
    .end local v1    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$receive":I
    return-object v3

    .line 245
    .restart local v1    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .restart local v2    # "$i$f$receive":I
    :cond_0
    new-instance v3, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 240
    nop

    .line 241
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 242
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v7

    .line 245
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-virtual {v7}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw v3
.end method

.method public static final receiveMultipart(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/MultiPartData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;

    invoke-direct {v0, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 187
    iget v2, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;->label:I

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

    .local p0, "$i$f$receiveMultipart":I
    const/4 v1, 0x0

    .local v1, "$i$f$receive":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local v1    # "$i$f$receive":I
    .end local p0    # "$i$f$receiveMultipart":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$receiveMultipart":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .local v2, "$i$f$receiveMultipart":I
    .local p0, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v3, 0x0

    .line 246
    .local v3, "$i$f$receive":I
    const/4 v4, 0x0

    .end local p0    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/content/MultiPartData;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 247
    nop

    .line 248
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 249
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/content/MultiPartData;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 246
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const/4 v5, 0x1

    iput v5, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;->label:I

    invoke-static {p0, v4, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    .line 187
    return-object v1

    .line 246
    :cond_1
    move v1, v3

    .end local v3    # "$i$f$receive":I
    .restart local v1    # "$i$f$receive":I
    :goto_1
    if-eqz p0, :cond_2

    .line 187
    .end local v1    # "$i$f$receive":I
    return-object p0

    .line 250
    .restart local v1    # "$i$f$receive":I
    :cond_2
    new-instance p0, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v3, 0x0

    .local v3, "$i$f$typeInfo":I
    const-class v4, Lio/ktor/http/content/MultiPartData;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 247
    nop

    .line 248
    .local v4, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 249
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v6, Lio/ktor/http/content/MultiPartData;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 250
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

.method private static final receiveMultipart$$forInline(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$receiveMultipart"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/MultiPartData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    .local v0, "$i$f$receiveMultipart":I
    move-object v1, p0

    .local v1, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 251
    .local v2, "$i$f$receive":I
    const/4 v3, 0x0

    .local v3, "$i$f$typeInfo":I
    const-class v4, Lio/ktor/http/content/MultiPartData;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 247
    nop

    .line 248
    .local v4, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 249
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v6, Lio/ktor/http/content/MultiPartData;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 251
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

    .line 252
    nop

    .line 187
    .end local v1    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$receive":I
    return-object v3

    .line 252
    .restart local v1    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .restart local v2    # "$i$f$receive":I
    :cond_0
    new-instance v3, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/content/MultiPartData;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 247
    nop

    .line 248
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 249
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/content/MultiPartData;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v7

    .line 252
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-virtual {v7}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw v3
.end method

.method public static final receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;

    invoke-direct {v0, p2}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget v2, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;->label:I

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
    iget-object p0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/util/reflect/TypeInfo;

    .local p0, "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    .local p0, "$this$receiveNullable":Lio/ktor/server/application/ApplicationCall;
    .local p1, "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v2

    sget-object v3, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->DoubleReceivePreventionTokenKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v2, v3}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/server/request/DoubleReceivePreventionToken;

    .line 97
    .local v2, "token":Lio/ktor/server/request/DoubleReceivePreventionToken;
    if-nez v2, :cond_1

    .line 98
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v3

    sget-object v4, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->DoubleReceivePreventionTokenKey:Lio/ktor/util/AttributeKey;

    sget-object v5, Lio/ktor/server/request/DoubleReceivePreventionToken;->INSTANCE:Lio/ktor/server/request/DoubleReceivePreventionToken;

    invoke-interface {v3, v4, v5}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    .line 101
    :cond_1
    invoke-static {p0, p1}, Lio/ktor/server/application/ApplicationCallKt;->setReceiveType(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;)V

    .line 102
    if-nez v2, :cond_2

    .end local v2    # "token":Lio/ktor/server/request/DoubleReceivePreventionToken;
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/server/request/ApplicationRequest;->receiveChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v2

    .line 103
    .local v2, "incomingContent":Ljava/lang/Object;
    :cond_2
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/request/ApplicationRequest;->getPipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v3

    iput-object p1, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveNullable$2;->label:I

    invoke-virtual {v3, p0, v2, p2}, Lio/ktor/server/request/ApplicationReceivePipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v2    # "incomingContent":Ljava/lang/Object;
    .end local p0    # "$this$receiveNullable":Lio/ktor/server/application/ApplicationCall;
    if-ne p0, v1, :cond_3

    .line 95
    return-object v1

    :cond_3
    :goto_1
    nop

    .line 104
    .local p0, "transformed":Ljava/lang/Object;
    nop

    .line 105
    sget-object v1, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_4
    sget-object v1, Lio/ktor/server/request/DoubleReceivePreventionToken;->INSTANCE:Lio/ktor/server/request/DoubleReceivePreventionToken;

    if-eq p0, v1, :cond_6

    .line 107
    invoke-virtual {p1}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1, p0}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    return-object p0

    .line 107
    :cond_5
    new-instance v1, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    invoke-virtual {p1}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw v1

    .line 106
    :cond_6
    new-instance v1, Lio/ktor/server/request/RequestAlreadyConsumedException;

    invoke-direct {v1}, Lio/ktor/server/request/RequestAlreadyConsumedException;-><init>()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic receiveNullable(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$receiveNullable"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    .local v0, "$i$f$receiveNullable":I
    const/4 v1, 0x0

    .local v1, "$i$f$typeInfo":I
    const/4 v2, 0x6

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 229
    .local v4, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v5, 0x4

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 76
    .end local v1    # "$i$f$typeInfo":I
    .end local v2    # "kType$iv":Lkotlin/reflect/KType;
    .end local v4    # "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v3, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object v1
.end method

.method public static final receiveOrNull(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "receiveOrNull is ambiguous with receiveNullable and going to be removed in 3.0.0. Please consider replacing it with runCatching with receive or receiveNullable"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "kotlin.runCatching { this.receiveNullable<T>() }.getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    instance-of v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;

    invoke-direct {v0, p2}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 134
    iget v2, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;->label:I

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
    iget-object p0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/server/application/ApplicationCall;

    .local p0, "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/server/plugins/ContentTransformationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_1

    .end local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    .restart local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    .local p1, "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    nop

    .line 136
    :try_start_1
    iput-object p0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$2;->label:I

    invoke-static {p0, p1, p2}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lio/ktor/server/plugins/ContentTransformationException; {:try_start_1 .. :try_end_1} :catch_0

    .end local p1    # "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    if-ne v2, v1, :cond_1

    .line 134
    return-object v1

    .line 136
    :cond_1
    :goto_1
    nop

    .end local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    goto :goto_2

    .line 137
    .restart local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    :catch_0
    move-exception p1

    .line 138
    .local p1, "cause":Lio/ktor/server/plugins/ContentTransformationException;
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/server/application/ApplicationKt;->getLog(Lio/ktor/server/application/Application;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Conversion failed, null returned"

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 135
    .end local p1    # "cause":Lio/ktor/server/plugins/ContentTransformationException;
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic receiveOrNull(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$receiveOrNull"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "receiveOrNull is ambiguous with receiveNullable and going to be removed in 3.0.0. Please consider replacing it with runCatching with receive or receiveNullable"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "kotlin.runCatching { this.receiveNullable<T>() }.getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v0, 0x0

    .line 61
    .local v0, "$i$f$receiveOrNull":I
    const/4 v1, 0x0

    .local v1, "$i$f$typeInfo":I
    const/4 v2, 0x6

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 220
    .local v4, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v5, 0x4

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 61
    .end local v1    # "$i$f$typeInfo":I
    .end local v2    # "kType$iv":Lkotlin/reflect/KType;
    .end local v4    # "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v3, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveOrNull(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object v1
.end method

.method public static final receiveOrNull(Lio/ktor/server/application/ApplicationCall;Lkotlin/reflect/KClass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "receiveOrNull is ambiguous with receiveNullable and going to be removed in 3.0.0. Please consider replacing it with runCatching with receive or receiveNullable"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "kotlin.runCatching { this.receiveNullable<T>() }.getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    instance-of v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;

    invoke-direct {v0, p2}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 154
    iget v2, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;->label:I

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
    iget-object p0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/server/application/ApplicationCall;

    .local p0, "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/server/plugins/ContentTransformationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_1

    .end local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    .restart local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    .local p1, "type":Lkotlin/reflect/KClass;
    :try_start_1
    iput-object p0, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveOrNull$3;->label:I

    invoke-static {p0, p1, p2}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receive(Lio/ktor/server/application/ApplicationCall;Lkotlin/reflect/KClass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lio/ktor/server/plugins/ContentTransformationException; {:try_start_1 .. :try_end_1} :catch_0

    .end local p1    # "type":Lkotlin/reflect/KClass;
    if-ne v2, v1, :cond_1

    .line 154
    return-object v1

    .line 155
    :cond_1
    :goto_1
    nop

    .end local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    goto :goto_2

    .line 156
    .restart local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    :catch_0
    move-exception p1

    .line 157
    .local p1, "cause":Lio/ktor/server/plugins/ContentTransformationException;
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/server/application/ApplicationKt;->getLog(Lio/ktor/server/application/Application;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Conversion failed, null returned"

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local p0    # "$this$receiveOrNull":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 159
    .end local p1    # "cause":Lio/ktor/server/plugins/ContentTransformationException;
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final receiveParameters(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/Parameters;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;

    invoke-direct {v0, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 194
    iget v2, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;->label:I

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

    .local p0, "$i$f$receiveParameters":I
    const/4 v1, 0x0

    .local v1, "$i$f$receive":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, p0

    move-object p0, v0

    goto :goto_1

    .end local v1    # "$i$f$receive":I
    .end local p0    # "$i$f$receiveParameters":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$receiveParameters":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .local v2, "$i$f$receiveParameters":I
    .local p0, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v3, 0x0

    .line 253
    .local v3, "$i$f$receive":I
    const/4 v4, 0x0

    .end local p0    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/Parameters;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 254
    nop

    .line 255
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 256
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/Parameters;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 253
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const/4 v5, 0x1

    iput v5, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveParameters$1;->label:I

    invoke-static {p0, v4, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    .line 194
    return-object v1

    .line 253
    :cond_1
    move v1, v3

    .end local v3    # "$i$f$receive":I
    .restart local v1    # "$i$f$receive":I
    :goto_1
    if-eqz p0, :cond_2

    .line 194
    .end local v1    # "$i$f$receive":I
    return-object p0

    .line 257
    .restart local v1    # "$i$f$receive":I
    :cond_2
    new-instance p0, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v3, 0x0

    .local v3, "$i$f$typeInfo":I
    const-class v4, Lio/ktor/http/Parameters;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 254
    nop

    .line 255
    .local v4, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 256
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v6, Lio/ktor/http/Parameters;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 257
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

.method private static final receiveParameters$$forInline(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$receiveParameters"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/Parameters;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    .local v0, "$i$f$receiveParameters":I
    move-object v1, p0

    .local v1, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 258
    .local v2, "$i$f$receive":I
    const/4 v3, 0x0

    .local v3, "$i$f$typeInfo":I
    const-class v4, Lio/ktor/http/Parameters;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 254
    nop

    .line 255
    .local v4, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 256
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v6, Lio/ktor/http/Parameters;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 258
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

    .line 259
    nop

    .line 194
    .end local v1    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$receive":I
    return-object v3

    .line 259
    .restart local v1    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .restart local v2    # "$i$f$receive":I
    :cond_0
    new-instance v3, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/Parameters;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 254
    nop

    .line 255
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 256
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/Parameters;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v7

    .line 259
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-virtual {v7}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw v3
.end method

.method public static final receiveText(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;

    iget v1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;

    invoke-direct {v0, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v6, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->result:Ljava/lang/Object;

    .local v6, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 166
    iget v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->label:I

    const/4 v8, 0x2

    packed-switch v0, :pswitch_data_0

    .end local v6    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$receiveText":I
    iget-object v0, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/nio/charset/Charset;

    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, p0

    move-object p0, v6

    goto :goto_2

    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local p0    # "$i$f$receiveText":I
    :pswitch_1
    const/4 p0, 0x0

    .restart local p0    # "$i$f$receiveText":I
    const/4 v0, 0x0

    .local v0, "$i$f$receiveChannel":I
    const/4 v1, 0x0

    .local v1, "$i$f$receive":I
    iget-object v2, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/nio/charset/Charset;

    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, p0

    move-object v10, v2

    move-object p0, v6

    goto :goto_1

    .end local v0    # "$i$f$receiveChannel":I
    .end local v1    # "$i$f$receive":I
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local p0    # "$i$f$receiveText":I
    :pswitch_2
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$receiveText":Lio/ktor/server/application/ApplicationCall;
    const/4 v0, 0x0

    .line 167
    .local v0, "$i$f$receiveText":I
    nop

    .line 168
    :try_start_0
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->contentCharset(Lio/ktor/server/request/ApplicationRequest;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_1
    nop

    .line 172
    .local v1, "charset":Ljava/nio/charset/Charset;
    nop

    .local p0, "$this$receiveChannel$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 230
    .local v2, "$i$f$receiveChannel":I
    nop

    .local p0, "$this$receive$iv$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v3, 0x0

    .line 231
    .local v3, "$i$f$receive":I
    const/4 v4, 0x0

    .end local p0    # "$this$receive$iv$iv":Lio/ktor/server/application/ApplicationCall;
    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 232
    nop

    .line 233
    .local v5, "kType$iv$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 234
    .local v9, "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    const-class v10, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 231
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv$iv":Lkotlin/reflect/KType;
    .end local v9    # "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    iput-object v1, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->label:I

    invoke-static {p0, v4, p1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v7, :cond_2

    .line 166
    return-object v7

    .line 231
    :cond_2
    move v9, v0

    move-object v10, v1

    move v0, v2

    move v1, v3

    .end local v2    # "$i$f$receiveChannel":I
    .end local v3    # "$i$f$receive":I
    .local v0, "$i$f$receiveChannel":I
    .local v1, "$i$f$receive":I
    .local v9, "$i$f$receiveText":I
    .local v10, "charset":Ljava/nio/charset/Charset;
    :goto_1
    if-eqz p0, :cond_4

    .line 230
    .end local v1    # "$i$f$receive":I
    nop

    .end local v0    # "$i$f$receiveChannel":I
    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    .line 172
    iput-object v10, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->L$0:Ljava/lang/Object;

    iput v8, p1, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveText$1;->label:I

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/ByteReadChannel$DefaultImpls;->readRemaining$default(Lio/ktor/utils/io/ByteReadChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v7, :cond_3

    .line 166
    return-object v7

    .line 172
    :cond_3
    move-object v0, v10

    .end local v10    # "charset":Ljava/nio/charset/Charset;
    .local v0, "charset":Ljava/nio/charset/Charset;
    :goto_2
    check-cast p0, Lio/ktor/utils/io/core/Input;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v8, v2}, Lio/ktor/utils/io/core/StringsKt;->readText$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 235
    .local v0, "$i$f$receiveChannel":I
    .restart local v1    # "$i$f$receive":I
    .restart local v10    # "charset":Ljava/nio/charset/Charset;
    :cond_4
    new-instance p0, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v2, 0x0

    .local v2, "$i$f$typeInfo":I
    const-class v3, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    .line 232
    nop

    .line 233
    .local v3, "kType$iv$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v3}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 234
    .local v4, "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    const-class v5, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v2

    .line 235
    .end local v2    # "$i$f$typeInfo":I
    .end local v3    # "kType$iv$iv$iv":Lkotlin/reflect/KType;
    .end local v4    # "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    invoke-virtual {v2}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw p0

    .line 169
    .end local v1    # "$i$f$receive":I
    .end local v9    # "$i$f$receiveText":I
    .end local v10    # "charset":Ljava/nio/charset/Charset;
    .local v0, "$i$f$receiveText":I
    .local p0, "$this$receiveText":Lio/ktor/server/application/ApplicationCall;
    :catch_0
    move-exception v1

    .line 170
    .local v1, "cause":Lio/ktor/http/BadContentTypeFormatException;
    new-instance v2, Lio/ktor/server/plugins/BadRequestException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal Content-Type format: "

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

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final receiveText$$forInline(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p0, "$this$receiveText"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 167
    .local v1, "$i$f$receiveText":I
    nop

    .line 168
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->contentCharset(Lio/ktor/server/request/ApplicationRequest;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    nop

    .line 172
    .local v0, "charset":Ljava/nio/charset/Charset;
    move-object/from16 v2, p0

    .local v2, "$this$receiveChannel$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v3, 0x0

    .line 236
    .local v3, "$i$f$receiveChannel":I
    move-object v4, v2

    .local v4, "$this$receive$iv$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v5, 0x0

    .line 237
    .local v5, "$i$f$receive":I
    const/4 v6, 0x0

    .local v6, "$i$f$typeInfo":I
    const-class v7, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    .line 232
    nop

    .line 233
    .local v7, "kType$iv$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v7}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 234
    .local v8, "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    const-class v9, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v9

    .line 237
    .end local v6    # "$i$f$typeInfo":I
    .end local v7    # "kType$iv$iv$iv":Lkotlin/reflect/KType;
    .end local v8    # "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    const/4 v6, 0x0

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object/from16 v7, p1

    invoke-static {v4, v9, v7}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-eqz v8, :cond_1

    .line 238
    nop

    .line 236
    .end local v4    # "$this$receive$iv$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v5    # "$i$f$receive":I
    nop

    .end local v2    # "$this$receiveChannel$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v3    # "$i$f$receiveChannel":I
    move-object v10, v8

    check-cast v10, Lio/ktor/utils/io/ByteReadChannel;

    .line 172
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v10 .. v15}, Lio/ktor/utils/io/ByteReadChannel$DefaultImpls;->readRemaining$default(Lio/ktor/utils/io/ByteReadChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v2, Lio/ktor/utils/io/core/Input;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v6, v3, v4}, Lio/ktor/utils/io/core/StringsKt;->readText$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 238
    .restart local v2    # "$this$receiveChannel$iv":Lio/ktor/server/application/ApplicationCall;
    .restart local v3    # "$i$f$receiveChannel":I
    .restart local v4    # "$this$receive$iv$iv":Lio/ktor/server/application/ApplicationCall;
    .restart local v5    # "$i$f$receive":I
    :cond_1
    new-instance v6, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v8, 0x0

    .local v8, "$i$f$typeInfo":I
    const-class v9, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    .line 232
    nop

    .line 233
    .local v9, "kType$iv$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v9}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 234
    .local v10, "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    const-class v11, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v11

    .line 238
    .end local v8    # "$i$f$typeInfo":I
    .end local v9    # "kType$iv$iv$iv":Lkotlin/reflect/KType;
    .end local v10    # "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    invoke-virtual {v11}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v8}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw v6

    .line 169
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "$this$receiveChannel$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v3    # "$i$f$receiveChannel":I
    .end local v4    # "$this$receive$iv$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v5    # "$i$f$receive":I
    :catch_0
    move-exception v0

    move-object/from16 v7, p1

    .line 170
    .local v0, "cause":Lio/ktor/http/BadContentTypeFormatException;
    new-instance v2, Lio/ktor/server/plugins/BadRequestException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal Content-Type format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

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

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
