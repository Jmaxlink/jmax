.class public final Lcom/typesafe/config/parser/ConfigDocumentFactory;
.super Ljava/lang/Object;
.source "ConfigDocumentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFile(Ljava/io/File;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 69
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/parser/ConfigDocumentFactory;->parseFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 55
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Parseable;->newFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parseConfigDocument()Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method public static parseReader(Ljava/io/Reader;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;

    .line 41
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/parser/ConfigDocumentFactory;->parseReader(Ljava/io/Reader;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method public static parseReader(Ljava/io/Reader;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 27
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Parseable;->newReader(Ljava/io/Reader;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parseConfigDocument()Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method public static parseString(Ljava/lang/String;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/typesafe/config/ConfigParseOptions;->defaults()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/typesafe/config/parser/ConfigDocumentFactory;->parseString(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method public static parseString(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 80
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Parseable;->newString(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Parseable;->parseConfigDocument()Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v0

    return-object v0
.end method
