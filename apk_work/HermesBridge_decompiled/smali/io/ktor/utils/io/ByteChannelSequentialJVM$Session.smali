.class final Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;
.super Ljava/lang/Object;
.source "ByteChannelSequentialJVM.kt"

# interfaces
.implements Lio/ktor/utils/io/LookAheadSuspendSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/ByteChannelSequentialJVM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteChannelSequentialJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelSequentialJVM.kt\nio/ktor/utils/io/ByteChannelSequentialJVM$Session\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,256:1\n1#2:257\n39#3:258\n69#4:259\n*S KotlinDebug\n*F\n+ 1 ByteChannelSequentialJVM.kt\nio/ktor/utils/io/ByteChannelSequentialJVM$Session\n*L\n179#1:258\n184#1:259\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;",
        "Lio/ktor/utils/io/LookAheadSuspendSession;",
        "channel",
        "Lio/ktor/utils/io/ByteChannelSequentialJVM;",
        "(Lio/ktor/utils/io/ByteChannelSequentialJVM;)V",
        "awaitAtLeast",
        "",
        "n",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "consumed",
        "",
        "request",
        "Ljava/nio/ByteBuffer;",
        "skip",
        "atLeast",
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
.field private final channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;)V
    .locals 1
    .param p1, "channel"    # Lio/ktor/utils/io/ByteChannelSequentialJVM;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    return-void
.end method


# virtual methods
.method public awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "n"    # I
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

    .line 163
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-virtual {v0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 257
    .local v0, "it":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    .line 163
    .local v1, "$i$a$-let-ByteChannelSequentialJVM$Session$awaitAtLeast$2":I
    throw v0
.end method

.method public consumed(I)V
    .locals 2
    .param p1, "n"    # I

    .line 169
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->discard(I)I

    .line 172
    return-void

    .line 257
    .local v0, "it":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, "$i$a$-let-ByteChannelSequentialJVM$Session$consumed$1":I
    throw v0
.end method

.method public request(II)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "skip"    # I
    .param p2, "atLeast"    # I

    .line 175
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 177
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->isClosedForRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 179
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getReadable()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    .local v0, "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v2, 0x0

    .line 258
    .local v2, "$i$f$isEmpty":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v0

    .line 179
    .end local v0    # "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v2    # "$i$f$isEmpty":I
    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->prepareFlushedBytes()V

    .line 183
    :cond_1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$Session;->channel:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->getReadable()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 184
    .local v0, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 259
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 184
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    add-int v2, p1, p2

    if-ge v4, v2, :cond_2

    return-object v1

    .line 186
    :cond_2
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 187
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    return-object v1

    .line 257
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .local v0, "it":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    .line 175
    .local v1, "$i$a$-let-ByteChannelSequentialJVM$Session$request$1":I
    throw v0
.end method
