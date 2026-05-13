.class final Lio/ktor/serialization/gson/GsonConverter$deserialize$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GsonConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/serialization/gson/GsonConverter;->deserialize(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.serialization.gson.GsonConverter$deserialize$2"
    f = "GsonConverter.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $charset:Ljava/nio/charset/Charset;

.field final synthetic $content:Lio/ktor/utils/io/ByteReadChannel;

.field final synthetic $typeInfo:Lio/ktor/util/reflect/TypeInfo;

.field label:I

.field final synthetic this$0:Lio/ktor/serialization/gson/GsonConverter;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lio/ktor/serialization/gson/GsonConverter;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/serialization/gson/GsonConverter;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/serialization/gson/GsonConverter$deserialize$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->$content:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, p0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->$charset:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->this$0:Lio/ktor/serialization/gson/GsonConverter;

    iput-object p4, p0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->$typeInfo:Lio/ktor/util/reflect/TypeInfo;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;

    iget-object v1, p0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->$content:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, p0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->$charset:Ljava/nio/charset/Charset;

    iget-object v3, p0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->this$0:Lio/ktor/serialization/gson/GsonConverter;

    iget-object v4, p0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->$typeInfo:Lio/ktor/util/reflect/TypeInfo;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;-><init>(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lio/ktor/serialization/gson/GsonConverter;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 70
    iget v0, p0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lio/ktor/serialization/gson/GsonConverter$deserialize$2;
    .local p1, "$result":Ljava/lang/Object;
    new-instance v1, Ljava/io/InputStreamReader;

    .line 71
    iget-object v2, v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->$content:Lio/ktor/utils/io/ByteReadChannel;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->toInputStream$default(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->$charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 72
    .local v1, "reader":Ljava/io/InputStreamReader;
    iget-object v2, v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->this$0:Lio/ktor/serialization/gson/GsonConverter;

    invoke-static {v2}, Lio/ktor/serialization/gson/GsonConverter;->access$getGson$p(Lio/ktor/serialization/gson/GsonConverter;)Lcom/google/gson/Gson;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/io/Reader;

    iget-object v4, v0, Lio/ktor/serialization/gson/GsonConverter$deserialize$2;->$typeInfo:Lio/ktor/util/reflect/TypeInfo;

    invoke-virtual {v4}, Lio/ktor/util/reflect/TypeInfo;->getReifiedType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
