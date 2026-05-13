.class final Lio/netty/handler/pcap/PcapWriter;
.super Ljava/lang/Object;
.source "PcapWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final outputStream:Ljava/io/OutputStream;

.field private final pcapWriteHandler:Lio/netty/handler/pcap/PcapWriteHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lio/netty/handler/pcap/PcapWriter;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/pcap/PcapWriter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/pcap/PcapWriteHandler;)V
    .locals 1
    .param p1, "pcapWriteHandler"    # Lio/netty/handler/pcap/PcapWriteHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lio/netty/handler/pcap/PcapWriter;->pcapWriteHandler:Lio/netty/handler/pcap/PcapWriteHandler;

    .line 47
    invoke-virtual {p1}, Lio/netty/handler/pcap/PcapWriteHandler;->outputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    .line 50
    invoke-virtual {p1}, Lio/netty/handler/pcap/PcapWriteHandler;->sharedOutputStream()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Lio/netty/handler/pcap/PcapWriteHandler;->outputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/pcap/PcapHeaders;->writeGlobalHeader(Ljava/io/OutputStream;)V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriter;->pcapWriteHandler:Lio/netty/handler/pcap/PcapWriteHandler;

    invoke-virtual {v0}, Lio/netty/handler/pcap/PcapWriteHandler;->state()Lio/netty/handler/pcap/State;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->CLOSED:Lio/netty/handler/pcap/State;

    if-ne v0, v1, :cond_0

    .line 98
    sget-object v0, Lio/netty/handler/pcap/PcapWriter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "PcapWriter is already closed"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_0
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriter;->pcapWriteHandler:Lio/netty/handler/pcap/PcapWriteHandler;

    invoke-virtual {v0}, Lio/netty/handler/pcap/PcapWriteHandler;->sharedOutputStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 103
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_1
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 106
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 108
    :goto_0
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriter;->pcapWriteHandler:Lio/netty/handler/pcap/PcapWriteHandler;

    invoke-virtual {v0}, Lio/netty/handler/pcap/PcapWriteHandler;->markClosed()V

    .line 109
    sget-object v0, Lio/netty/handler/pcap/PcapWriter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "PcapWriter is now closed"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 111
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PcapWriter{outputStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 7
    .param p1, "packetHeaderBuf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "packet"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriter;->pcapWriteHandler:Lio/netty/handler/pcap/PcapWriteHandler;

    invoke-virtual {v0}, Lio/netty/handler/pcap/PcapWriteHandler;->state()Lio/netty/handler/pcap/State;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->CLOSED:Lio/netty/handler/pcap/State;

    if-ne v0, v1, :cond_0

    .line 64
    sget-object v0, Lio/netty/handler/pcap/PcapWriter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Pcap Write attempted on closed PcapWriter"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    .local v0, "timestamp":J
    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    long-to-int v4, v4

    rem-long v5, v0, v2

    mul-long/2addr v5, v2

    long-to-int v2, v5

    .line 73
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 74
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    .line 69
    invoke-static {p1, v4, v2, v3, v5}, Lio/netty/handler/pcap/PcapHeaders;->writePacketHeader(Lio/netty/buffer/ByteBuf;IIII)V

    .line 77
    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriter;->pcapWriteHandler:Lio/netty/handler/pcap/PcapWriteHandler;

    invoke-virtual {v2}, Lio/netty/handler/pcap/PcapWriteHandler;->sharedOutputStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 80
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 81
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 83
    :cond_1
    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 84
    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 86
    :goto_0
    return-void
.end method
