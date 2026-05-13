.class final Lio/netty/buffer/ByteBufUtil$SWARByteSearch;
.super Ljava/lang/Object;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/ByteBufUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SWARByteSearch"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(B)J
    .locals 2
    .param p0, "x0"    # B

    .line 517
    invoke-static {p0}, Lio/netty/buffer/ByteBufUtil$SWARByteSearch;->compilePattern(B)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(JJZ)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Z

    .line 517
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBufUtil$SWARByteSearch;->firstAnyPattern(JJZ)I

    move-result v0

    return v0
.end method

.method private static compilePattern(B)J
    .locals 4
    .param p0, "byteToFind"    # B

    .line 520
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide v2, 0x101010101010101L

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static firstAnyPattern(JJZ)I
    .locals 8
    .param p0, "word"    # J
    .param p2, "pattern"    # J
    .param p4, "leading"    # Z

    .line 524
    xor-long v0, p0, p2

    .line 525
    .local v0, "input":J
    const-wide v2, 0x7f7f7f7f7f7f7f7fL    # 1.3824172084878715E306

    and-long v4, v0, v2

    add-long/2addr v4, v2

    .line 526
    .local v4, "tmp":J
    or-long v6, v4, v0

    or-long/2addr v2, v6

    not-long v2, v2

    .line 527
    .end local v4    # "tmp":J
    .local v2, "tmp":J
    if-eqz p4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    .line 528
    .local v4, "binaryPosition":I
    :goto_0
    ushr-int/lit8 v5, v4, 0x3

    return v5
.end method
