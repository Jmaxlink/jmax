.class Lcom/typesafe/config/impl/Tokens$Substitution;
.super Lcom/typesafe/config/impl/Token;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Substitution"
.end annotation


# instance fields
.field private final optional:Z

.field private final value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;ZLjava/util/List;)V
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "optional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Z",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/Token;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p3, "expression":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/Token;>;"
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->SUBSTITUTION:Lcom/typesafe/config/impl/TokenType;

    invoke-direct {p0, v0, p1}, Lcom/typesafe/config/impl/Token;-><init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;)V

    .line 295
    iput-boolean p2, p0, Lcom/typesafe/config/impl/Tokens$Substitution;->optional:Z

    .line 296
    iput-object p3, p0, Lcom/typesafe/config/impl/Tokens$Substitution;->value:Ljava/util/List;

    .line 297
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 323
    instance-of v0, p1, Lcom/typesafe/config/impl/Tokens$Substitution;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 328
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Substitution;

    iget-object v0, v0, Lcom/typesafe/config/impl/Tokens$Substitution;->value:Ljava/util/List;

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Substitution;->value:Ljava/util/List;

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 334
    invoke-super {p0}, Lcom/typesafe/config/impl/Token;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Substitution;->value:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method optional()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/typesafe/config/impl/Tokens$Substitution;->optional:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Substitution;->value:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/Token;

    .line 316
    .local v2, "t":Lcom/typesafe/config/impl/Token;
    invoke-virtual {v2}, Lcom/typesafe/config/impl/Token;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .end local v2    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'${"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public tokenText()Ljava/lang/String;
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "${"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/typesafe/config/impl/Tokens$Substitution;->optional:Z

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Substitution;->value:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/Tokenizer;->render(Ljava/util/Iterator;)Ljava/lang/String;

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

.method value()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Substitution;->value:Ljava/util/List;

    return-object v0
.end method
