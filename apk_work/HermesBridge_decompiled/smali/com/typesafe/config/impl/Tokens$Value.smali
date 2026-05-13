.class Lcom/typesafe/config/impl/Tokens$Value;
.super Lcom/typesafe/config/impl/Token;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation


# instance fields
.field private final value:Lcom/typesafe/config/impl/AbstractConfigValue;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/AbstractConfigValue;)V
    .locals 1
    .param p1, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/impl/Tokens$Value;-><init>(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "origText"    # Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->VALUE:Lcom/typesafe/config/impl/TokenType;

    invoke-virtual {p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/typesafe/config/impl/Token;-><init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/typesafe/config/impl/Tokens$Value;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 25
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 41
    instance-of v0, p1, Lcom/typesafe/config/impl/Tokens$Value;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 46
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Value;

    iget-object v0, v0, Lcom/typesafe/config/impl/Tokens$Value;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Value;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v0, v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/typesafe/config/impl/Token;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Value;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Tokens$Value;->value()Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    const-string v2, ")"

    if-ne v0, v1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/typesafe/config/impl/Tokens$Value;->value()Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Value;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'<unresolved value>\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Value;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method value()Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Value;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v0
.end method
