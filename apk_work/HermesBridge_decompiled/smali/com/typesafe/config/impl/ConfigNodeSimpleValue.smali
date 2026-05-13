.class final Lcom/typesafe/config/impl/ConfigNodeSimpleValue;
.super Lcom/typesafe/config/impl/AbstractConfigNodeValue;
.source "ConfigNodeSimpleValue.java"


# instance fields
.field final token:Lcom/typesafe/config/impl/Token;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/Token;)V
    .locals 0
    .param p1, "value"    # Lcom/typesafe/config/impl/Token;

    .line 14
    invoke-direct {p0}, Lcom/typesafe/config/impl/AbstractConfigNodeValue;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    .line 16
    return-void
.end method


# virtual methods
.method protected token()Lcom/typesafe/config/impl/Token;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    return-object v0
.end method

.method protected tokens()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected value()Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Lcom/typesafe/config/impl/ConfigString$Unquoted;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/Token;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v2}, Lcom/typesafe/config/impl/Tokens;->getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ConfigString$Unquoted;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    return-object v0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isSubstitution(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getSubstitutionPathExpression(Lcom/typesafe/config/impl/Token;)Ljava/util/List;

    move-result-object v0

    .line 32
    .local v0, "expression":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/Token;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-virtual {v2}, Lcom/typesafe/config/impl/Token;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/PathParser;->parsePathExpression(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/Path;

    move-result-object v1

    .line 33
    .local v1, "path":Lcom/typesafe/config/impl/Path;
    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v2}, Lcom/typesafe/config/impl/Tokens;->getSubstitutionOptional(Lcom/typesafe/config/impl/Token;)Z

    move-result v2

    .line 35
    .local v2, "optional":Z
    new-instance v3, Lcom/typesafe/config/impl/ConfigReference;

    iget-object v4, p0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token:Lcom/typesafe/config/impl/Token;

    invoke-virtual {v4}, Lcom/typesafe/config/impl/Token;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v4

    new-instance v5, Lcom/typesafe/config/impl/SubstitutionExpression;

    invoke-direct {v5, v1, v2}, Lcom/typesafe/config/impl/SubstitutionExpression;-><init>(Lcom/typesafe/config/impl/Path;Z)V

    invoke-direct {v3, v4, v5}, Lcom/typesafe/config/impl/ConfigReference;-><init>(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/SubstitutionExpression;)V

    return-object v3

    .line 37
    .end local v0    # "expression":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/Token;>;"
    .end local v1    # "path":Lcom/typesafe/config/impl/Path;
    .end local v2    # "optional":Z
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "ConfigNodeSimpleValue did not contain a valid value token"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method
