.class public final Lio/ktor/utils/io/streams/ByteArraysKt;
.super Ljava/lang/Object;
.source "ByteArrays.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "ByteArrayPool",
        "Lio/ktor/utils/io/pool/DefaultPool;",
        "",
        "getByteArrayPool",
        "()Lio/ktor/utils/io/pool/DefaultPool;",
        "ByteArrayPoolBufferSize",
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
.field private static final ByteArrayPool:Lio/ktor/utils/io/pool/DefaultPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/DefaultPool<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final ByteArrayPoolBufferSize:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lio/ktor/utils/io/streams/ByteArraysKt$ByteArrayPool$1;

    invoke-direct {v0}, Lio/ktor/utils/io/streams/ByteArraysKt$ByteArrayPool$1;-><init>()V

    check-cast v0, Lio/ktor/utils/io/pool/DefaultPool;

    sput-object v0, Lio/ktor/utils/io/streams/ByteArraysKt;->ByteArrayPool:Lio/ktor/utils/io/pool/DefaultPool;

    return-void
.end method

.method public static final getByteArrayPool()Lio/ktor/utils/io/pool/DefaultPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/DefaultPool<",
            "[B>;"
        }
    .end annotation

    .line 7
    sget-object v0, Lio/ktor/utils/io/streams/ByteArraysKt;->ByteArrayPool:Lio/ktor/utils/io/pool/DefaultPool;

    return-object v0
.end method
