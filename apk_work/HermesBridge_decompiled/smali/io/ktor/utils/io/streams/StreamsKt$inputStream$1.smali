.class public final Lio/ktor/utils/io/streams/StreamsKt$inputStream$1;
.super Ljava/io/InputStream;
.source "Streams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/streams/StreamsKt;->inputStream(Lio/ktor/utils/io/core/ByteReadPacket;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Streams.kt\nio/ktor/utils/io/streams/StreamsKt$inputStream$1\n+ 2 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 3 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n*L\n1#1,155:1\n39#2:156\n94#3:157\n*S KotlinDebug\n*F\n+ 1 Streams.kt\nio/ktor/utils/io/streams/StreamsKt$inputStream$1\n*L\n81#1:156\n85#1:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "io/ktor/utils/io/streams/StreamsKt$inputStream$1",
        "Ljava/io/InputStream;",
        "available",
        "",
        "close",
        "",
        "read",
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
.field final synthetic $this_inputStream:Lio/ktor/utils/io/core/ByteReadPacket;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/core/ByteReadPacket;)V
    .locals 0
    .param p1, "$receiver"    # Lio/ktor/utils/io/core/ByteReadPacket;

    iput-object p1, p0, Lio/ktor/utils/io/streams/StreamsKt$inputStream$1;->$this_inputStream:Lio/ktor/utils/io/core/ByteReadPacket;

    .line 79
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5

    .line 85
    iget-object v0, p0, Lio/ktor/utils/io/streams/StreamsKt$inputStream$1;->$this_inputStream:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v0

    .local v0, "$this$coerceAtMostMaxInt$iv":J
    const/4 v2, 0x0

    .line 157
    .local v2, "$i$f$coerceAtMostMaxInt":I
    const-wide/32 v3, 0x7fffffff

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    .line 85
    .end local v0    # "$this$coerceAtMostMaxInt$iv":J
    .end local v2    # "$i$f$coerceAtMostMaxInt":I
    return v0
.end method

.method public close()V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/ktor/utils/io/streams/StreamsKt$inputStream$1;->$this_inputStream:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 89
    return-void
.end method

.method public read()I
    .locals 2

    .line 81
    iget-object v0, p0, Lio/ktor/utils/io/streams/StreamsKt$inputStream$1;->$this_inputStream:Lio/ktor/utils/io/core/ByteReadPacket;

    .local v0, "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v1, 0x0

    .line 156
    .local v1, "$i$f$isEmpty":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v0

    .line 81
    .end local v0    # "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v1    # "$i$f$isEmpty":I
    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/streams/StreamsKt$inputStream$1;->$this_inputStream:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
