.class public final Lio/ktor/utils/io/streams/OutputKt;
.super Ljava/lang/Object;
.source "Output.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "asOutput",
        "Lio/ktor/utils/io/core/Output;",
        "Ljava/io/OutputStream;",
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
.method public static final asOutput(Ljava/io/OutputStream;)Lio/ktor/utils/io/core/Output;
    .locals 2
    .param p0, "$this$asOutput"    # Ljava/io/OutputStream;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lio/ktor/utils/io/streams/OutputStreamAdapter;

    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/ktor/utils/io/streams/OutputStreamAdapter;-><init>(Lio/ktor/utils/io/pool/ObjectPool;Ljava/io/OutputStream;)V

    check-cast v0, Lio/ktor/utils/io/core/Output;

    return-object v0
.end method
