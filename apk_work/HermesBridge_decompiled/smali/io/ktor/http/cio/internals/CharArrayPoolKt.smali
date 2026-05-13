.class public final Lio/ktor/http/cio/internals/CharArrayPoolKt;
.super Ljava/lang/Object;
.source "CharArrayPool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "CHAR_ARRAY_POOL_SIZE",
        "",
        "CHAR_BUFFER_ARRAY_LENGTH",
        "CharArrayPool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "",
        "getCharArrayPool",
        "()Lio/ktor/utils/io/pool/ObjectPool;",
        "ktor-http-cio"
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
.field public static final CHAR_ARRAY_POOL_SIZE:I = 0x1000

.field public static final CHAR_BUFFER_ARRAY_LENGTH:I = 0x800

.field private static final CharArrayPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Lio/ktor/http/cio/internals/CharArrayPoolJvmKt;->isPoolingDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$1;

    invoke-direct {v0}, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$1;-><init>()V

    check-cast v0, Lio/ktor/utils/io/pool/ObjectPool;

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$2;

    invoke-direct {v0}, Lio/ktor/http/cio/internals/CharArrayPoolKt$CharArrayPool$2;-><init>()V

    check-cast v0, Lio/ktor/utils/io/pool/ObjectPool;

    .line 18
    :goto_0
    sput-object v0, Lio/ktor/http/cio/internals/CharArrayPoolKt;->CharArrayPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public static final getCharArrayPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[C>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lio/ktor/http/cio/internals/CharArrayPoolKt;->CharArrayPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method
