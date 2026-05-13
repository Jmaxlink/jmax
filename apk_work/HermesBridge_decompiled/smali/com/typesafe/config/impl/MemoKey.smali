.class final Lcom/typesafe/config/impl/MemoKey;
.super Ljava/lang/Object;
.source "MemoKey.java"


# instance fields
.field private final restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

.field private final value:Lcom/typesafe/config/impl/AbstractConfigValue;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V
    .locals 0
    .param p1, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "restrictToChildOrNull"    # Lcom/typesafe/config/impl/Path;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/typesafe/config/impl/MemoKey;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 7
    iput-object p2, p0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 25
    instance-of v0, p1, Lcom/typesafe/config/impl/MemoKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 26
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/MemoKey;

    .line 27
    .local v0, "o":Lcom/typesafe/config/impl/MemoKey;
    iget-object v2, v0, Lcom/typesafe/config/impl/MemoKey;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    iget-object v3, p0, Lcom/typesafe/config/impl/MemoKey;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    if-eq v2, v3, :cond_0

    .line 28
    return v1

    .line 29
    :cond_0
    iget-object v2, v0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    iget-object v3, p0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    if-ne v2, v3, :cond_1

    .line 30
    const/4 v1, 0x1

    return v1

    .line 31
    :cond_1
    iget-object v2, v0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    if-nez v2, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    iget-object v1, v0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    iget-object v2, p0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v1, v2}, Lcom/typesafe/config/impl/Path;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 32
    :cond_3
    :goto_0
    return v1

    .line 36
    .end local v0    # "o":Lcom/typesafe/config/impl/MemoKey;
    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/typesafe/config/impl/MemoKey;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 16
    .local v0, "h":I
    iget-object v1, p0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x29

    mul-int/lit8 v1, v1, 0x29

    add-int/2addr v1, v0

    return v1

    .line 19
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemoKey("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/MemoKey;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/MemoKey;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/MemoKey;->restrictToChildOrNull:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
