.class public final Lio/ktor/utils/io/core/internal/ChunkBufferKt;
.super Ljava/lang/Object;
.source "ChunkBuffer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "isExclusivelyOwned",
        "",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
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
.method public static final isExclusivelyOwned(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Z
    .locals 2
    .param p0, "$this$isExclusivelyOwned"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
