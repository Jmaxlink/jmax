.class public final Lio/ktor/utils/io/ByteChannelKt;
.super Ljava/lang/Object;
.source "ByteChannel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a(\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u001a\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u001a\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r\u00a8\u0006\u000f"
    }
    d2 = {
        "ByteChannel",
        "Lio/ktor/utils/io/ByteChannel;",
        "autoFlush",
        "",
        "exceptionMapper",
        "Lkotlin/Function1;",
        "",
        "ByteReadChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "content",
        "Ljava/nio/ByteBuffer;",
        "",
        "offset",
        "",
        "length",
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


# direct methods
.method public static final ByteChannel(Z)Lio/ktor/utils/io/ByteChannel;
    .locals 7
    .param p0, "autoFlush"    # Z

    .line 14
    new-instance v6, Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/ObjectPool;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lio/ktor/utils/io/ByteChannel;

    return-object v6
.end method

.method public static final ByteChannel(ZLkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/ByteChannel;
    .locals 1
    .param p0, "autoFlush"    # Z
    .param p1, "exceptionMapper"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/ktor/utils/io/ByteChannel;"
        }
    .end annotation

    const-string v0, "exceptionMapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lio/ktor/utils/io/ByteChannelKt$ByteChannel$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelKt$ByteChannel$1;-><init>(ZLkotlin/jvm/functions/Function1;)V

    check-cast v0, Lio/ktor/utils/io/ByteChannel;

    .line 34
    return-object v0
.end method

.method public static synthetic ByteChannel$default(ZILjava/lang/Object;)Lio/ktor/utils/io/ByteChannel;
    .locals 0

    .line 14
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 35
    const/4 p0, 0x0

    .line 14
    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/ByteChannelKt;->ByteChannel(Z)Lio/ktor/utils/io/ByteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ByteChannel$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/utils/io/ByteChannel;
    .locals 0

    .line 27
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelKt;->ByteChannel(ZLkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/ByteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final ByteReadChannel(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 1
    .param p0, "content"    # Ljava/nio/ByteBuffer;

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(Ljava/nio/ByteBuffer;)V

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method

.method public static final ByteReadChannel([BII)Lio/ktor/utils/io/ByteReadChannel;
    .locals 3
    .param p0, "content"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "wrap(content, offset, length)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(Ljava/nio/ByteBuffer;)V

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method
