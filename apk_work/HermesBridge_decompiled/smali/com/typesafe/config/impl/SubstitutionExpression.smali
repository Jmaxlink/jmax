.class final Lcom/typesafe/config/impl/SubstitutionExpression;
.super Ljava/lang/Object;
.source "SubstitutionExpression.java"


# instance fields
.field private final optional:Z

.field private final path:Lcom/typesafe/config/impl/Path;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/Path;Z)V
    .locals 0
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;
    .param p2, "optional"    # Z

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->path:Lcom/typesafe/config/impl/Path;

    .line 10
    iput-boolean p2, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->optional:Z

    .line 11
    return-void
.end method


# virtual methods
.method changePath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SubstitutionExpression;
    .locals 2
    .param p1, "newPath"    # Lcom/typesafe/config/impl/Path;

    .line 22
    iget-object v0, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->path:Lcom/typesafe/config/impl/Path;

    if-ne p1, v0, :cond_0

    .line 23
    return-object p0

    .line 25
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/SubstitutionExpression;

    iget-boolean v1, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->optional:Z

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/SubstitutionExpression;-><init>(Lcom/typesafe/config/impl/Path;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 35
    instance-of v0, p1, Lcom/typesafe/config/impl/SubstitutionExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/SubstitutionExpression;

    .line 37
    .local v0, "otherExp":Lcom/typesafe/config/impl/SubstitutionExpression;
    iget-object v2, v0, Lcom/typesafe/config/impl/SubstitutionExpression;->path:Lcom/typesafe/config/impl/Path;

    iget-object v3, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->path:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v2, v3}, Lcom/typesafe/config/impl/Path;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/typesafe/config/impl/SubstitutionExpression;->optional:Z

    iget-boolean v3, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->optional:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 39
    .end local v0    # "otherExp":Lcom/typesafe/config/impl/SubstitutionExpression;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->path:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    .line 46
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->optional:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    .line 47
    .end local v0    # "h":I
    .local v1, "h":I
    return v1
.end method

.method optional()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->optional:Z

    return v0
.end method

.method path()Lcom/typesafe/config/impl/Path;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->path:Lcom/typesafe/config/impl/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "${"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->optional:Z

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/SubstitutionExpression;->path:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
