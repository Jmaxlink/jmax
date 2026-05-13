.class Lcom/typesafe/config/impl/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field private final debugString:Ljava/lang/String;

.field private final origin:Lcom/typesafe/config/ConfigOrigin;

.field private final tokenText:Ljava/lang/String;

.field private final tokenType:Lcom/typesafe/config/impl/TokenType;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;)V
    .locals 1
    .param p1, "tokenType"    # Lcom/typesafe/config/impl/TokenType;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/typesafe/config/impl/Token;-><init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 1
    .param p1, "tokenType"    # Lcom/typesafe/config/impl/TokenType;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "tokenText"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/typesafe/config/impl/Token;-><init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenType"    # Lcom/typesafe/config/impl/TokenType;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "tokenText"    # Ljava/lang/String;
    .param p4, "debugString"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/typesafe/config/impl/Token;->tokenType:Lcom/typesafe/config/impl/TokenType;

    .line 25
    iput-object p2, p0, Lcom/typesafe/config/impl/Token;->origin:Lcom/typesafe/config/ConfigOrigin;

    .line 26
    iput-object p4, p0, Lcom/typesafe/config/impl/Token;->debugString:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/typesafe/config/impl/Token;->tokenText:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 2
    .param p0, "tokenType"    # Lcom/typesafe/config/impl/TokenType;
    .param p1, "debugString"    # Ljava/lang/String;
    .param p2, "tokenText"    # Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/typesafe/config/impl/Token;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/typesafe/config/impl/Token;-><init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 68
    instance-of v0, p1, Lcom/typesafe/config/impl/Token;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 73
    instance-of v0, p1, Lcom/typesafe/config/impl/Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/Token;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->tokenType:Lcom/typesafe/config/impl/TokenType;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/Token;

    iget-object v2, v2, Lcom/typesafe/config/impl/Token;->tokenType:Lcom/typesafe/config/impl/TokenType;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 78
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->tokenType:Lcom/typesafe/config/impl/TokenType;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/TokenType;->hashCode()I

    move-result v0

    return v0
.end method

.method final lineNumber()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->origin:Lcom/typesafe/config/ConfigOrigin;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->origin:Lcom/typesafe/config/ConfigOrigin;

    invoke-interface {v0}, Lcom/typesafe/config/ConfigOrigin;->lineNumber()I

    move-result v0

    return v0

    .line 56
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method final origin()Lcom/typesafe/config/ConfigOrigin;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->origin:Lcom/typesafe/config/ConfigOrigin;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->origin:Lcom/typesafe/config/ConfigOrigin;

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get origin from token that doesn\'t have one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->debugString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->debugString:Ljava/lang/String;

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->tokenType:Lcom/typesafe/config/impl/TokenType;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/TokenType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tokenText()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->tokenText:Ljava/lang/String;

    return-object v0
.end method

.method final tokenType()Lcom/typesafe/config/impl/TokenType;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/typesafe/config/impl/Token;->tokenType:Lcom/typesafe/config/impl/TokenType;

    return-object v0
.end method
