.class public Lio/netty/buffer/search/BitapSearchProcessorFactory;
.super Lio/netty/buffer/search/AbstractSearchProcessorFactory;
.source "BitapSearchProcessorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;
    }
.end annotation


# instance fields
.field private final bitMasks:[J

.field private final successBit:J


# direct methods
.method constructor <init>([B)V
    .locals 10
    .param p1, "needle"    # [B

    .line 55
    invoke-direct {p0}, Lio/netty/buffer/search/AbstractSearchProcessorFactory;-><init>()V

    .line 29
    const/16 v0, 0x100

    new-array v0, v0, [J

    iput-object v0, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory;->bitMasks:[J

    .line 56
    array-length v0, p1

    const/16 v1, 0x40

    if-gt v0, v1, :cond_1

    .line 60
    const-wide/16 v0, 0x1

    .line 61
    .local v0, "bit":J
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_0

    aget-byte v5, p1, v3

    .line 62
    .local v5, "c":B
    iget-object v6, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory;->bitMasks:[J

    and-int/lit16 v7, v5, 0xff

    aget-wide v8, v6, v7

    or-long/2addr v8, v0

    aput-wide v8, v6, v7

    .line 63
    shl-long/2addr v0, v4

    .line 61
    .end local v5    # "c":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v4

    const-wide/16 v3, 0x1

    shl-long v2, v3, v2

    iput-wide v2, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory;->successBit:J

    .line 67
    return-void

    .line 57
    .end local v0    # "bit":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported search pattern length is 64, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public newSearchProcessor()Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;
    .locals 4

    .line 74
    new-instance v0, Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;

    iget-object v1, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory;->bitMasks:[J

    iget-wide v2, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory;->successBit:J

    invoke-direct {v0, v1, v2, v3}, Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;-><init>([JJ)V

    return-object v0
.end method

.method public bridge synthetic newSearchProcessor()Lio/netty/buffer/search/SearchProcessor;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/buffer/search/BitapSearchProcessorFactory;->newSearchProcessor()Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;

    move-result-object v0

    return-object v0
.end method
