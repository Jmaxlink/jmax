.class public final Lio/ktor/utils/io/streams/StreamsKt$writerUTF8$1;
.super Ljava/io/Writer;
.source "Streams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/streams/StreamsKt;->writerUTF8(Lio/ktor/utils/io/core/BytePacketBuilder;)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J \u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "io/ktor/utils/io/streams/StreamsKt$writerUTF8$1",
        "Ljava/io/Writer;",
        "close",
        "",
        "flush",
        "write",
        "cbuf",
        "",
        "off",
        "",
        "len",
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


# instance fields
.field final synthetic $this_writerUTF8:Lio/ktor/utils/io/core/BytePacketBuilder;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/core/BytePacketBuilder;)V
    .locals 0
    .param p1, "$receiver"    # Lio/ktor/utils/io/core/BytePacketBuilder;

    iput-object p1, p0, Lio/ktor/utils/io/streams/StreamsKt$writerUTF8$1;->$this_writerUTF8:Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 143
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 152
    return-void
.end method

.method public flush()V
    .locals 0

    .line 149
    return-void
.end method

.method public write([CII)V
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    const-string v0, "cbuf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lio/ktor/utils/io/streams/StreamsKt$writerUTF8$1;->$this_writerUTF8:Lio/ktor/utils/io/core/BytePacketBuilder;

    add-int v1, p2, p3

    invoke-virtual {v0, p1, p2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->append([CII)Ljava/lang/Appendable;

    .line 146
    return-void
.end method
