.class public final Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;
.super Ljava/lang/Object;
.source "ReadWriteBufferState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u000e\u0010\u0008\u001a\u00020\tX\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "EmptyByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "getEmptyByteBuffer",
        "()Ljava/nio/ByteBuffer;",
        "EmptyCapacity",
        "Lio/ktor/utils/io/internal/RingBufferCapacity;",
        "getEmptyCapacity",
        "()Lio/ktor/utils/io/internal/RingBufferCapacity;",
        "RESERVED_SIZE",
        "",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EmptyByteBuffer:Ljava/nio/ByteBuffer;

.field private static final EmptyCapacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

.field public static final RESERVED_SIZE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "allocate(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    .line 9
    new-instance v1, Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;-><init>(I)V

    sput-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->EmptyCapacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    return-void
.end method

.method public static final getEmptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 8
    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static final getEmptyCapacity()Lio/ktor/utils/io/internal/RingBufferCapacity;
    .locals 1

    .line 9
    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->EmptyCapacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    return-object v0
.end method
