.class public Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;
.super Ljava/lang/Object;
.source "AhoCorasicSearchProcessorFactory.java"

# interfaces
.implements Lio/netty/buffer/search/MultiSearchProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Processor"
.end annotation


# instance fields
.field private currentPosition:J

.field private final jumpTable:[I

.field private final matchForNeedleId:[I


# direct methods
.method constructor <init>([I[I)V
    .locals 0
    .param p1, "jumpTable"    # [I
    .param p2, "matchForNeedleId"    # [I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->jumpTable:[I

    .line 54
    iput-object p2, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->matchForNeedleId:[I

    .line 55
    return-void
.end method


# virtual methods
.method public getFoundNeedleId()I
    .locals 3

    .line 69
    iget-object v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->matchForNeedleId:[I

    iget-wide v1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->currentPosition:J

    long-to-int v1, v1

    shr-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public process(B)Z
    .locals 7
    .param p1, "value"    # B

    .line 59
    iget-object v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->jumpTable:[I

    iget-wide v1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->currentPosition:J

    int-to-long v3, p1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getInt([IJ)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->currentPosition:J

    .line 60
    iget-wide v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->currentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 61
    iget-wide v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->currentPosition:J

    neg-long v0, v0

    iput-wide v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->currentPosition:J

    .line 62
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 2

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;->currentPosition:J

    .line 75
    return-void
.end method
