.class Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;
.super Lcom/typesafe/config/impl/Token;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoredWhitespace"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "s"    # Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->IGNORED_WHITESPACE:Lcom/typesafe/config/impl/TokenType;

    invoke-direct {p0, v0, p1}, Lcom/typesafe/config/impl/Token;-><init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;)V

    .line 131
    iput-object p2, p0, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;->value:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 139
    instance-of v0, p1, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 144
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;

    iget-object v0, v0, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;->value:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/typesafe/config/impl/Token;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (WHITESPACE)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tokenText()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;->value:Ljava/lang/String;

    return-object v0
.end method
