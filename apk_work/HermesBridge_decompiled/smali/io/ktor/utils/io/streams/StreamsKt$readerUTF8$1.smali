.class public final Lio/ktor/utils/io/streams/StreamsKt$readerUTF8$1;
.super Ljava/io/Reader;
.source "Streams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/streams/StreamsKt;->readerUTF8(Lio/ktor/utils/io/core/ByteReadPacket;)Ljava/io/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "io/ktor/utils/io/streams/StreamsKt$readerUTF8$1",
        "Ljava/io/Reader;",
        "close",
        "",
        "read",
        "",
        "cbuf",
        "",
        "off",
        "len",
        "skip",
        "",
        "n",
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
.field final synthetic $this_readerUTF8:Lio/ktor/utils/io/core/ByteReadPacket;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/core/ByteReadPacket;)V
    .locals 0
    .param p1, "$receiver"    # Lio/ktor/utils/io/core/ByteReadPacket;

    iput-object p1, p0, Lio/ktor/utils/io/streams/StreamsKt$readerUTF8$1;->$this_readerUTF8:Lio/ktor/utils/io/core/ByteReadPacket;

    .line 97
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 99
    iget-object v0, p0, Lio/ktor/utils/io/streams/StreamsKt$readerUTF8$1;->$this_readerUTF8:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 100
    return-void
.end method

.method public read([CII)I
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    const-string v0, "cbuf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lio/ktor/utils/io/streams/StreamsKt$readerUTF8$1;->$this_readerUTF8:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0, p1, p2, p3}, Lio/ktor/utils/io/core/ByteReadPacket;->readAvailableCharacters$ktor_io([CII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 8
    .param p1, "n"    # J

    .line 103
    const-wide/16 v0, 0x0

    .line 104
    .local v0, "skipped":J
    invoke-static {}, Lio/ktor/utils/io/streams/StreamsKt;->access$getSkipBuffer$p()[C

    move-result-object v2

    .line 105
    .local v2, "buffer":[C
    array-length v3, v2

    .line 107
    .local v3, "bufferSize":I
    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    .line 108
    int-to-long v4, v3

    sub-long v6, p1, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 109
    .local v4, "size":I
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5, v4}, Lio/ktor/utils/io/streams/StreamsKt$readerUTF8$1;->read([CII)I

    move-result v5

    .line 110
    .local v5, "rc":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 111
    int-to-long v6, v5

    add-long/2addr v0, v6

    .end local v4    # "size":I
    .end local v5    # "rc":I
    goto :goto_0

    .line 114
    :cond_0
    return-wide v0
.end method
