.class public Lio/ktor/utils/io/core/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/Buffer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n*L\n1#1,472:1\n69#1:475\n69#1:476\n74#1:477\n74#1:478\n74#1:479\n69#1:480\n69#1,6:491\n59#1:497\n21#2:473\n21#2:474\n26#2:483\n26#2:485\n26#2:487\n37#2,2:489\n1#3:481\n84#4:482\n84#4:484\n84#4:486\n99#4:488\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n86#1:475\n81#1:476\n94#1:477\n106#1:478\n113#1:479\n122#1:480\n333#1:491,6\n333#1:497\n53#1:473\n64#1:474\n277#1:483\n291#1:485\n307#1:487\n319#1:489,2\n277#1:482\n291#1:484\n307#1:486\n319#1:488\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "\n    We\'re migrating to the new kotlinx-io library.\n    This declaration is deprecated and will be removed in Ktor 4.0.0\n    If you have any problems with migration, please contact us in \n    https://youtrack.jetbrains.com/issue/KTOR-6030/Migrate-to-new-kotlinx.io-library\n    "
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0005\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 <2\u00020\u0001:\u0001<B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0006H\u0001J\u0010\u0010!\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0006J\u0015\u0010\"\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008#J\u0008\u0010$\u001a\u00020\u0000H\u0016J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u0000H\u0014J\u0006\u0010\'\u001a\u00020(J\r\u0010)\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008*J\r\u0010+\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008,J\u0015\u0010-\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008/J\u000e\u00100\u001a\u00020\u001c2\u0006\u0010\t\u001a\u00020\u0006J\u000e\u00101\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u0006J\u0008\u00102\u001a\u00020\u001cH\u0016J\u0006\u00103\u001a\u00020\u001cJ\u0006\u00104\u001a\u00020\u001cJ\u000e\u00104\u001a\u00020\u001c2\u0006\u0010\u000c\u001a\u00020\u0006J\u0010\u00105\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0006J\u0008\u00106\u001a\u000207H\u0016J\u0006\u00108\u001a\u00020\u0006J\u0006\u00109\u001a\u00020\u0006J\u000e\u0010:\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020(R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00020\u00068\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u001e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u001c\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0012\u0010\u0013\u001a\u00020\u00068\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0008R\u001e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0008R\u001e\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008R\u0012\u0010\u0019\u001a\u00020\u00068\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0008\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006="
    }
    d2 = {
        "Lio/ktor/utils/io/core/Buffer;",
        "",
        "memory",
        "Lio/ktor/utils/io/bits/Memory;",
        "(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "capacity",
        "",
        "getCapacity",
        "()I",
        "endGap",
        "getEndGap",
        "<set-?>",
        "limit",
        "getLimit",
        "getMemory-SK3TCg8",
        "()Ljava/nio/ByteBuffer;",
        "Ljava/nio/ByteBuffer;",
        "readPosition",
        "getReadPosition",
        "readRemaining",
        "getReadRemaining",
        "startGap",
        "getStartGap",
        "writePosition",
        "getWritePosition",
        "writeRemaining",
        "getWriteRemaining",
        "commitWritten",
        "",
        "count",
        "commitWrittenUntilIndex",
        "",
        "position",
        "discardExact",
        "discardUntilIndex",
        "discardUntilIndex$ktor_io",
        "duplicate",
        "duplicateTo",
        "copy",
        "readByte",
        "",
        "releaseEndGap",
        "releaseEndGap$ktor_io",
        "releaseGaps",
        "releaseGaps$ktor_io",
        "releaseStartGap",
        "newReadPosition",
        "releaseStartGap$ktor_io",
        "reserveEndGap",
        "reserveStartGap",
        "reset",
        "resetForRead",
        "resetForWrite",
        "rewind",
        "toString",
        "",
        "tryPeekByte",
        "tryReadByte",
        "writeByte",
        "value",
        "Companion",
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


# static fields
.field public static final Companion:Lio/ktor/utils/io/core/Buffer$Companion;

.field public static final ReservedSize:I = 0x8


# instance fields
.field private final capacity:I

.field private limit:I

.field private final memory:Ljava/nio/ByteBuffer;

.field private readPosition:I

.field private startGap:I

.field private writePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/utils/io/core/Buffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/Buffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "memory"    # Ljava/nio/ByteBuffer;

    const-string v0, "memory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    .line 53
    iget-object v0, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    .local v0, "arg0$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 473
    .local v1, "$i$f$getSize32-impl":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 53
    .end local v0    # "arg0$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$getSize32-impl":I
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    .line 64
    iget-object v0, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    .restart local v0    # "arg0$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 474
    .restart local v1    # "$i$f$getSize32-impl":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 64
    .end local v0    # "arg0$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$getSize32-impl":I
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic discardExact$default(Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)V
    .locals 1

    .line 81
    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    move-object p1, p0

    .local p1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 p2, 0x0

    .line 476
    .local p2, "$i$f$getReadRemaining":I
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p3

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    sub-int p1, p3, v0

    .line 81
    .end local p1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local p2    # "$i$f$getReadRemaining":I
    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: discardExact"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic rewind$default(Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)V
    .locals 0

    .line 134
    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iget p2, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    sub-int/2addr p1, p2

    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Buffer;->rewind(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: rewind"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final commitWritten(I)V
    .locals 5
    .param p1, "count"    # I

    .line 92
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    add-int/2addr v0, p1

    .line 93
    .local v0, "newWritePosition":I
    if-ltz p1, :cond_0

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    if-gt v0, v1, :cond_0

    .line 96
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 97
    return-void

    .line 94
    :cond_0
    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 477
    .local v2, "$i$f$getWriteRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 94
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getWriteRemaining":I
    invoke-static {p1, v3}, Lio/ktor/utils/io/core/BufferKt;->commitWrittenFailed(II)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public final commitWrittenUntilIndex(I)Z
    .locals 6
    .param p1, "position"    # I

    .line 104
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    .line 105
    .local v0, "limit":I
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-lt p1, v1, :cond_2

    .line 108
    if-lt p1, v0, :cond_1

    .line 109
    if-ne p1, v0, :cond_0

    .line 110
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 111
    const/4 v1, 0x0

    return v1

    .line 113
    :cond_0
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    sub-int v1, p1, v1

    move-object v2, p0

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 479
    .local v3, "$i$f$getWriteRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 113
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getWriteRemaining":I
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/BufferKt;->commitWrittenFailed(II)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 116
    :cond_1
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 117
    const/4 v1, 0x1

    return v1

    .line 106
    :cond_2
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    sub-int v1, p1, v1

    move-object v2, p0

    .restart local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 478
    .restart local v3    # "$i$f$getWriteRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 106
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getWriteRemaining":I
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/BufferKt;->commitWrittenFailed(II)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public final discardExact(I)V
    .locals 5
    .param p1, "count"    # I

    .line 82
    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    add-int/2addr v0, p1

    .line 85
    .local v0, "newReadPosition":I
    if-ltz p1, :cond_1

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-gt v0, v1, :cond_1

    .line 88
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 89
    return-void

    .line 86
    :cond_1
    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 475
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 86
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-static {p1, v3}, Lio/ktor/utils/io/core/BufferKt;->discardFailed(II)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public final discardUntilIndex$ktor_io(I)V
    .locals 5
    .param p1, "position"    # I

    .line 121
    if-ltz p1, :cond_1

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-gt p1, v0, :cond_1

    .line 125
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    if-eq v0, p1, :cond_0

    .line 126
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 128
    :cond_0
    return-void

    .line 122
    :cond_1
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    sub-int v0, p1, v0

    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 480
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 122
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-static {v0, v3}, Lio/ktor/utils/io/core/BufferKt;->discardFailed(II)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public duplicate()Lio/ktor/utils/io/core/Buffer;
    .locals 3

    .line 263
    new-instance v0, Lio/ktor/utils/io/core/Buffer;

    iget-object v1, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/ktor/utils/io/core/Buffer;-><init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .local v1, "$this$duplicate_u24lambda_u244":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 264
    .local v2, "$i$a$-apply-Buffer$duplicate$1":I
    invoke-virtual {v1, v1}, Lio/ktor/utils/io/core/Buffer;->duplicateTo(Lio/ktor/utils/io/core/Buffer;)V

    .line 265
    nop

    .line 263
    .end local v1    # "$this$duplicate_u24lambda_u244":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$a$-apply-Buffer$duplicate$1":I
    nop

    .line 265
    return-object v0
.end method

.method protected duplicateTo(Lio/ktor/utils/io/core/Buffer;)V
    .locals 1
    .param p1, "copy"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "copy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    iput v0, p1, Lio/ktor/utils/io/core/Buffer;->limit:I

    .line 255
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    iput v0, p1, Lio/ktor/utils/io/core/Buffer;->startGap:I

    .line 256
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iput v0, p1, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 257
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    iput v0, p1, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 258
    return-void
.end method

.method public final getCapacity()I
    .locals 1

    .line 64
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    return v0
.end method

.method public final getEndGap()I
    .locals 3

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$f$getEndGap":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public final getLimit()I
    .locals 1

    .line 53
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    return v0
.end method

.method public final getMemory-SK3TCg8()Ljava/nio/ByteBuffer;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getReadPosition()I
    .locals 1

    .line 27
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    return v0
.end method

.method public final getReadRemaining()I
    .locals 3

    const/4 v0, 0x0

    .line 69
    .local v0, "$i$f$getReadRemaining":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public final getStartGap()I
    .locals 1

    .line 43
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    return v0
.end method

.method public final getWritePosition()I
    .locals 1

    .line 36
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    return v0
.end method

.method public final getWriteRemaining()I
    .locals 3

    const/4 v0, 0x0

    .line 74
    .local v0, "$i$f$getWriteRemaining":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public final readByte()B
    .locals 4

    .line 302
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 303
    .local v0, "readPosition":I
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-eq v0, v1, :cond_0

    .line 306
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 307
    iget-object v1, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    .local v1, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 486
    .local v2, "$i$f$get-eY85DW0":I
    const/4 v3, 0x0

    .line 487
    .local v3, "$i$f$loadAt-impl":I
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 486
    .end local v3    # "$i$f$loadAt-impl":I
    nop

    .line 307
    .end local v1    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$get-eY85DW0":I
    return v3

    .line 304
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "No readable bytes available."

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final releaseEndGap$ktor_io()V
    .locals 1

    .line 238
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    .line 239
    return-void
.end method

.method public final releaseGaps$ktor_io()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->releaseStartGap$ktor_io(I)V

    .line 234
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->releaseEndGap$ktor_io()V

    .line 235
    return-void
.end method

.method public final releaseStartGap$ktor_io(I)V
    .locals 3
    .param p1, "newReadPosition"    # I

    .line 242
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 243
    iget v2, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 247
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 248
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    if-le v0, p1, :cond_2

    .line 249
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    .line 251
    :cond_2
    return-void

    .line 243
    :cond_3
    const/4 v0, 0x0

    .line 244
    .local v0, "$i$a$-require-Buffer$releaseStartGap$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newReadPosition shouldn\'t be ahead of the read position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .end local v0    # "$i$a$-require-Buffer$releaseStartGap$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_4
    const/4 v0, 0x0

    .line 242
    .local v0, "$i$a$-require-Buffer$releaseStartGap$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newReadPosition shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$releaseStartGap$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final reserveEndGap(I)V
    .locals 3
    .param p1, "endGap"    # I

    .line 174
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 176
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    sub-int/2addr v0, p1

    .line 177
    .local v0, "newLimit":I
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-lt v0, v1, :cond_1

    .line 178
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    .line 179
    return-void

    .line 182
    :cond_1
    if-gez v0, :cond_2

    .line 183
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->endGapReservationFailedDueToCapacity(Lio/ktor/utils/io/core/Buffer;I)V

    .line 185
    :cond_2
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    if-ge v0, v1, :cond_3

    .line 186
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->endGapReservationFailedDueToStartGap(Lio/ktor/utils/io/core/Buffer;I)V

    .line 189
    :cond_3
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iget v2, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-ne v1, v2, :cond_4

    .line 190
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    .line 191
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 192
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 193
    return-void

    .line 196
    :cond_4
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->endGapReservationFailedDueToContent(Lio/ktor/utils/io/core/Buffer;I)V

    .line 197
    return-void

    .line 481
    .end local v0    # "newLimit":I
    :cond_5
    const/4 v0, 0x0

    .line 174
    .local v0, "$i$a$-require-Buffer$reserveEndGap$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endGap shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$reserveEndGap$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final reserveStartGap(I)V
    .locals 3
    .param p1, "startGap"    # I

    .line 147
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 149
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    if-lt v0, p1, :cond_1

    .line 150
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    .line 151
    return-void

    .line 154
    :cond_1
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-ne v0, v1, :cond_3

    .line 155
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    if-gt p1, v0, :cond_2

    .line 159
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 160
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 161
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    .line 162
    return-void

    .line 156
    :cond_2
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->startGapReservationFailedDueToLimit(Lio/ktor/utils/io/core/Buffer;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 165
    :cond_3
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->startGapReservationFailed(Lio/ktor/utils/io/core/Buffer;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 481
    :cond_4
    const/4 v0, 0x0

    .line 147
    .local v0, "$i$a$-require-Buffer$reserveStartGap$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGap shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$reserveStartGap$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 0

    .line 327
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->releaseGaps$ktor_io()V

    .line 328
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->resetForWrite()V

    .line 329
    return-void
.end method

.method public final resetForRead()V
    .locals 1

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    .line 204
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 206
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    .line 207
    .local v0, "capacity":I
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 208
    return-void
.end method

.method public final resetForWrite()V
    .locals 2

    .line 214
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->resetForWrite(I)V

    .line 215
    return-void
.end method

.method public final resetForWrite(I)V
    .locals 1
    .param p1, "limit"    # I

    .line 223
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    .line 224
    .local v0, "startGap":I
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 225
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 226
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    .line 227
    return-void
.end method

.method public final rewind(I)V
    .locals 3
    .param p1, "count"    # I

    .line 135
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    sub-int/2addr v0, p1

    .line 136
    .local v0, "newReadPosition":I
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    if-lt v0, v1, :cond_0

    .line 139
    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 140
    return-void

    .line 137
    :cond_0
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iget v2, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Lio/ktor/utils/io/core/BufferKt;->rewindFailed(II)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer[0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 491
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 332
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    nop

    .line 332
    const-string v1, " used, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    move-object v1, p0

    .restart local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 496
    .local v2, "$i$f$getWriteRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 332
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getWriteRemaining":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    nop

    .line 332
    const-string v1, " free, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    move-object v2, p0

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 497
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    sub-int/2addr v4, v5

    .line 333
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    add-int/2addr v1, v4

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    nop

    .line 332
    const-string v1, " reserved of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryPeekByte()I
    .locals 4

    .line 275
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 276
    .local v0, "readPosition":I
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 277
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    .local v1, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 482
    .local v2, "$i$f$get-eY85DW0":I
    const/4 v3, 0x0

    .line 483
    .local v3, "$i$f$loadAt-impl":I
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 482
    .end local v3    # "$i$f$loadAt-impl":I
    nop

    .line 277
    .end local v1    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$get-eY85DW0":I
    and-int/lit16 v1, v3, 0xff

    return v1
.end method

.method public final tryReadByte()I
    .locals 4

    .line 288
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 289
    .local v0, "readPosition":I
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 290
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    .line 291
    iget-object v1, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    .local v1, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 484
    .local v2, "$i$f$get-eY85DW0":I
    const/4 v3, 0x0

    .line 485
    .local v3, "$i$f$loadAt-impl":I
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 484
    .end local v3    # "$i$f$loadAt-impl":I
    nop

    .line 291
    .end local v1    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$get-eY85DW0":I
    and-int/lit16 v1, v3, 0xff

    return v1
.end method

.method public final writeByte(B)V
    .locals 4
    .param p1, "value"    # B

    .line 315
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 316
    .local v0, "writePosition":I
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    if-eq v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    .local v1, "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 488
    .local v2, "$i$f$set-62zg_DM":I
    const/4 v3, 0x0

    .line 489
    .local v3, "$i$f$storeAt-impl":I
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 490
    nop

    .line 488
    .end local v3    # "$i$f$storeAt-impl":I
    nop

    .line 320
    .end local v1    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$set-62zg_DM":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    .line 321
    return-void

    .line 317
    :cond_0
    new-instance v1, Lio/ktor/utils/io/core/InsufficientSpaceException;

    const-string v2, "No free space in the buffer to write a byte"

    invoke-direct {v1, v2}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
