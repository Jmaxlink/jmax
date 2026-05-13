.class final Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RelayClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/client/RelayClient;->dispatchCommand(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.hermesandroid.bridge.client.RelayClient"
    f = "RelayClient.kt"
    i = {
        0x0
    }
    l = {
        0xfc,
        0x106,
        0x10f,
        0x118,
        0x121,
        0x135,
        0x13e,
        0x148,
        0x152,
        0x17e,
        0x18a,
        0x192,
        0x19d,
        0x1a5,
        0x1b0,
        0x1b7,
        0x21b
    }
    m = "dispatchCommand"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/hermesandroid/bridge/client/RelayClient;


# direct methods
.method constructor <init>(Lcom/hermesandroid/bridge/client/RelayClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermesandroid/bridge/client/RelayClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$1;->this$0:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$1;->label:I

    iget-object v1, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$1;->this$0:Lcom/hermesandroid/bridge/client/RelayClient;

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/hermesandroid/bridge/client/RelayClient;->access$dispatchCommand(Lcom/hermesandroid/bridge/client/RelayClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
