.class public Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;
.super Ljava/lang/Object;
.source "KmpSearchProcessorFactory.java"

# interfaces
.implements Lio/netty/buffer/search/SearchProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/search/KmpSearchProcessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Processor"
.end annotation


# instance fields
.field private currentPosition:J

.field private final jumpTable:[I

.field private final needle:[B


# direct methods
.method constructor <init>([B[I)V
    .locals 0
    .param p1, "needle"    # [B
    .param p2, "jumpTable"    # [I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->needle:[B

    .line 42
    iput-object p2, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->jumpTable:[I

    .line 43
    return-void
.end method


# virtual methods
.method public process(B)Z
    .locals 4
    .param p1, "value"    # B

    .line 47
    nop

    :goto_0
    iget-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->needle:[B

    iget-wide v1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BJ)B

    move-result v0

    if-eq v0, p1, :cond_0

    .line 48
    iget-object v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->jumpTable:[I

    iget-wide v1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getInt([IJ)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->needle:[B

    iget-wide v1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BJ)B

    move-result v0

    if-ne v0, p1, :cond_1

    .line 51
    iget-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    .line 53
    :cond_1
    iget-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    iget-object v2, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->needle:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 54
    iget-object v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->jumpTable:[I

    iget-wide v1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getInt([IJ)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    .line 55
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 2

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    .line 64
    return-void
.end method
