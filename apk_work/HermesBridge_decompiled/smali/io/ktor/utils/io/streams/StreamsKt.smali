.class public final Lio/ktor/utils/io/streams/StreamsKt;
.super Ljava/lang/Object;
.source "Streams.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Streams.kt\nio/ktor/utils/io/streams/StreamsKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n12#2,11:156\n43#3:167\n1#4:168\n*S KotlinDebug\n*F\n+ 1 Streams.kt\nio/ktor/utils/io/streams/StreamsKt\n*L\n11#1:156,11\n23#1:167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007\u001a\u0012\u0010\u0008\u001a\u00020\u0004*\u00020\u00032\u0006\u0010\t\u001a\u00020\n\u001a\u0012\u0010\u000b\u001a\u00020\u0004*\u00020\u00032\u0006\u0010\t\u001a\u00020\n\u001a\u0012\u0010\u000c\u001a\u00020\u0004*\u00020\u00032\u0006\u0010\t\u001a\u00020\n\u001a\u001c\u0010\r\u001a\u00020\u0004*\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0002\u001a\n\u0010\u0010\u001a\u00020\u0011*\u00020\u0004\u001a#\u0010\u0012\u001a\u00020\u0013*\u00020\u00062\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00130\u0015\u00a2\u0006\u0002\u0008\u0016\u001a\u0012\u0010\u0012\u001a\u00020\u0013*\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0004\u001a\n\u0010\u0018\u001a\u00020\u0019*\u00020\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "SkipBuffer",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "readPacketAtLeast",
        "n",
        "",
        "readPacketAtMost",
        "readPacketExact",
        "readPacketImpl",
        "min",
        "max",
        "readerUTF8",
        "Ljava/io/Reader;",
        "writePacket",
        "",
        "builder",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "packet",
        "writerUTF8",
        "Ljava/io/Writer;",
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
.field private static final SkipBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const/16 v0, 0x2000

    new-array v0, v0, [C

    sput-object v0, Lio/ktor/utils/io/streams/StreamsKt;->SkipBuffer:[C

    return-void
.end method

.method public static final synthetic access$getSkipBuffer$p()[C
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/utils/io/streams/StreamsKt;->SkipBuffer:[C

    return-object v0
.end method

.method public static final inputStream(Lio/ktor/utils/io/core/ByteReadPacket;)Ljava/io/InputStream;
    .locals 1
    .param p0, "$this$inputStream"    # Lio/ktor/utils/io/core/ByteReadPacket;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lio/ktor/utils/io/streams/StreamsKt$inputStream$1;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/streams/StreamsKt$inputStream$1;-><init>(Lio/ktor/utils/io/core/ByteReadPacket;)V

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public static final outputStream(Lio/ktor/utils/io/core/BytePacketBuilder;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "$this$outputStream"    # Lio/ktor/utils/io/core/BytePacketBuilder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lio/ktor/utils/io/streams/StreamsKt$outputStream$1;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/streams/StreamsKt$outputStream$1;-><init>(Lio/ktor/utils/io/core/BytePacketBuilder;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public static final readPacketAtLeast(Ljava/io/InputStream;J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 2
    .param p0, "$this$readPacketAtLeast"    # Ljava/io/InputStream;
    .param p1, "n"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, p2, v0, v1}, Lio/ktor/utils/io/streams/StreamsKt;->readPacketImpl(Ljava/io/InputStream;JJ)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0
.end method

.method public static final readPacketAtMost(Ljava/io/InputStream;J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 2
    .param p0, "$this$readPacketAtMost"    # Ljava/io/InputStream;
    .param p1, "n"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lio/ktor/utils/io/streams/StreamsKt;->readPacketImpl(Ljava/io/InputStream;JJ)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0
.end method

.method public static final readPacketExact(Ljava/io/InputStream;J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 1
    .param p0, "$this$readPacketExact"    # Ljava/io/InputStream;
    .param p1, "n"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p1, p2, p1, p2}, Lio/ktor/utils/io/streams/StreamsKt;->readPacketImpl(Ljava/io/InputStream;JJ)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0
.end method

.method private static final readPacketImpl(Ljava/io/InputStream;JJ)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 11
    .param p0, "$this$readPacketImpl"    # Ljava/io/InputStream;
    .param p1, "min"    # J
    .param p3, "max"    # J

    .line 49
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_6

    .line 50
    cmp-long v2, p1, p3

    if-gtz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_5

    .line 52
    const-wide/16 v5, 0x1000

    invoke-static {p3, p4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v5

    long-to-int v2, v5

    new-array v2, v2, [B

    .line 53
    .local v2, "buffer":[B
    new-instance v5, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v6}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v5

    .line 55
    .local v3, "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    const-wide/16 v5, 0x0

    .line 57
    .local v5, "read":J
    nop

    .line 58
    :goto_2
    cmp-long v7, v5, p1

    if-ltz v7, :cond_3

    cmp-long v7, v5, p1

    if-nez v7, :cond_2

    cmp-long v7, p1, v0

    if-nez v7, :cond_2

    goto :goto_3

    .line 70
    :cond_2
    invoke-virtual {v3}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0

    .line 59
    :cond_3
    :goto_3
    sub-long v7, p3, v5

    const-wide/32 v9, 0x7fffffff

    :try_start_0
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    .line 60
    .local v7, "remInt":I
    array-length v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0, v2, v4, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 61
    .local v8, "rc":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 62
    int-to-long v9, v8

    add-long/2addr v5, v9

    .line 63
    move-object v9, v3

    check-cast v9, Lio/ktor/utils/io/core/Output;

    invoke-static {v9, v2, v4, v8}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[BII)V

    .end local v7    # "remInt":I
    .end local v8    # "rc":I
    goto :goto_2

    .line 61
    .restart local v7    # "remInt":I
    .restart local v8    # "rc":I
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Premature end of stream: was read "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v2    # "buffer":[B
    .end local v3    # "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v5    # "read":J
    .end local p0    # "$this$readPacketImpl":Ljava/io/InputStream;
    .end local p1    # "min":J
    .end local p3    # "max":J
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v7    # "remInt":I
    .end local v8    # "rc":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v5    # "read":J
    .restart local p0    # "$this$readPacketImpl":Ljava/io/InputStream;
    .restart local p1    # "min":J
    .restart local p3    # "max":J
    :catchall_0
    move-exception v0

    .line 66
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 67
    throw v0

    .line 168
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v2    # "buffer":[B
    .end local v3    # "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v5    # "read":J
    :cond_5
    const/4 v0, 0x0

    .line 50
    .local v0, "$i$a$-require-StreamsKt$readPacketImpl$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min shouldn\'t be greater than max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-StreamsKt$readPacketImpl$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_6
    const/4 v0, 0x0

    .line 49
    .local v0, "$i$a$-require-StreamsKt$readPacketImpl$1":I
    nop

    .end local v0    # "$i$a$-require-StreamsKt$readPacketImpl$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min shouldn\'t be negative"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final readerUTF8(Lio/ktor/utils/io/core/ByteReadPacket;)Ljava/io/Reader;
    .locals 1
    .param p0, "$this$readerUTF8"    # Lio/ktor/utils/io/core/ByteReadPacket;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lio/ktor/utils/io/streams/StreamsKt$readerUTF8$1;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/streams/StreamsKt$readerUTF8$1;-><init>(Lio/ktor/utils/io/core/ByteReadPacket;)V

    check-cast v0, Ljava/io/Reader;

    return-object v0
.end method

.method public static final writePacket(Ljava/io/OutputStream;Lio/ktor/utils/io/core/ByteReadPacket;)V
    .locals 9
    .param p0, "$this$writePacket"    # Ljava/io/OutputStream;
    .param p1, "packet"    # Lio/ktor/utils/io/core/ByteReadPacket;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v0

    .line 19
    .local v0, "s":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    .line 20
    :cond_0
    const-wide/16 v2, 0x1000

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 22
    .local v2, "buffer":[B
    nop

    .line 23
    :goto_0
    move-object v3, p1

    .local v3, "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v4, 0x0

    .line 167
    .local v4, "$i$f$isNotEmpty":I
    :try_start_0
    invoke-virtual {v3}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v5

    .end local v3    # "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v4    # "$i$f$isNotEmpty":I
    xor-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1

    .line 24
    move-object v3, p1

    check-cast v3, Lio/ktor/utils/io/core/Input;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable$default(Lio/ktor/utils/io/core/Input;[BIIILjava/lang/Object;)I

    move-result v3

    .line 25
    .local v3, "size":I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "size":I
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 29
    nop

    .line 30
    return-void

    .line 28
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    throw v3
.end method

.method public static final writePacket(Ljava/io/OutputStream;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$writePacket"    # Ljava/io/OutputStream;
    .param p1, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 156
    .local v0, "$i$f$buildPacket":I
    nop

    .line 160
    new-instance v1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 161
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 162
    :try_start_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    invoke-static {p0, v2}, Lio/ktor/utils/io/streams/StreamsKt;->writePacket(Ljava/io/OutputStream;Lio/ktor/utils/io/core/ByteReadPacket;)V

    .line 12
    return-void

    .line 164
    .restart local v0    # "$i$f$buildPacket":I
    .restart local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_0
    move-exception v2

    .line 165
    .local v2, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 166
    throw v2
.end method

.method public static final writerUTF8(Lio/ktor/utils/io/core/BytePacketBuilder;)Ljava/io/Writer;
    .locals 1
    .param p0, "$this$writerUTF8"    # Lio/ktor/utils/io/core/BytePacketBuilder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lio/ktor/utils/io/streams/StreamsKt$writerUTF8$1;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/streams/StreamsKt$writerUTF8$1;-><init>(Lio/ktor/utils/io/core/BytePacketBuilder;)V

    check-cast v0, Ljava/io/Writer;

    return-object v0
.end method
