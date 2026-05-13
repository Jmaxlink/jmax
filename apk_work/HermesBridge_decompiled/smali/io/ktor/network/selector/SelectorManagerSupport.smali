.class public abstract Lio/ktor/network/selector/SelectorManagerSupport;
.super Ljava/lang/Object;
.source "SelectorManagerSupport.kt"

# interfaces
.implements Lio/ktor/network/selector/SelectorManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectorManagerSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectorManagerSupport.kt\nio/ktor/network/selector/SelectorManagerSupport\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 InterestSuspensionsMap.kt\nio/ktor/network/selector/InterestSuspensionsMap\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n314#2,11:186\n37#3,8:197\n47#3,2:205\n50#3:208\n1#4:207\n1#4:210\n1855#5:209\n1856#5:211\n*S KotlinDebug\n*F\n+ 1 SelectorManagerSupport.kt\nio/ktor/network/selector/SelectorManagerSupport\n*L\n41#1:186,11\n84#1:197,8\n148#1:205,2\n148#1:208\n148#1:207\n159#1:209\n159#1:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001:\u0001.B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011H\u0004J\u0018\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 H\u0004J\u001a\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0004J\u0010\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u0013H\u0004J$\u0010#\u001a\u00020\u00192\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00130%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00130\'H\u0004J \u0010(\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u0011H\u0004J\u0010\u0010)\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0011H$J!\u0010*\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010+\u001a\u00020,H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-R\u001a\u0010\u0003\u001a\u00020\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR,\u0010\u0012\u001a\u0004\u0018\u00010\u0011*\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00118B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006/"
    }
    d2 = {
        "Lio/ktor/network/selector/SelectorManagerSupport;",
        "Lio/ktor/network/selector/SelectorManager;",
        "()V",
        "cancelled",
        "",
        "getCancelled",
        "()I",
        "setCancelled",
        "(I)V",
        "pending",
        "getPending",
        "setPending",
        "provider",
        "Ljava/nio/channels/spi/SelectorProvider;",
        "getProvider",
        "()Ljava/nio/channels/spi/SelectorProvider;",
        "newValue",
        "Lio/ktor/network/selector/Selectable;",
        "subject",
        "Ljava/nio/channels/SelectionKey;",
        "getSubject",
        "(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;",
        "setSubject",
        "(Ljava/nio/channels/SelectionKey;Lio/ktor/network/selector/Selectable;)V",
        "applyInterest",
        "",
        "selector",
        "Ljava/nio/channels/Selector;",
        "selectable",
        "cancelAllSuspensions",
        "attachment",
        "cause",
        "",
        "handleSelectedKey",
        "key",
        "handleSelectedKeys",
        "selectedKeys",
        "",
        "keys",
        "",
        "notifyClosedImpl",
        "publishInterest",
        "select",
        "interest",
        "Lio/ktor/network/selector/SelectInterest;",
        "(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ClosedSelectorCancellationException",
        "ktor-network"
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
.field private cancelled:I

.field private pending:I

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    const-string v1, "provider()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 16
    return-void
.end method

.method private final getSubject(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;
    .locals 2
    .param p1, "$this$subject"    # Ljava/nio/channels/SelectionKey;

    .line 170
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lio/ktor/network/selector/Selectable;

    if-eqz v1, :cond_0

    check-cast v0, Lio/ktor/network/selector/Selectable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final setSubject(Ljava/nio/channels/SelectionKey;Lio/ktor/network/selector/Selectable;)V
    .locals 0
    .param p1, "$this$subject"    # Ljava/nio/channels/SelectionKey;
    .param p2, "newValue"    # Lio/ktor/network/selector/Selectable;

    .line 172
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method


# virtual methods
.method protected final applyInterest(Ljava/nio/channels/Selector;Lio/ktor/network/selector/Selectable;)V
    .locals 4
    .param p1, "selector"    # Ljava/nio/channels/Selector;
    .param p2, "selectable"    # Lio/ktor/network/selector/Selectable;

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    nop

    .line 111
    :try_start_0
    invoke-interface {p2}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 112
    .local v0, "channel":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 113
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {p2}, Lio/ktor/network/selector/Selectable;->getInterestedOps()I

    move-result v2

    .line 115
    .local v2, "ops":I
    if-nez v1, :cond_0

    .line 116
    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {v0, p1, v2, p2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 121
    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 125
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 126
    iget v3, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "channel":Ljava/nio/channels/SelectableChannel;
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    .end local v2    # "ops":I
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p2}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 130
    :cond_2
    invoke-virtual {p0, p2, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .line 132
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    return-void
.end method

.method protected final cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "attachment"    # Lio/ktor/network/selector/Selectable;
    .param p2, "cause"    # Ljava/lang/Throwable;

    const-string v0, "attachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object v0

    .local v0, "this_$iv":Lio/ktor/network/selector/InterestSuspensionsMap;
    const/4 v1, 0x0

    .line 205
    .local v1, "$i$f$invokeForEachPresent":I
    sget-object v2, Lio/ktor/network/selector/SelectInterest;->Companion:Lio/ktor/network/selector/SelectInterest$Companion;

    invoke-virtual {v2}, Lio/ktor/network/selector/SelectInterest$Companion;->getAllInterests()[Lio/ktor/network/selector/SelectInterest;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 206
    .local v5, "interest$iv":Lio/ktor/network/selector/SelectInterest;
    invoke-virtual {v0, v5}, Lio/ktor/network/selector/InterestSuspensionsMap;->removeSuspension(Lio/ktor/network/selector/SelectInterest;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 207
    .local v6, "$this$invokeForEachPresent_u24lambda_u240$iv":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v7, 0x0

    .line 206
    .local v7, "$i$a$-run-InterestSuspensionsMap$invokeForEachPresent$1$iv":I
    move-object v8, v6

    .local v8, "$this$cancelAllSuspensions_u24lambda_u243":Lkotlinx/coroutines/CancellableContinuation;
    move-object v9, v5

    .local v9, "it":Lio/ktor/network/selector/SelectInterest;
    const/4 v10, 0x0

    .line 149
    .local v10, "$i$a$-invokeForEachPresent-SelectorManagerSupport$cancelAllSuspensions$1":I
    move-object v11, v8

    check-cast v11, Lkotlin/coroutines/Continuation;

    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 150
    nop

    .line 206
    .end local v8    # "$this$cancelAllSuspensions_u24lambda_u243":Lkotlinx/coroutines/CancellableContinuation;
    .end local v9    # "it":Lio/ktor/network/selector/SelectInterest;
    .end local v10    # "$i$a$-invokeForEachPresent-SelectorManagerSupport$cancelAllSuspensions$1":I
    nop

    .line 205
    .end local v5    # "interest$iv":Lio/ktor/network/selector/SelectInterest;
    .end local v6    # "$this$invokeForEachPresent_u24lambda_u240$iv":Lkotlinx/coroutines/CancellableContinuation;
    .end local v7    # "$i$a$-run-InterestSuspensionsMap$invokeForEachPresent$1$iv":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_1
    nop

    .line 151
    .end local v0    # "this_$iv":Lio/ktor/network/selector/InterestSuspensionsMap;
    .end local v1    # "$i$f$invokeForEachPresent":I
    return-void
.end method

.method protected final cancelAllSuspensions(Ljava/nio/channels/Selector;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "selector"    # Ljava/nio/channels/Selector;
    .param p2, "cause"    # Ljava/lang/Throwable;

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    if-nez p2, :cond_0

    new-instance v0, Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;

    invoke-direct {v0}, Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 159
    .local v0, "currentCause":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    const-string v2, "selector.keys()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 209
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/nio/channels/SelectionKey;

    .local v5, "key":Ljava/nio/channels/SelectionKey;
    const/4 v6, 0x0

    .line 160
    .local v6, "$i$a$-forEach-SelectorManagerSupport$cancelAllSuspensions$2":I
    nop

    .line 161
    :try_start_0
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 162
    :catch_0
    move-exception v7

    .line 164
    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lio/ktor/network/selector/Selectable;

    if-eqz v8, :cond_2

    check-cast v7, Lio/ktor/network/selector/Selectable;

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_3

    .line 210
    .local v7, "it":Lio/ktor/network/selector/Selectable;
    const/4 v8, 0x0

    .line 164
    .local v8, "$i$a$-let-SelectorManagerSupport$cancelAllSuspensions$2$1":I
    invoke-virtual {p0, v7, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .line 165
    .end local v7    # "it":Lio/ktor/network/selector/Selectable;
    .end local v8    # "$i$a$-let-SelectorManagerSupport$cancelAllSuspensions$2$1":I
    :cond_3
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 166
    nop

    .line 209
    .end local v5    # "key":Ljava/nio/channels/SelectionKey;
    .end local v6    # "$i$a$-forEach-SelectorManagerSupport$cancelAllSuspensions$2":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 211
    :cond_4
    nop

    .line 167
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method protected final getCancelled()I
    .locals 1

    .line 27
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    return v0
.end method

.method protected final getPending()I
    .locals 1

    .line 22
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    return v0
.end method

.method public final getProvider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method protected final handleSelectedKey(Ljava/nio/channels/SelectionKey;)V
    .locals 12
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    nop

    .line 76
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    .line 77
    .local v0, "readyOps":I
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 79
    .local v1, "interestOps":I
    invoke-direct {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->getSubject(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;

    move-result-object v2

    .line 80
    .local v2, "subject":Lio/ktor/network/selector/Selectable;
    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 82
    iget v3, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    goto :goto_1

    .line 84
    :cond_0
    invoke-interface {v2}, Lio/ktor/network/selector/Selectable;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object v3

    .local v3, "this_$iv":Lio/ktor/network/selector/InterestSuspensionsMap;
    const/4 v4, 0x0

    .line 197
    .local v4, "$i$f$invokeForEachPresent":I
    sget-object v5, Lio/ktor/network/selector/SelectInterest;->Companion:Lio/ktor/network/selector/SelectInterest$Companion;

    invoke-virtual {v5}, Lio/ktor/network/selector/SelectInterest$Companion;->getFlags()[I

    move-result-object v5

    .line 199
    .local v5, "flags$iv":[I
    const/4 v6, 0x0

    .local v6, "ordinal$iv":I
    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_3

    .line 200
    aget v8, v5, v6

    and-int/2addr v8, v0

    if-eqz v8, :cond_2

    .line 201
    invoke-virtual {v3, v6}, Lio/ktor/network/selector/InterestSuspensionsMap;->removeSuspension(I)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v8

    if-eqz v8, :cond_1

    .local v8, "$this$handleSelectedKey_u24lambda_u241":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v9, 0x0

    .line 84
    .local v9, "$i$a$-invokeForEachPresent-SelectorManagerSupport$handleSelectedKey$1":I
    move-object v10, v8

    check-cast v10, Lkotlin/coroutines/Continuation;

    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v11}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 201
    .end local v8    # "$this$handleSelectedKey_u24lambda_u241":Lkotlinx/coroutines/CancellableContinuation;
    .end local v9    # "$i$a$-invokeForEachPresent-SelectorManagerSupport$handleSelectedKey$1":I
    :cond_1
    nop

    .line 199
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 204
    .end local v6    # "ordinal$iv":I
    :cond_3
    nop

    .line 86
    .end local v3    # "this_$iv":Lio/ktor/network/selector/InterestSuspensionsMap;
    .end local v4    # "$i$f$invokeForEachPresent":I
    .end local v5    # "flags$iv":[I
    not-int v3, v0

    and-int/2addr v3, v1

    .line 87
    .local v3, "newOps":I
    if-eq v3, v1, :cond_4

    .line 88
    invoke-virtual {p1, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 91
    :cond_4
    if-eqz v3, :cond_5

    .line 92
    iget v4, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "readyOps":I
    .end local v1    # "interestOps":I
    .end local v2    # "subject":Lio/ktor/network/selector/Selectable;
    .end local v3    # "newOps":I
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    .line 97
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 98
    iget v1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    .line 99
    invoke-direct {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->getSubject(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;

    move-result-object v1

    if-eqz v1, :cond_5

    .local v1, "subject":Lio/ktor/network/selector/Selectable;
    const/4 v2, 0x0

    .line 100
    .local v2, "$i$a$-let-SelectorManagerSupport$handleSelectedKey$2":I
    invoke-virtual {p0, v1, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .line 101
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lio/ktor/network/selector/SelectorManagerSupport;->setSubject(Ljava/nio/channels/SelectionKey;Lio/ktor/network/selector/Selectable;)V

    .line 102
    nop

    .line 99
    .end local v1    # "subject":Lio/ktor/network/selector/Selectable;
    .end local v2    # "$i$a$-let-SelectorManagerSupport$handleSelectedKey$2":I
    nop

    .line 104
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    return-void
.end method

.method protected final handleSelectedKeys(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .param p1, "selectedKeys"    # Ljava/util/Set;
    .param p2, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedKeys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keys"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    .line 58
    .local v0, "selectedCount":I
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    .line 61
    if-lez v0, :cond_0

    .line 62
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 63
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 65
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {p0, v2}, Lio/ktor/network/selector/SelectorManagerSupport;->handleSelectedKey(Ljava/nio/channels/SelectionKey;)V

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .end local v2    # "k":Ljava/nio/channels/SelectionKey;
    goto :goto_0

    .line 69
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected final notifyClosedImpl(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;Lio/ktor/network/selector/Selectable;)V
    .locals 1
    .param p1, "selector"    # Ljava/nio/channels/Selector;
    .param p2, "key"    # Ljava/nio/channels/SelectionKey;
    .param p3, "attachment"    # Lio/ktor/network/selector/Selectable;

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, p3, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->setSubject(Ljava/nio/channels/SelectionKey;Lio/ktor/network/selector/Selectable;)V

    .line 141
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 142
    return-void
.end method

.method protected abstract publishInterest(Lio/ktor/network/selector/Selectable;)V
.end method

.method public final select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "selectable"    # Lio/ktor/network/selector/Selectable;
    .param p2, "interest"    # Lio/ktor/network/selector/SelectInterest;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/Selectable;",
            "Lio/ktor/network/selector/SelectInterest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getInterestedOps()I

    move-result v0

    .line 36
    .local v0, "interestedOps":I
    invoke-virtual {p2}, Lio/ktor/network/selector/SelectInterest;->getFlag()I

    move-result v1

    .line 38
    .local v1, "flag":I
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 39
    and-int v2, v0, v1

    if-eqz v2, :cond_3

    .line 41
    const/4 v2, 0x0

    .line 186
    .local v2, "$i$f$suspendCancellableCoroutine":I
    move-object v3, p3

    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 187
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 193
    .local v5, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 194
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/CancellableContinuation;

    .local v6, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v7, 0x0

    .line 42
    .local v7, "$i$a$-suspendCancellableCoroutine-SelectorManagerSupport$select$2":I
    sget-object v8, Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;->INSTANCE:Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v8}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 45
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object v8

    invoke-virtual {v8, p2, v6}, Lio/ktor/network/selector/InterestSuspensionsMap;->addSuspension(Lio/ktor/network/selector/SelectInterest;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 47
    invoke-interface {v6}, Lkotlinx/coroutines/CancellableContinuation;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->publishInterest(Lio/ktor/network/selector/Selectable;)V

    .line 50
    :cond_0
    nop

    .line 194
    .end local v6    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v7    # "$i$a$-suspendCancellableCoroutine-SelectorManagerSupport$select$2":I
    nop

    .line 195
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 186
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    return-object v3

    .line 196
    :cond_2
    nop

    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    return-object v2

    .line 39
    :cond_3
    invoke-static {v0, v1}, Lio/ktor/network/selector/SelectorManagerSupportKt;->access$selectableIsInvalid(II)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 38
    :cond_4
    invoke-static {}, Lio/ktor/network/selector/SelectorManagerSupportKt;->access$selectableIsClosed()Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method protected final setCancelled(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 27
    iput p1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    return-void
.end method

.method protected final setPending(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 22
    iput p1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    return-void
.end method
