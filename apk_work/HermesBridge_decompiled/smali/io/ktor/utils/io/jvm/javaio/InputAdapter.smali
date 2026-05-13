.class final Lio/ktor/utils/io/jvm/javaio/InputAdapter;
.super Ljava/io/InputStream;
.source "Blocking.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/InputAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1#2:317\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\n\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000fH\u0016J\"\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/utils/io/jvm/javaio/InputAdapter;",
        "Ljava/io/InputStream;",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "channel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteReadChannel;)V",
        "context",
        "Lkotlinx/coroutines/CompletableJob;",
        "loop",
        "io/ktor/utils/io/jvm/javaio/InputAdapter$loop$1",
        "Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;",
        "single",
        "",
        "available",
        "",
        "close",
        "",
        "read",
        "b",
        "off",
        "len",
        "ktor-io"
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
.field private final channel:Lio/ktor/utils/io/ByteReadChannel;

.field private final context:Lkotlinx/coroutines/CompletableJob;

.field private final loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

.field private single:[B


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteReadChannel;)V
    .locals 1
    .param p1, "parent"    # Lkotlinx/coroutines/Job;
    .param p2, "channel"    # Lio/ktor/utils/io/ByteReadChannel;

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->channel:Lio/ktor/utils/io/ByteReadChannel;

    .line 31
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->context:Lkotlinx/coroutines/CompletableJob;

    .line 33
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    invoke-direct {v0, p1, p0}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/jvm/javaio/InputAdapter;)V

    iput-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    .line 30
    return-void
.end method

.method public static final synthetic access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    .line 30
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->channel:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lkotlinx/coroutines/CompletableJob;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    .line 30
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->context:Lkotlinx/coroutines/CompletableJob;

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 51
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->channel:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->getAvailableForRead()I

    move-result v0

    return v0
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 71
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->channel:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteReadChannelKt;->cancel(Lio/ktor/utils/io/ByteReadChannel;)Z

    .line 72
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->context:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->context:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 75
    .end local p0    # "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter;
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    invoke-virtual {v0}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 5

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->single:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [B

    move-object v2, v0

    .line 317
    .local v2, "it":[B
    const/4 v3, 0x0

    .line 56
    .local v3, "$i$a$-also-InputAdapter$read$buffer$1":I
    iput-object v2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->single:[B

    .line 57
    .end local v2    # "it":[B
    .end local v3    # "$i$a$-also-InputAdapter$read$buffer$1":I
    .end local p0    # "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter;
    .local v0, "buffer":[B
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->submitAndAwait([BII)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .local v2, "rc":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    monitor-exit p0

    return v4

    .line 59
    :cond_1
    if-ne v2, v1, :cond_2

    .line 60
    :try_start_1
    aget-byte v1, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v1, v1, 0xff

    monitor-exit p0

    return v1

    .line 59
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a single byte or EOF. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .end local v0    # "buffer":[B
    .end local v2    # "rc":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, p3}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->submitAndAwait([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 65
    .end local p0    # "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
