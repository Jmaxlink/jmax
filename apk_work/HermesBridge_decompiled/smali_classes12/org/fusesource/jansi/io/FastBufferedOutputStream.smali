.class public Lorg/fusesource/jansi/io/FastBufferedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "FastBufferedOutputStream.java"


# instance fields
.field protected final buf:[B

.field protected count:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 31
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->buf:[B

    .line 32
    return-void
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->buf:[B

    iget v2, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 59
    iput v3, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->flushBuffer()V

    .line 66
    iget-object v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 67
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    iget-object v1, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->buf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 37
    invoke-direct {p0}, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->flushBuffer()V

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->buf:[B

    iget v1, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 40
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->buf:[B

    array-length v0, v0

    if-lt p3, v0, :cond_0

    .line 45
    invoke-direct {p0}, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->flushBuffer()V

    .line 46
    iget-object v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 47
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    .line 50
    invoke-direct {p0}, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->flushBuffer()V

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->buf:[B

    iget v1, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;->count:I

    .line 54
    return-void
.end method
