.class public final Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/serialization/gson/GsonConverter;->serializeJson(Lkotlinx/coroutines/flow/Flow;Ljava/io/Writer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collectIndexed$2\n+ 2 FlowExceptions.common.kt\nkotlinx/coroutines/flow/internal/FlowExceptions_commonKt\n+ 3 GsonConverter.kt\nio/ktor/serialization/gson/GsonConverter\n*L\n1#1,118:1\n32#2,4:119\n92#3,6:123\n*S KotlinDebug\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collectIndexed$2\n*L\n62#1:119,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0008\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collectIndexed$2",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "index",
        "",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
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
.field final synthetic $writer$inlined:Ljava/io/Writer;

.field private index:I

.field final synthetic this$0:Lio/ktor/serialization/gson/GsonConverter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lio/ktor/serialization/gson/GsonConverter;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;->$writer$inlined:Ljava/io/Writer;

    iput-object p2, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;->this$0:Lio/ktor/serialization/gson/GsonConverter;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 62
    iget v0, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;->index:I

    .local v0, "index$iv":I
    const/4 v1, 0x0

    .line 119
    .local v1, "$i$f$checkIndexOverflow":I
    if-ltz v0, :cond_1

    .line 122
    nop

    .line 62
    .end local v0    # "index$iv":I
    .end local v1    # "$i$f$checkIndexOverflow":I
    nop

    .local v0, "index":I
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$a$-collectIndexed-GsonConverter$serializeJson$2":I
    if-lez v0, :cond_0

    .line 124
    iget-object v4, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;->$writer$inlined:Ljava/io/Writer;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 126
    :cond_0
    iget-object v4, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;->this$0:Lio/ktor/serialization/gson/GsonConverter;

    invoke-static {v4}, Lio/ktor/serialization/gson/GsonConverter;->access$getGson$p(Lio/ktor/serialization/gson/GsonConverter;)Lcom/google/gson/Gson;

    move-result-object v4

    iget-object v5, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;->$writer$inlined:Ljava/io/Writer;

    check-cast v5, Ljava/lang/Appendable;

    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 127
    iget-object v4, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$$inlined$collectIndexed$1;->$writer$inlined:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->flush()V

    .line 128
    nop

    .line 62
    .end local v0    # "index":I
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-collectIndexed-GsonConverter$serializeJson$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 120
    .local v0, "index$iv":I
    .local v1, "$i$f$checkIndexOverflow":I
    :cond_1
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Index overflow has happened"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
