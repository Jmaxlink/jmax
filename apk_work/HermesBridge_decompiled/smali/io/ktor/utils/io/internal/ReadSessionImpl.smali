.class public final Lio/ktor/utils/io/internal/ReadSessionImpl;
.super Ljava/lang/Object;
.source "ReadSessionImpl.kt"

# interfaces
.implements Lio/ktor/utils/io/SuspendableReadSession;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadSessionImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadSessionImpl.kt\nio/ktor/utils/io/internal/ReadSessionImpl\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,47:1\n69#2:48\n69#2:49\n*S KotlinDebug\n*F\n+ 1 ReadSessionImpl.kt\nio/ktor/utils/io/internal/ReadSessionImpl\n*L\n17#1:48\n22#1:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0016J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/utils/io/internal/ReadSessionImpl;",
        "Lio/ktor/utils/io/SuspendableReadSession;",
        "channel",
        "Lio/ktor/utils/io/ByteBufferChannel;",
        "(Lio/ktor/utils/io/ByteBufferChannel;)V",
        "availableForRead",
        "",
        "getAvailableForRead",
        "()I",
        "lastAvailable",
        "lastView",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "await",
        "",
        "atLeast",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "completed",
        "",
        "newView",
        "discard",
        "n",
        "request",
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
.field private final channel:Lio/ktor/utils/io/ByteBufferChannel;

.field private lastAvailable:I

.field private lastView:Lio/ktor/utils/io/core/internal/ChunkBuffer;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 1
    .param p1, "channel"    # Lio/ktor/utils/io/ByteBufferChannel;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->channel:Lio/ktor/utils/io/ByteBufferChannel;

    .line 10
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->lastView:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 8
    return-void
.end method

.method private final completed(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 5
    .param p1, "newView"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 17
    iget v0, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->lastAvailable:I

    iget-object v1, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->lastView:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 48
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 17
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    sub-int/2addr v0, v3

    .line 18
    .local v0, "delta":I
    if-lez v0, :cond_0

    .line 19
    iget-object v1, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->channel:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-virtual {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->consumed(I)V

    .line 21
    :cond_0
    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->lastView:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 22
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .restart local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 49
    .restart local v2    # "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 22
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    iput v3, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->lastAvailable:I

    .line 23
    return-void
.end method


# virtual methods
.method public await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "atLeast"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadSessionImpl;->completed()V

    .line 44
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->channel:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-virtual {v0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final completed()V
    .locals 1

    .line 13
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/utils/io/internal/ReadSessionImpl;->completed(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 14
    return-void
.end method

.method public discard(I)I
    .locals 2
    .param p1, "n"    # I

    .line 29
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadSessionImpl;->completed()V

    .line 30
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadSessionImpl;->getAvailableForRead()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 31
    .local v0, "quantity":I
    iget-object v1, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->channel:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-virtual {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->consumed(I)V

    .line 32
    return v0
.end method

.method public getAvailableForRead()I
    .locals 1

    .line 26
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->channel:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->getAvailableForRead()I

    move-result v0

    return v0
.end method

.method public request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 5
    .param p1, "atLeast"    # I

    .line 35
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadSessionImpl;->channel:Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/ktor/utils/io/ByteBufferChannel;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 36
    .local v2, "$i$a$-let-ReadSessionImpl$request$1":I
    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v1}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->ChunkBuffer$default(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/pool/ObjectPool;ILjava/lang/Object;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    move-object v3, v1

    .local v3, "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v4, 0x0

    .line 37
    .local v4, "$i$a$-also-ReadSessionImpl$request$1$1":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->resetForRead()V

    .line 38
    invoke-direct {p0, v3}, Lio/ktor/utils/io/internal/ReadSessionImpl;->completed(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 39
    nop

    .line 36
    .end local v3    # "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "$i$a$-also-ReadSessionImpl$request$1$1":I
    nop

    .line 35
    .end local v0    # "it":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$a$-let-ReadSessionImpl$request$1":I
    nop

    .line 40
    :cond_0
    return-object v1
.end method
