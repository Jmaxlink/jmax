.class abstract Lcom/typesafe/config/impl/ConfigNumber;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "ConfigNumber.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected final originalText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "originalText"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 24
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigNumber;->originalText:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private isWhole()Z
    .locals 6

    .line 49
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigNumber;->longValue()J

    move-result-wide v0

    .line 50
    .local v0, "asLong":J
    long-to-double v2, v0

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigNumber;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static newNumber(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;
    .locals 4
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "number"    # D
    .param p3, "originalText"    # Ljava/lang/String;

    .line 98
    double-to-long v0, p1

    .line 99
    .local v0, "asLong":J
    long-to-double v2, v0

    cmpl-double v2, v2, p1

    if-nez v2, :cond_0

    .line 100
    invoke-static {p0, v0, v1, p3}, Lcom/typesafe/config/impl/ConfigNumber;->newNumber(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;

    move-result-object v2

    return-object v2

    .line 102
    :cond_0
    new-instance v2, Lcom/typesafe/config/impl/ConfigDouble;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/typesafe/config/impl/ConfigDouble;-><init>(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)V

    return-object v2
.end method

.method static newNumber(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;
    .locals 2
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "number"    # J
    .param p3, "originalText"    # Ljava/lang/String;

    .line 90
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 91
    new-instance v0, Lcom/typesafe/config/impl/ConfigInt;

    long-to-int v1, p1

    invoke-direct {v0, p0, v1, p3}, Lcom/typesafe/config/impl/ConfigInt;-><init>(Lcom/typesafe/config/ConfigOrigin;ILjava/lang/String;)V

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/ConfigLong;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/typesafe/config/impl/ConfigLong;-><init>(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>(Lcom/typesafe/config/ConfigValue;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigNumber;

    return v0
.end method

.method protected abstract doubleValue()D
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 61
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigNumber;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigNumber;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/ConfigNumber;

    .line 63
    .local v0, "n":Lcom/typesafe/config/impl/ConfigNumber;
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigNumber;->isWhole()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 64
    invoke-direct {v0}, Lcom/typesafe/config/impl/ConfigNumber;->isWhole()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigNumber;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ConfigNumber;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    return v1

    .line 66
    :cond_1
    invoke-direct {v0}, Lcom/typesafe/config/impl/ConfigNumber;->isWhole()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigNumber;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ConfigNumber;->doubleValue()D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-nez v2, :cond_2

    move v1, v3

    :cond_2
    return v1

    .line 69
    .end local v0    # "n":Lcom/typesafe/config/impl/ConfigNumber;
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigNumber;->isWhole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigNumber;->longValue()J

    move-result-wide v0

    .local v0, "asLong":J
    goto :goto_0

    .line 83
    .end local v0    # "asLong":J
    :cond_0
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigNumber;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 85
    .restart local v0    # "asLong":J
    :goto_0
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method intValueRangeChecked(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigNumber;->longValue()J

    move-result-wide v0

    .line 37
    .local v0, "l":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 41
    long-to-int v2, v0

    return v2

    .line 38
    :cond_0
    new-instance v2, Lcom/typesafe/config/ConfigException$WrongType;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigNumber;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "out-of-range value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "32-bit integer"

    invoke-direct {v2, v3, p1, v5, v4}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract longValue()J
.end method

.method transformToString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNumber;->originalText:Ljava/lang/String;

    return-object v0
.end method

.method public abstract unwrapped()Ljava/lang/Number;
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigNumber;->unwrapped()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
