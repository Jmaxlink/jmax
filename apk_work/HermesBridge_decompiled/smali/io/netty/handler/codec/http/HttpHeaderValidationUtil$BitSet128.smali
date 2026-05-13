.class final Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;
.super Ljava/lang/Object;
.source "HttpHeaderValidationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpHeaderValidationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitSet128"
.end annotation


# instance fields
.field private high:J

.field private low:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http/HttpHeaderValidationUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http/HttpHeaderValidationUtil$1;

    .line 256
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;-><init>()V

    return-void
.end method

.method static contains(BJJ)Z
    .locals 7
    .param p0, "bit"    # B
    .param p1, "high"    # J
    .param p3, "low"    # J

    .line 291
    const/4 v0, 0x0

    if-gez p0, :cond_0

    .line 292
    return v0

    .line 294
    :cond_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0x40

    if-ge p0, v6, :cond_2

    .line 295
    shl-long/2addr v2, p0

    and-long/2addr v2, p3

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 297
    :cond_2
    add-int/lit8 v6, p0, -0x40

    shl-long/2addr v2, v6

    and-long/2addr v2, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method


# virtual methods
.method varargs bits([C)Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;
    .locals 8
    .param p1, "bits"    # [C

    .line 272
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p1, v1

    .line 273
    .local v2, "bit":C
    const-wide/16 v3, 0x1

    const/16 v5, 0x40

    if-ge v2, v5, :cond_0

    .line 274
    iget-wide v5, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->low:J

    shl-long/2addr v3, v2

    or-long/2addr v3, v5

    iput-wide v3, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->low:J

    goto :goto_1

    .line 276
    :cond_0
    iget-wide v5, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->high:J

    add-int/lit8 v7, v2, -0x40

    shl-long/2addr v3, v7

    or-long/2addr v3, v5

    iput-wide v3, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->high:J

    .line 272
    .end local v2    # "bit":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_1
    return-object p0
.end method

.method high()J
    .locals 2

    .line 283
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->high:J

    return-wide v0
.end method

.method low()J
    .locals 2

    .line 287
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->low:J

    return-wide v0
.end method

.method range(CC)Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;
    .locals 6
    .param p1, "fromInc"    # C
    .param p2, "toInc"    # C

    .line 261
    move v0, p1

    .local v0, "bit":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 262
    const-wide/16 v1, 0x1

    const/16 v3, 0x40

    if-ge v0, v3, :cond_0

    .line 263
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->low:J

    shl-long/2addr v1, v0

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->low:J

    goto :goto_1

    .line 265
    :cond_0
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->high:J

    add-int/lit8 v5, v0, -0x40

    shl-long/2addr v1, v5

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->high:J

    .line 261
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "bit":I
    :cond_1
    return-object p0
.end method
