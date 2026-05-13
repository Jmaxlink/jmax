.class final Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "GsonConverter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/serialization/gson/GsonConverter;->serializeJson(Lkotlinx/coroutines/flow/Flow;Ljava/io/Writer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.serialization.gson.GsonConverter"
    f = "GsonConverter.kt"
    i = {
        0x0
    }
    l = {
        0x85
    }
    m = "serializeJson"
    n = {
        "writer"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/serialization/gson/GsonConverter;


# direct methods
.method constructor <init>(Lio/ktor/serialization/gson/GsonConverter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/serialization/gson/GsonConverter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->this$0:Lio/ktor/serialization/gson/GsonConverter;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->label:I

    iget-object v0, p0, Lio/ktor/serialization/gson/GsonConverter$serializeJson$1;->this$0:Lio/ktor/serialization/gson/GsonConverter;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1, v1, v2}, Lio/ktor/serialization/gson/GsonConverter;->access$serializeJson(Lio/ktor/serialization/gson/GsonConverter;Lkotlinx/coroutines/flow/Flow;Ljava/io/Writer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
