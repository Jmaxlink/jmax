.class public final Lio/ktor/serialization/gson/GsonWebsocketContentConverter;
.super Ljava/lang/Object;
.source "GsonWebsocketContentConverter.kt"

# interfaces
.implements Lio/ktor/serialization/WebsocketContentConverter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J/\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u00060\u0008j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0016J/\u0010\u0012\u001a\u00020\r2\n\u0010\u0007\u001a\u00060\u0008j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/ktor/serialization/gson/GsonWebsocketContentConverter;",
        "Lio/ktor/serialization/WebsocketContentConverter;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Lcom/google/gson/Gson;)V",
        "deserialize",
        "",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "typeInfo",
        "Lio/ktor/util/reflect/TypeInfo;",
        "content",
        "Lio/ktor/websocket/Frame;",
        "(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isApplicable",
        "",
        "frame",
        "serializeNullable",
        "value",
        "(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-serialization-gson"
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
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/serialization/gson/GsonWebsocketContentConverter;-><init>(Lcom/google/gson/Gson;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1
    .param p1, "gson"    # Lcom/google/gson/Gson;

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/serialization/gson/GsonWebsocketContentConverter;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/Gson;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/serialization/gson/GsonWebsocketContentConverter;-><init>(Lcom/google/gson/Gson;)V

    .line 44
    return-void
.end method

.method public static final synthetic access$getGson$p(Lio/ktor/serialization/gson/GsonWebsocketContentConverter;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "$this"    # Lio/ktor/serialization/gson/GsonWebsocketContentConverter;

    .line 18
    iget-object v0, p0, Lio/ktor/serialization/gson/GsonWebsocketContentConverter;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method


# virtual methods
.method public deserialize(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lio/ktor/websocket/Frame;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;

    iget v1, v0, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;

    invoke-direct {v0, p0, p4}, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;-><init>(Lio/ktor/serialization/gson/GsonWebsocketContentConverter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, p4, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_1

    .line 36
    :catch_0
    move-exception p1

    goto :goto_2

    .line 23
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    .local v8, "this":Lio/ktor/serialization/gson/GsonWebsocketContentConverter;
    move-object v6, p2

    .local v6, "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    move-object v4, p1

    .local v4, "charset":Ljava/nio/charset/Charset;
    move-object p1, p3

    .line 24
    .local p1, "content":Lio/ktor/websocket/Frame;
    invoke-virtual {v8, p1}, Lio/ktor/serialization/gson/GsonWebsocketContentConverter;->isApplicable(Lio/ktor/websocket/Frame;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 27
    iget-object p2, v8, Lio/ktor/serialization/gson/GsonWebsocketContentConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v6}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-static {p2, p3}, Lio/ktor/serialization/gson/GsonConverterKt;->isExcluded(Lcom/google/gson/Gson;Lkotlin/reflect/KClass;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 31
    nop

    .line 32
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance p3, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$2;

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, p1

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$2;-><init>(Lio/ktor/websocket/Frame;Ljava/nio/charset/Charset;Lio/ktor/serialization/gson/GsonWebsocketContentConverter;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    iput v2, p4, Lio/ktor/serialization/gson/GsonWebsocketContentConverter$deserialize$1;->label:I

    invoke-static {p2, p3, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .end local v6    # "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    .end local v8    # "this":Lio/ktor/serialization/gson/GsonWebsocketContentConverter;
    .end local p1    # "content":Lio/ktor/websocket/Frame;
    if-ne p2, v1, :cond_1

    .line 23
    return-object v1

    .line 36
    :cond_1
    :goto_1
    return-object p2

    .line 37
    .local p1, "cause":Lcom/google/gson/JsonSyntaxException;
    :goto_2
    new-instance p2, Lio/ktor/serialization/JsonConvertException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal json parameter found: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p2, p3, v1}, Lio/ktor/serialization/JsonConvertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 28
    .end local p1    # "cause":Lcom/google/gson/JsonSyntaxException;
    .restart local v6    # "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    :cond_2
    new-instance p1, Lio/ktor/serialization/gson/ExcludedTypeGsonException;

    invoke-virtual {v6}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/ktor/serialization/gson/ExcludedTypeGsonException;-><init>(Lkotlin/reflect/KClass;)V

    throw p1

    .line 25
    .end local v6    # "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    .local p1, "content":Lio/ktor/websocket/Frame;
    :cond_3
    new-instance p2, Lio/ktor/serialization/WebsocketConverterNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported frame "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/websocket/FrameType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p2, p3, v2, v1, v2}, Lio/ktor/serialization/WebsocketConverterNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isApplicable(Lio/ktor/websocket/Frame;)Z
    .locals 1
    .param p1, "frame"    # Lio/ktor/websocket/Frame;

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p1, Lio/ktor/websocket/Frame$Text;

    return v0
.end method

.method public serialize(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "typeInfo"    # Lio/ktor/util/reflect/TypeInfo;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/Frame;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/serialization/WebsocketContentConverter$DefaultImpls;->serialize(Lio/ktor/serialization/WebsocketContentConverter;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serializeNullable(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "typeInfo"    # Lio/ktor/util/reflect/TypeInfo;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/Frame;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    new-instance v0, Lio/ktor/websocket/Frame$Text;

    iget-object v1, p0, Lio/ktor/serialization/gson/GsonWebsocketContentConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gson.toJson(value)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/ktor/websocket/Frame$Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
