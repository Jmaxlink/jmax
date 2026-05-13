.class final Lcom/typesafe/config/impl/ConfigDocumentParser;
.super Ljava/lang/Object;
.source "ConfigDocumentParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/ConfigNodeRoot;
    .locals 3
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Lcom/typesafe/config/ConfigParseOptions;",
            ")",
            "Lcom/typesafe/config/impl/ConfigNodeRoot;"
        }
    .end annotation

    .line 12
    .local p0, "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    .line 13
    .local v0, "syntax":Lcom/typesafe/config/ConfigSyntax;
    :goto_0
    new-instance v1, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;

    invoke-direct {v1, v0, p1, p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;-><init>(Lcom/typesafe/config/ConfigSyntax;Lcom/typesafe/config/ConfigOrigin;Ljava/util/Iterator;)V

    .line 14
    .local v1, "context":Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;
    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parse()Lcom/typesafe/config/impl/ConfigNodeRoot;

    move-result-object v2

    return-object v2
.end method

.method static parseValue(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .locals 3
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Lcom/typesafe/config/ConfigParseOptions;",
            ")",
            "Lcom/typesafe/config/impl/AbstractConfigNodeValue;"
        }
    .end annotation

    .line 18
    .local p0, "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    .line 19
    .local v0, "syntax":Lcom/typesafe/config/ConfigSyntax;
    :goto_0
    new-instance v1, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;

    invoke-direct {v1, v0, p1, p0}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;-><init>(Lcom/typesafe/config/ConfigSyntax;Lcom/typesafe/config/ConfigOrigin;Ljava/util/Iterator;)V

    .line 20
    .local v1, "context":Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;
    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigDocumentParser$ParseContext;->parseSingleValue()Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v2

    return-object v2
.end method
