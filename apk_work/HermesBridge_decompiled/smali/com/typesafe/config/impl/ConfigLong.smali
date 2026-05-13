.class final Lcom/typesafe/config/impl/ConfigLong;
.super Lcom/typesafe/config/impl/ConfigNumber;
.source "ConfigLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final value:J


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "value"    # J
    .param p4, "originalText"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1, p4}, Lcom/typesafe/config/impl/ConfigNumber;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 20
    iput-wide p2, p0, Lcom/typesafe/config/impl/ConfigLong;->value:J

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
    iget-wide v0, p0, Lcom/typesafe/config/impl/ConfigLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method protected longValue()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/typesafe/config/impl/ConfigLong;->value:J

    return-wide v0
.end method

.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigLong;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigLong;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigLong;
    .locals 4
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 54
    new-instance v0, Lcom/typesafe/config/impl/ConfigLong;

    iget-wide v1, p0, Lcom/typesafe/config/impl/ConfigLong;->value:J

    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigLong;->originalText:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/typesafe/config/impl/ConfigLong;-><init>(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)V

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
    iget-wide v1, p0, Lcom/typesafe/config/impl/ConfigLong;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 39
    :cond_0
    return-object v0
.end method

.method public unwrapped()Ljava/lang/Long;
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/typesafe/config/impl/ConfigLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Number;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigLong;->unwrapped()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigLong;->unwrapped()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 25
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method
