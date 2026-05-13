.class public final Lio/ktor/websocket/Serializer;
.super Ljava/lang/Object;
.source "Serializer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Serializer.kt\nio/ktor/websocket/Serializer\n+ 2 Utils.kt\nio/ktor/websocket/UtilsKt__UtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n14#2:129\n14#2:130\n14#2:131\n14#2:132\n14#2:133\n1#3:134\n*S KotlinDebug\n*F\n+ 1 Serializer.kt\nio/ktor/websocket/Serializer\n*L\n76#1:129\n77#1:130\n78#1:131\n79#1:132\n83#1:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0012J\u0018\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u000e\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u0004J \u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u000c\u0010#\u001a\u00020\u0004*\u00020\u0004H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lio/ktor/websocket/Serializer;",
        "",
        "()V",
        "frameBody",
        "Ljava/nio/ByteBuffer;",
        "hasOutstandingBytes",
        "",
        "getHasOutstandingBytes",
        "()Z",
        "lastDataFrameType",
        "Lio/ktor/websocket/FrameType;",
        "maskBuffer",
        "masking",
        "getMasking",
        "setMasking",
        "(Z)V",
        "messages",
        "Ljava/util/concurrent/ArrayBlockingQueue;",
        "Lio/ktor/websocket/Frame;",
        "remainingCapacity",
        "",
        "getRemainingCapacity",
        "()I",
        "enqueue",
        "",
        "f",
        "estimateFrameHeaderSize",
        "mask",
        "maskSize",
        "serialize",
        "buffer",
        "serializeHeader",
        "frame",
        "setMaskBuffer",
        "writeCurrentPayload",
        "maskedIfNeeded",
        "ktor-websockets"
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
.field private frameBody:Ljava/nio/ByteBuffer;

.field private lastDataFrameType:Lio/ktor/websocket/FrameType;

.field private maskBuffer:Ljava/nio/ByteBuffer;

.field private masking:Z

.field private final messages:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 13
    return-void
.end method

.method private final estimateFrameHeaderSize(Lio/ktor/websocket/Frame;Z)I
    .locals 3
    .param p1, "f"    # Lio/ktor/websocket/Frame;
    .param p2, "mask"    # Z

    .line 94
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 95
    .local v0, "size":I
    nop

    .line 96
    const/16 v1, 0x7e

    if-ge v0, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 97
    :cond_0
    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    .line 98
    :cond_1
    const/16 v1, 0xa

    .line 99
    :goto_0
    invoke-direct {p0, p2}, Lio/ktor/websocket/Serializer;->maskSize(Z)I

    move-result v2

    .line 95
    add-int/2addr v1, v2

    return v1
.end method

.method private final maskSize(Z)I
    .locals 1
    .param p1, "mask"    # Z

    .line 113
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final maskedIfNeeded(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "$this$maskedIfNeeded"    # Ljava/nio/ByteBuffer;

    .line 115
    iget-object v0, p0, Lio/ktor/websocket/Serializer;->maskBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 134
    .local v0, "mask":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 115
    .local v1, "$i$a$-let-Serializer$maskedIfNeeded$1":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3}, Lio/ktor/util/NIOKt;->copy$default(Ljava/nio/ByteBuffer;IILjava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v3, v2

    .line 134
    .local v3, "$this$maskedIfNeeded_u24lambda_u241_u24lambda_u240":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 115
    .local v4, "$i$a$-apply-Serializer$maskedIfNeeded$1$1":I
    invoke-static {v3, v0}, Lio/ktor/websocket/UtilsKt;->xor(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .end local v0    # "mask":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$a$-let-Serializer$maskedIfNeeded$1":I
    .end local v3    # "$this$maskedIfNeeded_u24lambda_u241_u24lambda_u240":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-Serializer$maskedIfNeeded$1$1":I
    if-nez v2, :cond_1

    :cond_0
    move-object v2, p1

    :cond_1
    return-object v2
.end method

.method private final serializeHeader(Lio/ktor/websocket/Frame;Ljava/nio/ByteBuffer;Z)V
    .locals 11
    .param p1, "frame"    # Lio/ktor/websocket/Frame;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "mask"    # Z

    .line 49
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 50
    .local v0, "size":I
    nop

    .line 51
    const/16 v1, 0x7e

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    .line 52
    :cond_0
    const v2, 0xffff

    if-gt v0, v2, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    const/16 v1, 0x7f

    .line 50
    :goto_0
    nop

    .line 56
    .local v1, "formattedLength":I
    iget-object v2, p0, Lio/ktor/websocket/Serializer;->lastDataFrameType:Lio/ktor/websocket/FrameType;

    .line 57
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 58
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFin()Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v2

    iput-object v2, p0, Lio/ktor/websocket/Serializer;->lastDataFrameType:Lio/ktor/websocket/FrameType;

    .line 61
    :cond_2
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/websocket/FrameType;->getOpcode()I

    move-result v2

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v5

    if-ne v2, v5, :cond_5

    .line 64
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFin()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    iput-object v3, p0, Lio/ktor/websocket/Serializer;->lastDataFrameType:Lio/ktor/websocket/FrameType;

    .line 67
    :cond_4
    move v2, v4

    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 73
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/websocket/FrameType;->getOpcode()I

    move-result v2

    .line 56
    :goto_1
    nop

    .line 76
    .local v2, "continuationOpcode":I
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFin()Z

    move-result v5

    .local v5, "$this$flagAt$iv":Z
    const/4 v6, 0x7

    .local v6, "at$iv":I
    const/4 v7, 0x0

    .line 129
    .local v7, "$i$f$flagAt":I
    const/4 v8, 0x1

    if-eqz v5, :cond_6

    shl-int v9, v8, v6

    goto :goto_2

    :cond_6
    move v9, v4

    .line 77
    .end local v5    # "$this$flagAt$iv":Z
    .end local v6    # "at$iv":I
    .end local v7    # "$i$f$flagAt":I
    :goto_2
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getRsv1()Z

    move-result v5

    .restart local v5    # "$this$flagAt$iv":Z
    const/4 v6, 0x6

    .restart local v6    # "at$iv":I
    const/4 v7, 0x0

    .line 130
    .restart local v7    # "$i$f$flagAt":I
    if-eqz v5, :cond_7

    shl-int v10, v8, v6

    goto :goto_3

    :cond_7
    move v10, v4

    .line 76
    .end local v5    # "$this$flagAt$iv":Z
    .end local v6    # "at$iv":I
    .end local v7    # "$i$f$flagAt":I
    :goto_3
    or-int v5, v9, v10

    .line 78
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getRsv2()Z

    move-result v6

    .local v6, "$this$flagAt$iv":Z
    const/4 v7, 0x5

    .local v7, "at$iv":I
    const/4 v9, 0x0

    .line 131
    .local v9, "$i$f$flagAt":I
    if-eqz v6, :cond_8

    shl-int v10, v8, v7

    goto :goto_4

    :cond_8
    move v10, v4

    .line 76
    .end local v6    # "$this$flagAt$iv":Z
    .end local v7    # "at$iv":I
    .end local v9    # "$i$f$flagAt":I
    :goto_4
    or-int/2addr v5, v10

    .line 79
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getRsv3()Z

    move-result v6

    .restart local v6    # "$this$flagAt$iv":Z
    const/4 v7, 0x4

    .restart local v7    # "at$iv":I
    const/4 v9, 0x0

    .line 132
    .restart local v9    # "$i$f$flagAt":I
    if-eqz v6, :cond_9

    shl-int v10, v8, v7

    goto :goto_5

    :cond_9
    move v10, v4

    .line 76
    .end local v6    # "$this$flagAt$iv":Z
    .end local v7    # "at$iv":I
    .end local v9    # "$i$f$flagAt":I
    :goto_5
    or-int/2addr v5, v10

    .line 80
    nop

    .line 76
    or-int/2addr v5, v2

    .line 82
    .local v5, "header":I
    int-to-byte v6, v5

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 83
    const/4 v6, 0x7

    .local v6, "at$iv":I
    move v7, p3

    .local v7, "$this$flagAt$iv":Z
    const/4 v9, 0x0

    .line 133
    .restart local v9    # "$i$f$flagAt":I
    if-eqz v7, :cond_a

    shl-int/2addr v8, v6

    goto :goto_6

    :cond_a
    move v8, v4

    .line 83
    .end local v6    # "at$iv":I
    .end local v7    # "$this$flagAt$iv":Z
    .end local v9    # "$i$f$flagAt":I
    :goto_6
    or-int v6, v8, v1

    int-to-byte v6, v6

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    packed-switch v1, :pswitch_data_0

    goto :goto_7

    .line 87
    :pswitch_0
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 86
    :pswitch_1
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 90
    :goto_7
    iget-object v6, p0, Lio/ktor/websocket/Serializer;->maskBuffer:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_b

    const/4 v7, 0x2

    invoke-static {v6, p2, v4, v7, v3}, Lio/ktor/util/NIOKt;->moveTo$default(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/lang/Object;)I

    .line 91
    :cond_b
    return-void

    .line 71
    .end local v2    # "continuationOpcode":I
    .end local v5    # "header":I
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t continue with different data frame opcode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setMaskBuffer(Z)V
    .locals 4
    .param p1, "mask"    # Z

    .line 118
    if-eqz p1, :cond_0

    .line 119
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$setMaskBuffer_u24lambda_u242":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$a$-apply-Serializer$setMaskBuffer$1":I
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v3}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 122
    nop

    .line 119
    .end local v1    # "$this$setMaskBuffer_u24lambda_u242":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$a$-apply-Serializer$setMaskBuffer$1":I
    iput-object v0, p0, Lio/ktor/websocket/Serializer;->maskBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/websocket/Serializer;->maskBuffer:Ljava/nio/ByteBuffer;

    .line 126
    :goto_0
    return-void
.end method

.method private final writeCurrentPayload(Ljava/nio/ByteBuffer;)Z
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 103
    iget-object v0, p0, Lio/ktor/websocket/Serializer;->frameBody:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 104
    .local v0, "frame":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, p1, v3, v2, v4}, Lio/ktor/util/NIOKt;->moveTo$default(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/lang/Object;)I

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iput-object v4, p0, Lio/ktor/websocket/Serializer;->frameBody:Ljava/nio/ByteBuffer;

    .line 107
    return v1

    .line 110
    :cond_1
    return v3
.end method


# virtual methods
.method public final enqueue(Lio/ktor/websocket/Frame;)V
    .locals 1
    .param p1, "f"    # Lio/ktor/websocket/Frame;

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public final getHasOutstandingBytes()Z
    .locals 2

    .line 23
    iget-object v0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/ktor/websocket/Serializer;->frameBody:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final getMasking()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lio/ktor/websocket/Serializer;->masking:Z

    return v0
.end method

.method public final getRemainingCapacity()I
    .locals 1

    .line 25
    iget-object v0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public final serialize(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :goto_0
    invoke-direct {p0, p1}, Lio/ktor/websocket/Serializer;->writeCurrentPayload(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/websocket/Frame;

    if-nez v0, :cond_0

    goto :goto_1

    .line 34
    .local v0, "frame":Lio/ktor/websocket/Frame;
    :cond_0
    iget-boolean v1, p0, Lio/ktor/websocket/Serializer;->masking:Z

    .line 35
    .local v1, "mask":Z
    invoke-direct {p0, v1}, Lio/ktor/websocket/Serializer;->setMaskBuffer(Z)V

    .line 37
    invoke-direct {p0, v0, v1}, Lio/ktor/websocket/Serializer;->estimateFrameHeaderSize(Lio/ktor/websocket/Frame;Z)I

    move-result v2

    .line 38
    .local v2, "headerSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 39
    goto :goto_1

    .line 42
    :cond_1
    invoke-direct {p0, v0, p1, v1}, Lio/ktor/websocket/Serializer;->serializeHeader(Lio/ktor/websocket/Frame;Ljava/nio/ByteBuffer;Z)V

    .line 43
    iget-object v3, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->remove()Ljava/lang/Object;

    .line 44
    invoke-virtual {v0}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/ktor/websocket/Serializer;->maskedIfNeeded(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/websocket/Serializer;->frameBody:Ljava/nio/ByteBuffer;

    .end local v0    # "frame":Lio/ktor/websocket/Frame;
    .end local v1    # "mask":Z
    .end local v2    # "headerSize":I
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public final setMasking(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 20
    iput-boolean p1, p0, Lio/ktor/websocket/Serializer;->masking:Z

    return-void
.end method
