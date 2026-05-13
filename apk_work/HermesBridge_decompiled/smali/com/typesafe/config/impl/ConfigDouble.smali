.class final Lcom/typesafe/config/impl/ConfigDouble;
.super Lcom/typesafe/config/impl/ConfigNumber;
.source "ConfigDouble.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final value:D


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "value"    # D
    .param p4, "originalText"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1, p4}, Lcom/typesafe/config/impl/ConfigNumber;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 20
    iput-wide p2, p0, Lcom/typesafe/config/impl/ConfigDouble;->value:D

    .line 21
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>(Lcom/typesafe/config/ConfigValue;)V

    return-object v0
.end method


# virtual methods
.method protected doubleValue()D
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/typesafe/config/impl/ConfigDouble;->value:D

    return-wide v0
.end method

.method protected longValue()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/typesafe/config/impl/ConfigDouble;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDouble;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigDouble;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigDouble;
    .locals 4
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 54
    new-instance v0, Lcom/typesafe/config/impl/ConfigDouble;

    iget-wide v1, p0, Lcom/typesafe/config/impl/ConfigDouble;->value:D

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigDouble;->originalText:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/typesafe/config/impl/ConfigDouble;-><init>(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)V

    return-object v0
.end method

.method transformToString()Ljava/lang/String;
    .locals 3

    .line 35
    invoke-super {p0}, Lcom/typesafe/config/impl/ConfigNumber;->transformToString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 37
    iget-wide v1, p0, Lcom/typesafe/config/impl/ConfigDouble;->value:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 39
    :cond_0
    return-object v0
.end method

.method public unwrapped()Ljava/lang/Double;
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/typesafe/config/impl/ConfigDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Number;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDouble;->unwrapped()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDouble;->unwrapped()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 25
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method
