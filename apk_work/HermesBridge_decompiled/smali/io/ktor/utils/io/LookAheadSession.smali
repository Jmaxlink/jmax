.class public interface abstract Lio/ktor/utils/io/LookAheadSession;
.super Ljava/lang/Object;
.source "LookAheadSession.kt"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Use read { } instead."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H&\u00a8\u0006\n"
    }
    d2 = {
        "Lio/ktor/utils/io/LookAheadSession;",
        "",
        "consumed",
        "",
        "n",
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


# virtual methods
.method public abstract consumed(I)V
.end method

.method public abstract request(II)Ljava/nio/ByteBuffer;
.end method
