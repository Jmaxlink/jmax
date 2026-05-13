.class final Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteBufferChannel;->peekTo-lBXzO7A$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Ljava/nio/ByteBuffer;JJJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$peekTo$2\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n1#1,2411:1\n15#2:2412\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$peekTo$2\n*L\n2380#1:2412\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "nioBuffer",
        "Ljava/nio/ByteBuffer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $bytesCopied:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $destination:Ljava/nio/ByteBuffer;

.field final synthetic $destinationOffset:J

.field final synthetic $max:J

.field final synthetic $offset:J


# direct methods
.method constructor <init>(JJLjava/nio/ByteBuffer;JLkotlin/jvm/internal/Ref$IntRef;)V
    .locals 1

    iput-wide p1, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$offset:J

    iput-wide p3, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$max:J

    iput-object p5, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iput-wide p6, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destinationOffset:J

    iput-object p8, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 2374
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "nioBuffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "nioBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2375
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$offset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2376
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2377
    .local v0, "view":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-wide v2, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$offset:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2379
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 2380
    .local v1, "oldLimit":I
    iget-wide v2, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$max:J

    iget-object v4, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    .local v4, "arg0$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 2412
    .local v5, "$i$f$getSize-impl":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v4, v6

    .line 2380
    .end local v4    # "arg0$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$getSize-impl":I
    iget-wide v6, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destinationOffset:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2381
    .local v2, "canCopyToDestination":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$offset:J

    add-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2382
    .local v4, "newLimit":J
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2383
    iget-object v6, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    iput v7, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2384
    iget-object v6, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iget-wide v7, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destinationOffset:J

    long-to-int v7, v7

    invoke-static {v0, v6, v7}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-SG11BkQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 2385
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2387
    .end local v0    # "view":Ljava/nio/ByteBuffer;
    .end local v1    # "oldLimit":I
    .end local v2    # "canCopyToDestination":J
    .end local v4    # "newLimit":J
    :cond_0
    return-void
.end method
