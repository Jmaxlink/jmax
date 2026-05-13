.class public final Lio/ktor/utils/io/core/CopyKt;
.super Ljava/lang/Object;
.source "Copy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "copyTo",
        "",
        "Lio/ktor/utils/io/core/Input;",
        "output",
        "Lio/ktor/utils/io/core/Output;",
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
.method public static final copyTo(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;)J
    .locals 5
    .param p0, "$this$copyTo"    # Lio/ktor/utils/io/core/Input;
    .param p1, "output"    # Lio/ktor/utils/io/core/Output;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-wide/16 v0, 0x0

    .line 13
    .local v0, "copied":J
    :goto_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    .line 14
    .local v2, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-nez v2, :cond_1

    .line 15
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 16
    goto :goto_1

    .line 23
    .end local v2    # "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    return-wide v0

    .line 19
    .restart local v2    # "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    invoke-static {v2}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 20
    invoke-virtual {p1, v2}, Lio/ktor/utils/io/core/Output;->appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 21
    .end local v2    # "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_1
    goto :goto_0
.end method
