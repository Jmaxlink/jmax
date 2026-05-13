.class public final Lio/ktor/network/selector/SelectorManagerKt;
.super Ljava/lang/Object;
.source "SelectorManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a[\u0010\u0004\u001a\u0002H\u0005\"\u000c\u0008\u0000\u0010\u0006*\u00060\u0007j\u0002`\u0008\"\u0004\u0008\u0001\u0010\u0005*\u00020\u00012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H\u00060\n\u00a2\u0006\u0002\u0008\u000c2\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00050\n\u00a2\u0006\u0002\u0008\u000cH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "SelectorManager",
        "Lio/ktor/network/selector/SelectorManager;",
        "dispatcher",
        "Lkotlin/coroutines/CoroutineContext;",
        "buildOrClose",
        "R",
        "C",
        "Ljava/io/Closeable;",
        "Lio/ktor/utils/io/core/Closeable;",
        "create",
        "Lkotlin/Function1;",
        "Ljava/nio/channels/spi/SelectorProvider;",
        "Lkotlin/ExtensionFunctionType;",
        "setup",
        "(Lio/ktor/network/selector/SelectorManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "ktor-network"
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
.method public static final SelectorManager(Lkotlin/coroutines/CoroutineContext;)Lio/ktor/network/selector/SelectorManager;
    .locals 1
    .param p0, "dispatcher"    # Lkotlin/coroutines/CoroutineContext;

    const-string v0, "dispatcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager;

    invoke-direct {v0, p0}, Lio/ktor/network/selector/ActorSelectorManager;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    check-cast v0, Lio/ktor/network/selector/SelectorManager;

    return-object v0
.end method

.method public static synthetic SelectorManager$default(Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/ktor/network/selector/SelectorManager;
    .locals 0

    .line 13
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 11
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    .line 13
    :cond_0
    invoke-static {p0}, Lio/ktor/network/selector/SelectorManagerKt;->SelectorManager(Lkotlin/coroutines/CoroutineContext;)Lio/ktor/network/selector/SelectorManager;

    move-result-object p0

    return-object p0
.end method

.method public static final buildOrClose(Lio/ktor/network/selector/SelectorManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$buildOrClose"    # Lio/ktor/network/selector/SelectorManager;
    .param p1, "create"    # Lkotlin/jvm/functions/Function1;
    .param p2, "setup"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/channels/spi/SelectorProvider;",
            "+TC;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TC;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "create"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setup"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$buildOrClose":I
    nop

    .line 52
    invoke-interface {p0}, Lio/ktor/network/selector/SelectorManager;->getProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 54
    .local v1, "result":Ljava/io/Closeable;
    nop

    .line 55
    :try_start_0
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 56
    :catchall_0
    move-exception v2

    .line 57
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 58
    throw v2
.end method
