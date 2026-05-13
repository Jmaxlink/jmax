.class final Lcom/typesafe/config/impl/SimpleConfigDocument;
.super Ljava/lang/Object;
.source "SimpleConfigDocument.java"

# interfaces
.implements Lcom/typesafe/config/parser/ConfigDocument;


# instance fields
.field private configNodeTree:Lcom/typesafe/config/impl/ConfigNodeRoot;

.field private parseOptions:Lcom/typesafe/config/ConfigParseOptions;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/ConfigNodeRoot;Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 0
    .param p1, "parsedNode"    # Lcom/typesafe/config/impl/ConfigNodeRoot;
    .param p2, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->configNodeTree:Lcom/typesafe/config/impl/ConfigNodeRoot;

    .line 15
    iput-object p2, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->parseOptions:Lcom/typesafe/config/ConfigParseOptions;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 56
    instance-of v0, p1, Lcom/typesafe/config/parser/ConfigDocument;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigDocument;->render()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/parser/ConfigDocument;

    invoke-interface {v1}, Lcom/typesafe/config/parser/ConfigDocument;->render()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->configNodeTree:Lcom/typesafe/config/impl/ConfigNodeRoot;

    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/ConfigNodeRoot;->hasValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigDocument;->render()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public render()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->configNodeTree:Lcom/typesafe/config/impl/ConfigNodeRoot;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ConfigNodeRoot;->render()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "newValue"    # Lcom/typesafe/config/ConfigValue;

    .line 33
    if-eqz p2, :cond_0

    .line 35
    invoke-static {}, Lcom/typesafe/config/ConfigRenderOptions;->defaults()Lcom/typesafe/config/ConfigRenderOptions;

    move-result-object v0

    .line 36
    .local v0, "options":Lcom/typesafe/config/ConfigRenderOptions;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/typesafe/config/ConfigRenderOptions;->setOriginComments(Z)Lcom/typesafe/config/ConfigRenderOptions;

    move-result-object v0

    .line 37
    invoke-interface {p2, v0}, Lcom/typesafe/config/ConfigValue;->render(Lcom/typesafe/config/ConfigRenderOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/typesafe/config/impl/SimpleConfigDocument;->withValueText(Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v1

    return-object v1

    .line 34
    .end local v0    # "options":Lcom/typesafe/config/ConfigRenderOptions;
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " passed to withValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withValueText(Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 20
    if-eqz p2, :cond_0

    .line 22
    const-string v0, "single value parsing"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    .line 23
    .local v0, "origin":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, "reader":Ljava/io/StringReader;
    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->parseOptions:Lcom/typesafe/config/ConfigParseOptions;

    invoke-virtual {v2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Tokenizer;->tokenize(Lcom/typesafe/config/ConfigOrigin;Ljava/io/Reader;Lcom/typesafe/config/ConfigSyntax;)Ljava/util/Iterator;

    move-result-object v2

    .line 25
    .local v2, "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    iget-object v3, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->parseOptions:Lcom/typesafe/config/ConfigParseOptions;

    invoke-static {v2, v0, v3}, Lcom/typesafe/config/impl/ConfigDocumentParser;->parseValue(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v3

    .line 26
    .local v3, "parsedValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    .line 28
    new-instance v4, Lcom/typesafe/config/impl/SimpleConfigDocument;

    iget-object v5, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->configNodeTree:Lcom/typesafe/config/impl/ConfigNodeRoot;

    iget-object v6, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->parseOptions:Lcom/typesafe/config/ConfigParseOptions;

    invoke-virtual {v6}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v6

    invoke-virtual {v5, p1, v3, v6}, Lcom/typesafe/config/impl/ConfigNodeRoot;->setValue(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeRoot;

    move-result-object v5

    iget-object v6, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->parseOptions:Lcom/typesafe/config/ConfigParseOptions;

    invoke-direct {v4, v5, v6}, Lcom/typesafe/config/impl/SimpleConfigDocument;-><init>(Lcom/typesafe/config/impl/ConfigNodeRoot;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v4

    .line 21
    .end local v0    # "origin":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .end local v1    # "reader":Ljava/io/StringReader;
    .end local v2    # "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    .end local v3    # "parsedValue":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " passed to withValueText"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withoutPath(Ljava/lang/String;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfigDocument;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->configNodeTree:Lcom/typesafe/config/impl/ConfigNodeRoot;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->parseOptions:Lcom/typesafe/config/ConfigParseOptions;

    invoke-virtual {v2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/typesafe/config/impl/ConfigNodeRoot;->setValue(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigNodeValue;Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/impl/ConfigNodeRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigDocument;->parseOptions:Lcom/typesafe/config/ConfigParseOptions;

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SimpleConfigDocument;-><init>(Lcom/typesafe/config/impl/ConfigNodeRoot;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v0
.end method
