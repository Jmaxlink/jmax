.class public final Lio/ktor/serialization/gson/GsonConverter;
.super Ljava/lang/Object;
.source "GsonConverter.kt"

# interfaces
.implements Lio/ktor/serialization/ContentConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/serialization/gson/GsonConverter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGsonConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GsonConverter.kt\nio/ktor/serialization/gson/GsonConverter\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,132:1\n60#2,4:133\n*S KotlinDebug\n*F\n+ 1 GsonConverter.kt\nio/ktor/serialization/gson/GsonConverter\n*L\n91#1:133,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J/\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u00060\u0008j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ5\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0007\u001a\u00060\u0008j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0006H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J7\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0007\u001a\u00060\u0008j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J)\u0010\u0016\u001a\u00020\u0017\"\u0004\u0008\u0000\u0010\u0018*\u0008\u0012\u0004\u0012\u0002H\u00180\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/ktor/serialization/gson/GsonConverter;",
        "Lio/ktor/serialization/ContentConverter;",
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
        "Lio/ktor/utils/io/ByteReadChannel;",
        "(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "serialize",
        "Lio/ktor/http/content/OutgoingContent;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "value",
        "(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "serializeNullable",
        "serializeJson",
        "",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "writer",
        "Ljava/io/Writer;",
        "(Lkotlinx/coroutines/flow/Flow;Ljava/io/Writer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field private static final Companion:Lio/ktor/serialization/gson/GsonConverter$Companion;

.field private static final beginArrayCharCode:I = 0x5b

.field private static final endArrayCharCode:I = 0x5d

.field private static final objectSeparator:I = 0x2c


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/serialization/gson/GsonConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/serialization/gson/GsonConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/serialization/gson/GsonConverter;->Companion:Lio/ktor/serialization/gson/GsonConverter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/serialization/gson/GsonConverter;-><init>(Lcom/google/gson/Gson;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1
    .param p1, "gson"    # Lcom/google/gson/Gson;

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/serialization/gson/GsonConverter;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/Gson;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/serialization/gson/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    .line 101
    return-void
.end method

.method public static final synthetic access$getGson$p(Lio/ktor/serialization/gson/GsonConverter;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "$this"    # Lio/ktor/serialization/gson/GsonConverter;

    .line 27
    iget-object v0, p0, Lio/ktor/serialization/gson/GsonConverter;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final synthetic access$serializeJson(Lio/ktor/serialization/gson/GsonConverter;Lkotlinx/coroutines/flow/Flow;Ljava/io/Writer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/serialization/gson/GsonConverter;
    .param p1, "$receiver"    # Lkotlinx/coroutines/flow/Flow;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/serialization/gson/GsonConverter;->serializeJson(Lkotlinx/coroutines/flow/Flow;Ljava/io/Writer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final serializeJson(Lkotlinx/coroutines/flow/Flow;Ljava/io/Writer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Ljava/io/Writer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;

    iget v1, v0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;-><init>(Lio/ktor/serialization/gson/GsonConverter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 89
    iget v2, p3, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->label:I

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
    const/4 p1, 0x0

    .local p1, "$i$f$collectIndexed":I
    iget-object p2, p3, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/io/Writer;

    .local p2, "writer":Ljava/io/Writer;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p1    # "$i$f$collectIndexed":I
    .end local p2    # "writer":Ljava/io/Writer;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 90
    .local v2, "this":Lio/ktor/serialization/gson/GsonConverter;
    .local p1, "$this$serializeJson":Lkotlinx/coroutines/flow/Flow;
    .restart local p2    # "writer":Ljava/io/Writer;
    const/16 v3, 0x5b

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 91
    nop

    .local p1, "$this$collectIndexed$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 133
    .local v3, "$i$f$collectIndexed":I
    new-instance v4, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;

    invoke-direct {v4, p2, v2}, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;-><init>(Ljava/io/Writer;Lio/ktor/serialization/gson/GsonConverter;)V

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p3, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p3, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->label:I

    invoke-interface {p1, v4, p3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ktor/serialization/gson/GsonConverter;
    .end local p1    # "$this$collectIndexed$iv":Lkotlinx/coroutines/flow/Flow;
    if-ne p1, v1, :cond_1

    .line 89
    return-object v1

    .line 133
    :cond_1
    move p1, v3

    .line 136
    .end local v3    # "$i$f$collectIndexed":I
    .local p1, "$i$f$collectIndexed":I
    :goto_1
    nop

    .line 98
    .end local p1    # "$i$f$collectIndexed":I
    const/16 p1, 0x5d

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    .line 99
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 100
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deserialize(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;

    iget v1, v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;

    invoke-direct {v0, p0, p4}, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;-><init>(Lio/ktor/serialization/gson/GsonConverter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, p4, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;->label:I

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

    move-object p1, v0

    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    goto :goto_2

    .line 64
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    .local v8, "this":Lio/ktor/serialization/gson/GsonConverter;
    move-object v6, p2

    .local v6, "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    move-object v4, p1

    .local v4, "charset":Ljava/nio/charset/Charset;
    move-object v3, p3

    .line 65
    .local v3, "content":Lio/ktor/utils/io/ByteReadChannel;
    iget-object p1, v8, Lio/ktor/serialization/gson/GsonConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v6}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {p1, p2}, Lio/ktor/serialization/gson/GsonConverterKt;->isExcluded(Lcom/google/gson/Gson;Lkotlin/reflect/KClass;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 69
    nop

    .line 70
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance p2, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;

    const/4 v7, 0x0

    move-object v2, p2

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;-><init>(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lio/ktor/serialization/gson/GsonConverter;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    const/4 p3, 0x1

    iput p3, p4, Lio/ktor/serialization/gson/GsonConverter$deserialize$1;->label:I

    invoke-static {p1, p2, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "content":Lio/ktor/utils/io/ByteReadChannel;
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .end local v6    # "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    .end local v8    # "this":Lio/ktor/serialization/gson/GsonConverter;
    if-ne p1, v1, :cond_1

    .line 64
    return-object v1

    .line 74
    :cond_1
    :goto_1
    return-object p1

    .line 75
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

    .line 66
    .end local p1    # "cause":Lcom/google/gson/JsonSyntaxException;
    .restart local v6    # "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    :cond_2
    new-instance p1, Lio/ktor/serialization/gson/ExcludedTypeGsonException;

    invoke-virtual {v6}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/ktor/serialization/gson/ExcludedTypeGsonException;-><init>(Lkotlin/reflect/KClass;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public serialize(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "typeInfo"    # Lio/ktor/util/reflect/TypeInfo;
    .param p4, "value"    # Ljava/lang/Object;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/ContentType;",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Please override and use serializeNullable instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "serializeNullable(charset, typeInfo, contentType, value)"
            imports = {}
        .end subannotation
    .end annotation

    .line 41
    invoke-virtual/range {p0 .. p5}, Lio/ktor/serialization/gson/GsonConverter;->serializeNullable(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serializeNullable(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "typeInfo"    # Lio/ktor/util/reflect/TypeInfo;
    .param p4, "value"    # Ljava/lang/Object;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/ContentType;",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {p3 .. p3}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v2

    const-class v3, Lkotlinx/coroutines/flow/Flow;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    new-instance v2, Lio/ktor/http/content/OutputStreamContent;

    .line 53
    new-instance v3, Lio/ktor/serialization/gson/GsonConverter$serializeNullable$2;

    const/4 v4, 0x0

    move-object/from16 v10, p2

    invoke-direct {v3, v10, v0, v1, v4}, Lio/ktor/serialization/gson/GsonConverter$serializeNullable$2;-><init>(Ljava/nio/charset/Charset;Lio/ktor/serialization/gson/GsonConverter;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 58
    invoke-static/range {p1 .. p2}, Lio/ktor/http/ContentTypesKt;->withCharsetIfNeeded(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;)Lio/ktor/http/ContentType;

    move-result-object v5

    .line 52
    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lio/ktor/http/content/OutputStreamContent;-><init>(Lkotlin/jvm/functions/Function2;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 61
    :cond_0
    move-object/from16 v10, p2

    new-instance v2, Lio/ktor/http/content/TextContent;

    iget-object v3, v0, Lio/ktor/serialization/gson/GsonConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "gson.toJson(value)"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lio/ktor/http/ContentTypesKt;->withCharsetIfNeeded(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;)Lio/ktor/http/ContentType;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lio/ktor/http/content/TextContent;-><init>(Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
