.class final Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "BaseApplicationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/BaseApplicationResponse;->respondFromChannel$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
    c = "io.ktor.server.engine.BaseApplicationResponse"
    f = "BaseApplicationResponse.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xd0,
        0xd2,
        0xd7
    }
    m = "respondFromChannel$suspendImpl"
    n = {
        "$this",
        "readChannel",
        "$this",
        "readChannel",
        "$this$use$iv",
        "length",
        "$this",
        "$this$use$iv",
        "length",
        "copied"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "J$0"
    }
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/server/engine/BaseApplicationResponse;


# direct methods
.method constructor <init>(Lio/ktor/server/engine/BaseApplicationResponse;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/BaseApplicationResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->this$0:Lio/ktor/server/engine/BaseApplicationResponse;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->label:I

    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationResponse$respondFromChannel$1;->this$0:Lio/ktor/server/engine/BaseApplicationResponse;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1, v2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondFromChannel$suspendImpl(Lio/ktor/server/engine/BaseApplicationResponse;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
