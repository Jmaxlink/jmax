.class public final Lio/ktor/http/cio/RequestResponseBuilder;
.super Ljava/lang/Object;
.source "RequestResponseBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\u0008J\u0016\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0008J\u001e\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0012J\u001e\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/ktor/http/cio/RequestResponseBuilder;",
        "",
        "()V",
        "packet",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "build",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "bytes",
        "",
        "content",
        "Ljava/nio/ByteBuffer;",
        "",
        "offset",
        "",
        "length",
        "emptyLine",
        "headerLine",
        "name",
        "",
        "value",
        "line",
        "release",
        "requestLine",
        "method",
        "Lio/ktor/http/HttpMethod;",
        "uri",
        "version",
        "responseLine",
        "status",
        "statusText",
        "ktor-http-cio"
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
.field private final packet:Lio/ktor/utils/io/core/BytePacketBuilder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 14
    return-void
.end method

.method public static synthetic bytes$default(Lio/ktor/http/cio/RequestResponseBuilder;[BIIILjava/lang/Object;)V
    .locals 0

    .line 55
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 27
    const/4 p2, 0x0

    .line 55
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 30
    nop

    .line 27
    nop

    .line 30
    array-length p3, p1

    .line 55
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/http/cio/RequestResponseBuilder;->bytes([BII)V

    return-void
.end method


# virtual methods
.method public final build()Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0
.end method

.method public final bytes(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v0, Lio/ktor/utils/io/core/Output;

    invoke-static {v0, p1}, Lio/ktor/utils/io/core/OutputArraysJVMKt;->writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V

    .line 64
    return-void
.end method

.method public final bytes([BII)V
    .locals 1
    .param p1, "content"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v0, Lio/ktor/utils/io/core/Output;

    invoke-static {v0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[BII)V

    .line 57
    return-void
.end method

.method public final emptyLine()V
    .locals 2

    .line 81
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 82
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 83
    return-void
.end method

.method public final headerLine(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 71
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const-string v1, ": "

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 72
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0, p2}, Lio/ktor/utils/io/core/BytePacketBuilder;->append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 73
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 74
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 75
    return-void
.end method

.method public final line(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/CharSequence;

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 48
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 49
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 50
    return-void
.end method

.method public final release()V
    .locals 1

    .line 94
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 95
    return-void
.end method

.method public final requestLine(Lio/ktor/http/HttpMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "method"    # Lio/ktor/http/HttpMethod;
    .param p2, "uri"    # Ljava/lang/CharSequence;
    .param p3, "version"    # Ljava/lang/CharSequence;

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Output;

    invoke-virtual {p1}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 36
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/core/Output;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 38
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Output;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 40
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 41
    return-void
.end method

.method public final responseLine(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V
    .locals 9
    .param p1, "version"    # Ljava/lang/CharSequence;
    .param p2, "status"    # I
    .param p3, "statusText"    # Ljava/lang/CharSequence;

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Output;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 23
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/core/Output;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 25
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Output;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 27
    iget-object v0, p0, Lio/ktor/http/cio/RequestResponseBuilder;->packet:Lio/ktor/utils/io/core/BytePacketBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 28
    return-void
.end method
