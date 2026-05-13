.class final Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ApplicationReceiveFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveMultipart(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationReceiveFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationReceiveFunctions.kt\nio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1\n*L\n1#1,217:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.server.request.ApplicationReceiveFunctionsKt"
    f = "ApplicationReceiveFunctions.kt"
    i = {}
    l = {
        0xda
    }
    m = "receiveMultipart"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/ktor/server/request/ApplicationReceiveFunctionsKt$receiveMultipart$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveMultipart(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
